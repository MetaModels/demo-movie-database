<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package     MetaModels
 * @subpackage  AttributeSelect
 * @author      Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @author      Christian de la Haye <service@delahaye.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

/**
 * This is the MetaModelAttribute class for handling select attributes.
 *
 * @package	   MetaModels
 * @subpackage AttributeSelect
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @author     Christian de la Haye <service@delahaye.de>
 */
class MetaModelAttributeSelect extends MetaModelAttributeHybrid
{
	/////////////////////////////////////////////////////////////////
	// interface IMetaModelAttribute
	/////////////////////////////////////////////////////////////////

	public function getAttributeSettingNames()
	{
		return array_merge(parent::getAttributeSettingNames(), array(
			'select_table',
			'select_column',
			'select_id',
			'select_alias',
			'select_where',
			'select_sorting',
			'select_as_radio',
			'includeBlankOption',
			'mandatory',
			'chosen',
			'filterable',
			'searchable',
			'sortable',
			'flag'
		));
	}

	public function getFieldDefinition($arrOverrides = array())
	{
		// TODO: add tree support here.
		$arrFieldDef = parent::getFieldDefinition($arrOverrides);
		
		// If select as radio is true, change the input type.
		if ($arrOverrides['select_as_radio'] == true)
		{
			$arrFieldDef['inputType'] = 'radio';
		}
		else
		{
			$arrFieldDef['inputType'] = 'select';
		}

		$arrFieldDef['options'] = $this->getFilterOptions(null, false);
		return $arrFieldDef;
	}

	/**
	 * {@inheritdoc}
	 */
	public function valueToWidget($varValue)
	{
		$strColNameAlias = $this->get('select_alias');
		if (!$strColNameAlias)
		{
			$strColNameAlias = $this->get('select_id');
		}
		return $varValue[$strColNameAlias];
	}

	/**
	 * {@inheritdoc}
	 */
	public function widgetToValue($varValue, $intId)
	{
		$objDB = Database::getInstance();
		$strColNameAlias = $this->get('select_alias');
		$strColNameId = $this->get('select_id');
		if (!$strColNameAlias)
		{
			$strColNameAlias = $strColNameId;
		}
		// lookup the id for this value.
		$objValue = $objDB->prepare(sprintf('SELECT %1$s.* FROM %1$s WHERE %2$s=?', $this->get('select_table'), $strColNameAlias))
		->execute($varValue);
		return $objValue->row();
	}

	/**
	 * {@inheritdoc}
	 *
	 * Fetch filter options from foreign table.
	 *
	 */
	public function getFilterOptions($arrIds, $usedOnly)
	{
		if (($arrIds !== NULL) && empty($arrIds))
		{
			return array();
		}

		$strTableName = $this->get('select_table');
		$strColNameId = $this->get('select_id');
		$arrReturn = array();

		if ($strTableName && $strColNameId)
		{
			$strColNameValue = $this->get('select_column');
			$strColNameAlias = $this->get('select_alias');
			$strSortColumn = $this->get('select_sorting') ? $this->get('select_sorting') : $strColNameId;
			$strColNameWhere = ($this->get('select_where') ? html_entity_decode($this->get('select_where')) : false);

			if (!$strColNameAlias)
			{
				$strColNameAlias = $strColNameId;
			}
			$objDB = Database::getInstance();
			if ($arrIds)
			{
				$objValue = $objDB->prepare(sprintf('
					SELECT %1$s.*
					FROM %1$s
					RIGHT JOIN %3$s ON (%3$s.%4$s=%1$s.%2$s)
					WHERE (%3$s.id IN (%5$s)%6$s)
					GROUP BY %1$s.%2$s ORDER BY %1$s.%7$s',
					$strTableName, // 1
					$strColNameId, // 2
					$this->getMetaModel()->getTableName(), // 3
					$this->getColName(), // 4
					implode(',', $arrIds), // 5
					($strColNameWhere ? ' AND ('.$strColNameWhere.')' : ''), //6
					$strSortColumn // 7
				))
				->execute($this->get('id'));
			} else {
				if ($usedOnly)
				{
					$strQuery = sprintf('SELECT %1$s.*
					FROM %1$s
					RIGHT JOIN %3$s ON (%3$s.%4$s=%1$s.%2$s)
					%5$s
					GROUP BY %1$s.%2$s ORDER BY %1$s.%6$s',
					$strTableName,
					$strColNameId, // 2
					$this->getMetaModel()->getTableName(), // 3
					$this->getColName(), // 4
					($strColNameWhere ? ' WHERE ('.$strColNameWhere.')' : ''), //5
					$strSortColumn // 6
					);
				} else {
					$strQuery = sprintf('SELECT %1$s.* 
					FROM %1$s%2$s ORDER BY %1$s.%3$s', 
					$strTableName, //1
					($strColNameWhere ? ' WHERE ('.$strColNameWhere.')' : false), //2
					$strSortColumn // 3
					);
				}
				$objValue = $objDB->prepare($strQuery)
				->execute();
			}

			while ($objValue->next())
			{
				$arrReturn[$objValue->$strColNameAlias] = $objValue->$strColNameValue;
			}
		}
		return $arrReturn;
	}

