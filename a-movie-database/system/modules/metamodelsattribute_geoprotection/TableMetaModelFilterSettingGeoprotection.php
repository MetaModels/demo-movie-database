<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package     MetaModels
 * @subpackage  AttributeGeoProtection
 * @author      Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

/**
 * This class is used from DCA tl_metamodel_filtersetting for various callbacks.
 *
 * @package	   MetaModels
 * @subpackage AttributeGeoProtection
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 */
class TableMetaModelFilterSettingGeoprotection extends TableMetaModelFilterSetting
{

	protected static $objInstance;

	public static function getInstance() {
		isset(self::$objInstance) || self::$objInstance = new self();
		return self::$objInstance;
	}

	/**
	 * Prepares a option list with alias => name connection for all attributes.
	 * This is used in the attr_id select box.
	 *
	 * @param DataContainer $objDC the data container calling.
	 * @return
	 */
	public function getAttributeNames($objDC)
	{
		$this->objectsFromUrl($objDC);
		$arrResult = array();
		if (!$this->objMetaModel)
		{
			return;
		}
		$objMetaModel = $this->objMetaModel;

		foreach ($objMetaModel->getAttributes() as $objAttribute)
		{
			$strTypeName = $objAttribute->get('type');
			if ($strTypeName != 'geoprotection') continue;
			$strSelectVal = $objMetaModel->getTableName() .'_' . $objAttribute->getColName();
			$arrResult[$strSelectVal] = $objAttribute->getName() . ' [' . $strTypeName . ']';
		}
		return $arrResult;
	}
}