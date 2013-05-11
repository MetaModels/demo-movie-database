<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage AttributeTags
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @author     Christian de la Haye <service@delahaye.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * This is the MetaModelAttribute class for handling tag attributes.
 *
 * @package    MetaModels
 * @subpackage AttributeTags
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @author     Christian de la Haye <service@delahaye.de>
 */
class MetaModelAttributeTags extends MetaModelAttributeComplex
{

	/**
	 * when rendered via a template, this returns the values to be stored in the template.
	 */
	protected function prepareTemplate(MetaModelTemplate $objTemplate, $arrRowData, $objSettings = null)
	{
		parent::prepareTemplate($objTemplate, $arrRowData, $objSettings);
		$objTemplate->alias = $this->get('tag_alias');
		$objTemplate->value = $this->get('tag_column');
	}

	/**
	 * Determine the column to be used for alias.
	 * This is either the configured alias column or the id, if
	 * an alias column is absent.
	 *
	 * @return string the name of the column.
	 */
	public function getAliasCol()
	{
		$strColNameAlias = $this->get('tag_alias');
		if (!$strColNameAlias)
		{
			$strColNameAlias = $this->get('tag_id');
		}
		return $strColNameAlias;
	}

	/////////////////////////////////////////////////////////////////
	// interface IMetaModelAttribute
	/////////////////////////////////////////////////////////////////

	/**
	 * {@inheritdoc}
	 */
	public function getAttributeSettingNames()
	{
		return array_merge(parent::getAttributeSettingNames(), array(
			'tag_table',
			'tag_column',
			'tag_id',
			'tag_alias',
			'tag_where',
			'tag_sorting',
			'mandatory',
			'filterable',
			'searchable',
		));
	}

	/**
	 * {@inheritdoc}
	 */
	public function getFieldDefinition($arrOverrides = array())
	{
		// TODO: add tree support here.
		$arrFieldDef=parent::getFieldDefinition($arrOverrides);
		$arrFieldDef['inputType'] = 'checkbox';
		$arrFieldDef['options'] = $this->getFilterOptions(NULL, false);
		$arrFieldDef['eval']['includeBlankOption'] = true;
		$arrFieldDef['eval']['multiple'] = true;
		return $arrFieldDef;
	}

	/**
	 * {@inheritdoc}
	 */
	public function valueToWidget($varValue)
	{
		$strColNameAlias = $this->getAliasCol();

		$arrResult = array();
		if ($varValue)
		{
			foreach ($varValue as $arrValue)
			{
				$arrResult[] = $arrValue[$strColNameAlias];
			}
		}
		return $arrResult;
	}

	/**
	 * {@inheritdoc}
	 */
	public function widgetToValue($varValue, $intId)
	{
		if ((!is_array($varValue)) || empty($varValue))
		{
			return array();
		}

		$arrSearch = array();
		$arrParams = array();
		foreach ($varValue as $strValue)
		{
			$arrSearch[] = '?';
			$arrParams[] = $strValue;
		}
		$objDB = Database::getInstance();
		$objValue = $objDB->prepare(sprintf('SELECT %1$s.* FROM %1$s WHERE %2$s IN (%3$s)',
			$this->get('tag_table'),
			$this->getAliasCol(),
			implode(',', $arrSearch)
		))
		->execute($arrParams);

		$strColNameId = $this->get('tag_id');
		$arrResult = array();

		while ($objValue->next())
		{
			$arrResult[$objValue->$strColNameId] = $objValue->row();
		}
		return $arrResult;
	}