	/**
	 * {@inheritdoc}
	 *
	 * search value in table
	 */
	public function searchFor($strPattern)
	{
		$objFilterRule = NULL;
		$objFilterRule = new MetaModelFilterRuleSelect($this, $strPattern);

		return $objFilterRule->getMatchingIds();
	}

	/////////////////////////////////////////////////////////////////
	// interface IMetaModelAttributeSimple
	/////////////////////////////////////////////////////////////////

	public function getSQLDataType()
	{
		return 'int(11) NOT NULL default \'0\'';
	}

	/////////////////////////////////////////////////////////////////
	// interface IMetaModelAttributeComplex
	/////////////////////////////////////////////////////////////////

	public function getDataFor($arrIds)
	{
		$objDB = Database::getInstance();
		$strTableNameId = $this->get('select_table');
		$strColNameId = $this->get('select_id');
		$arrReturn = array();

		if ($strTableNameId && $strColNameId)
		{
			$strMetaModelTableName = $this->getMetaModel()->getTableName();
			$strMetaModelTableNameId = $strMetaModelTableName.'_id';

			// using aliased join here to resolve issue #3 - SQL error for self referencing table
			$objValue = $objDB->prepare(sprintf('SELECT sourceTable.*, %2$s.id AS %3$s FROM %1$s sourceTable LEFT JOIN %2$s ON (sourceTable.%4$s=%2$s.%5$s) WHERE %2$s.id IN (%6$s)',
				$strTableNameId, // 1
				$strMetaModelTableName, // 2
				$strMetaModelTableNameId, // 3
				$strColNameId, // 4
				$this->getColName(), // 5
				implode(',', $arrIds) //6
			))
			->execute();
			while ($objValue->next())
			{
				$arrReturn[$objValue->$strMetaModelTableNameId] = $objValue->row();
			}
		}
		return $arrReturn;
	}

	public function setDataFor($arrValues)
	{
		$strTableName = $this->get('select_table');
		$strColNameId = $this->get('select_id');
		if ($strTableName && $strColNameId)
		{
			$strQuery = sprintf('UPDATE %1$s SET %2$s=? WHERE %1$s.id=?',
				$this->getMetaModel()->getTableName(),
				$this->getColName()
			);

			$objDB = Database::getInstance();
			foreach($arrValues as $intItemId => $arrValue)
			{
				$objQuery = $objDB->prepare($strQuery)->execute($arrValue[$strColNameId], $intItemId);
			}
		}
	}

	public function unsetDataFor($arrIds)
	{
		$strTableName = $this->get('select_table');
		$strColNameId = $this->get('select_id');
		if ($strTableName && $strColNameId)
		{
			$strQuery = sprintf('UPDATE %1$s SET %2$s=0 WHERE %1$s.id IN (%3$s)',
				$this->getMetaModel()->getTableName(),
				$this->getColName(),
				implode(',', $arrIds)
			);
			Database::getInstance()->execute($strQuery);
		}
	}
}