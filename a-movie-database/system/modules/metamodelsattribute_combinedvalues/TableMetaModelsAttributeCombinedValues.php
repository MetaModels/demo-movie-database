<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package     MetaModels
 * @subpackage  AttributeCombinedValues
 * @author      Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

/**
 * This class is used from DCA tl_metamodel_attribute for various callbacks.
 *
 * @package	   MetaModels
 * @subpackage AttributeCombinedValues
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 */
class TableMetaModelsAttributeCombinedValues extends TableMetaModel
{

	/**
	 * Fetch all attributes from the parenting MetaModel. Called as options_callback.
	 * User the oncreate_callback.
	 *
	 * @return array
	 */
	public function getAllAttributes()
	{
		$intID = $this->Input->get('id');
		$intPID = $this->Input->get('pid');

		$arrReturn = array();

		if (empty($intPID))
		{
			$objResult = $this->Database
				->prepare('SELECT pid FROM tl_metamodel_attribute WHERE id=?')
				->limit(1)
				->execute($intID);

			if ($objResult->numRows == 0)
			{
				return $arrReturn;
			}
			$objMetaModel = MetaModelFactory::byId($objResult->pid);
		} else {
			$objMetaModel = MetaModelFactory::byId($intPID);
		}

		foreach ($objMetaModel->getAttributes() as $objAttribute)
		{
			$arrReturn[$objAttribute->getColName()] = $objAttribute->getName();
		}
		return $arrReturn;
	}
}