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
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * This is the MetaModelFilterRule class for handling select fields.
 * 
 * @package	   MetaModels
 * @subpackage AttributeTags
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 */
class MetaModelFilterRuleTags extends MetaModelFilterRule
{

	public function __construct(MetaModelAttributeTags $objAttribute, $strValue)
	{
		parent::__construct();
		$this->objAttribute = $objAttribute;
		$this->value = $strValue;
	}

	public function sanitizeValue()
	{
		$strTableNameId = $this->objAttribute->get('tag_table');
		$strColNameId = $this->objAttribute->get('tag_id');
		$strColNameAlias = $this->objAttribute->get('tag_alias');
		
		$arrValues = is_array($this->value) ? $this->value : explode(',', $this->value);

		$objDB = Database::getInstance();

		if ($strColNameAlias)
		{
			$arrLookup = array_map('mysql_real_escape_string', $arrValues);
			$objSelectIds = $objDB->execute('SELECT ' . $strColNameId . ' FROM ' . $strTableNameId . ' WHERE ' . $strColNameAlias . ' IN (\'' . implode('\',\'', $arrLookup) . '\')');

			$arrValues = $objSelectIds->fetchEach($strColNameId);
		} else {
			$arrValues = array_map('intval', $arrValues);
		}
		return $arrValues;
	}

	/**
	 * {@inheritdoc}
	 */
	public function getMatchingIds()
	{
		$arrValues = $this->sanitizeValue();
		
		$objDB = Database::getInstance();
		$objMatches = $objDB->prepare('SELECT item_id as id FROM tl_metamodel_tag_relation WHERE value_id IN (' . implode(',', $arrValues) . ') AND att_id = ?')->execute($this->objAttribute->get('id'));
		return $objMatches->fetchEach('id');
	}
}