	/**
	 * {@inheritdoc}
	 *
	 * Fetch filter options from foreign table.
	 *
	 */
	public function getFilterOptions($arrIds, $usedOnly)
	{
		$strTableName = $this->get('tag_table');
		$strColNameId = $this->get('tag_id');
		$strSortColumn = $this->get('tag_sorting') ? $this->get('tag_sorting') : $strColNameId;
		$strColNameWhere = ($this->get('tag_where') ? html_entity_decode($this->get('tag_where')) : false);

		$arrReturn = array();

		if ($strTableName && $strColNameId && $strSortColumn)
		{
			$strColNameValue = $this->get('tag_column');
			$strColNameAlias = $this->getAliasCol();
			$objDB = Database::getInstance();

			if ($arrIds)
			{
				if($usedOnly)
				{
					$strSQL = '
						SELECT %1$s.*
						FROM %1$s
						LEFT JOIN tl_metamodel_tag_relation ON (
							(tl_metamodel_tag_relation.att_id=?)
							AND (tl_metamodel_tag_relation.value_id=%1$s.%2$s)
						)
						WHERE (tl_metamodel_tag_relation.item_id IN (%3$s)%5$s)
						GROUP BY %1$s.%2$s
						ORDER BY %1$s.%4$s
					';
				} else {
					$strSQL = '
						SELECT %1$s.*
						FROM %1$s
						WHERE %1$s.%2$s IN (%3$s)%5$s
						GROUP BY %1$s.%2$s
						ORDER BY %1$s.%4$s';
				}

				$objValue = $objDB->prepare(sprintf($strSQL, // Source
					$strTableName, // 1
					$strColNameId, // 2
					implode(',', $arrIds), // 3
					$strSortColumn, // 4
					($strColNameWhere ? ' AND ('.$strColNameWhere.')' : '') //5
				))->execute($this->get('id'));

			} else {
				if($usedOnly)
				{
					$strSQL = '
						SELECT %1$s.*
						FROM %1$s
						INNER JOIN tl_metamodel_tag_relation as rel
						ON (
							(rel.att_id="%4$s") AND (rel.value_id=%1$s.%3$s)
						)
						WHERE rel.att_id=%4$s'
						. ($strColNameWhere ? ' AND %5$s' : '') . '
						GROUP BY %1$s.%3$s
						ORDER BY %1$s.%2$s';
				}
				else
				{
					$strSQL = '
						SELECT %1$s.*
						FROM %1$s'
						. ($strColNameWhere ? ' WHERE %5$s' : '') . '
						GROUP BY %1$s.%3$s
						ORDER BY %1$s.%2$s';
				}

				$objValue = $objDB->prepare(sprintf($strSQL, // Source
					$strTableName, // 1
					$strSortColumn, // 2
					$strColNameId, // 3
					$this->get('id'), // 4
					$strColNameWhere // 5
				))->execute();
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
	 */
	public function searchFor($strPattern)
	{
		$objFilterRule = new MetaModelFilterRuleTags($this, $strPattern);
		return $objFilterRule->getMatchingIds();
	}

	/////////////////////////////////////////////////////////////////
	// interface IMetaModelAttributeComplex
	/////////////////////////////////////////////////////////////////

	public function getDataFor($arrIds)
	{
		$strTableName = $this->get('tag_table');
		$strColNameId = $this->get('tag_id');
		$arrReturn = array();

		if ($strTableName && $strColNameId)
		{
			$objDB = Database::getInstance();
			$strMetaModelTableName = $this->getMetaModel()->getTableName();
			$strMetaModelTableNameId = $strMetaModelTableName.'_id';

			$objValue = $objDB->prepare(sprintf('
				SELECT %1$s.*, tl_metamodel_tag_relation.item_id AS %2$s
				FROM %1$s
				LEFT JOIN tl_metamodel_tag_relation ON (
					(tl_metamodel_tag_relation.att_id=?)
					AND (tl_metamodel_tag_relation.value_id=%1$s.%3$s)
				)
				WHERE tl_metamodel_tag_relation.item_id IN (%4$s)',
				$strTableName, // 1
				$strMetaModelTableNameId, // 2
				$strColNameId, // 3
				implode(',', $arrIds) // 4
			))
			->execute($this->get('id'));

			while ($objValue->next())
			{
				if(!$arrReturn[$objValue->$strMetaModelTableNameId])
				{
					$arrReturn[$objValue->$strMetaModelTableNameId] = array();
				}
				$arrData = $objValue->row();
				unset($arrData[$strMetaModelTableNameId]);
				$arrReturn[$objValue->$strMetaModelTableNameId][$objValue->$strColNameId] = $arrData;
			}
		}
		return $arrReturn;
	}

	public function setDataFor($arrValues)
	{
		$objDB = Database::getInstance();
		$arrItemIds = array_map('intval', array_keys($arrValues));
		sort($arrItemIds);
		// load all existing tags for all items to be updated, keep the ordering to item Id
		// so we can benefit from the batch deletion and insert algorithm.
		$objExistingTagIds = $objDB->prepare(sprintf('
		SELECT * FROM tl_metamodel_tag_relation
		WHERE
		att_id=?
		AND item_id IN (%1$s)
		ORDER BY item_id ASC
		', implode(',', $arrItemIds)))
		->execute($this->get('id'));

		// now loop over all items and update the values for them.
		// NOTE: we can not loop over the original array, as the item ids are not neccessarily
		// sorted ascending by item id.
		$arrSQLInsertValues = array();
		foreach ($arrItemIds as $intItemId)
		{
			$arrTags = $arrValues[$intItemId];
			if ($arrTags === NULL)
			{
				$arrTagIds = array();
			} else {
				$arrTagIds = array_map('intval', array_keys($arrTags));
			}
			$arrThisExisting = array();

			// determine existing tags for this item.
			if (($objExistingTagIds->item_id == $intItemId))
			{
				$arrThisExisting[] = $objExistingTagIds->value_id;
			}
			while ($objExistingTagIds->next() && ($objExistingTagIds->item_id == $intItemId))
			{
				$arrThisExisting[] = $objExistingTagIds->value_id;
			}

			// first pass, delete all not mentioned anymore.
			$arrValuesToRemove = array_diff($arrThisExisting, $arrTagIds);
			if ($arrValuesToRemove)
			{
				$objDB->prepare(sprintf('
				DELETE FROM tl_metamodel_tag_relation
				WHERE
				att_id=?
				AND item_id=?
				AND value_id IN (%s)
				', implode(',', $arrValuesToRemove)))
				->execute($this->get('id'), $intItemId);
			}
			// second pass, add all new values in a row.
			$arrValuesToAdd = array_diff($arrTagIds, $arrThisExisting);
			if ($arrValuesToAdd)
			{
				foreach ($arrValuesToAdd as $intValueId)
				{
					$arrSQLInsertValues[] = sprintf('(%s,%s,%s)', $this->get('id'), $intItemId, $intValueId);
				}
			}
		}
		if ($arrSQLInsertValues)
		{
			$objDB->execute('INSERT INTO tl_metamodel_tag_relation (att_id, item_id, value_id) VALUES ' . implode(',', $arrSQLInsertValues));
		}
	}

	public function unsetDataFor($arrIds)
	{
		if ($arrIds)
		{
			if (!is_array($arrIds))
				throw new Exception('MetaModelAttributeTags::unsetDataFor() invalid parameter given! Array of ids is needed.', 1);
			$objDB = Database::getInstance();
			$objDB->prepare(sprintf('
				DELETE FROM tl_metamodel_tag_relation
				WHERE
				att_id=?
				AND item_id IN (%s)',
				implode(',', $arrIds)))->execute($this->get('id'));
		}

	}
}