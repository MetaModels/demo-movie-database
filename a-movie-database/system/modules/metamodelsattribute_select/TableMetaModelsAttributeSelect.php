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
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

/**
 * Supplementary class for handling DCA information for select attributes.
 *
 * @package	   MetaModels
 * @subpackage AttributeSelect
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 */
class TableMetaModelsAttributeSelect extends TableMetaModelAttribute
{
	/**
	 * @var TableMetaModelRenderSetting
	 */
	protected static $objInstance = null;

	/**
	 * Get the static instance.
	 *
	 * @static
	 * @return MetaPalettes
	 */
	public static function getInstance()
	{
		if (self::$objInstance == null) {
			self::$objInstance = new TableMetaModelsAttributeSelect();
		}
		return self::$objInstance;
	}

	public function getTableNames()
	{
		$objDB = Database::getInstance();
		return $objDB->listTables();
	}

	public function getColumnNames(DataContainer $objDC)
	{
		$arrFields = array();

		if (($objDC->getCurrentModel())
		    && $this->Database->tableExists($objDC->getCurrentModel()->getProperty('select_table')))
		{
			foreach ($this->Database->listFields($objDC->getCurrentModel()->getProperty('select_table')) as $arrInfo)
			{
				if ($arrInfo['type'] != 'index')
				{
					$arrFields[$arrInfo['name']] = $arrInfo['name'];
				}
			}
		}

		return $arrFields;
	}

	public function getIntColumnNames(DataContainer $objDC)
	{
		$arrFields = array();

		if (($objDC->getCurrentModel())
		    && $this->Database->tableExists($objDC->getCurrentModel()->getProperty('select_table')))
		{
			foreach ($this->Database->listFields($objDC->getCurrentModel()->getProperty('select_table')) as $arrInfo)
			{
				if ($arrInfo['type'] != 'index' && $arrInfo['type'] == 'int')
				{
					$arrFields[$arrInfo['name']] = $arrInfo['name'];
				}
			}
		}

		return $arrFields;
	}

	public function checkQuery($varValue, DataContainer $objDC)
	{
		if ($objDC->getCurrentModel() && $varValue)
		{
			$objDB = Database::getInstance();

			$strTableName = $objDC->getCurrentModel()->getProperty('select_table');
			$strColNameId = $objDC->getCurrentModel()->getProperty('select_id');
			$strColNameValue = $objDC->getCurrentModel()->getProperty('select_column');
			$strColNameAlias = $objDC->getCurrentModel()->getProperty('select_alias') ? $objDC->getCurrentModel()->getProperty('select_alias') : $strColNameId;
			$strSortColumn = $objDC->getCurrentModel()->getProperty('select_sorting') ? $objDC->getCurrentModel()->getProperty('select_sorting') : $strColNameId;

			$strColNameWhere = $varValue;

			$strQuery = sprintf('SELECT %1$s.* 
			FROM %1$s%2$s ORDER BY %1$s.%3$s', 
			$strTableName, //1
			($strColNameWhere ? ' WHERE ('.$strColNameWhere.')' : false), //2
			$strSortColumn // 3
			);

			try
			{
				$objValue = $objDB->prepare($strQuery)
				->execute();
			}
			catch(Exception $e)
			{
				// add error
				$objDC->addError($GLOBALS['TL_LANG']['tl_metamodel_attribute']['sql_error']);

				// log error
				$this->log($e->getMessage(), 'TableMetaModelsAttributeSelect checkQuery()', TL_ERROR);

				// keep the current value
				return $objDC->getCurrentModel()->getProperty('select_where');
			}
		}

		return $varValue;
	}
}