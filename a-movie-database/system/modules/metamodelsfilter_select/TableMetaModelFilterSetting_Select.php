<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage FilterSelect
 * @author     Christian de la Haye <service@delahaye.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * Provides be-functionalities
 *
 * @package	   MetaModels
 * @subpackage FilterSelect
 * @author     Christian de la Haye <service@delahaye.de>
 */
class TableMetaModelFilterSetting_Select extends Backend
{
	/**
	 * provide options for default selection
	 *
	 * @param object
	 *
	 * @return array
	 */
	public function getSelectDefault($objDC)
	{
		$return = array();

		if(!$objDC->getCurrentModel()->getProperty('attr_id'))
		{
			return $return;
		}

		$objAttribSetting = $this->Database
			->prepare('SELECT * FROM tl_metamodel_attribute WHERE id=?')
			->limit(1)
			->execute($objDC->getCurrentModel()->getProperty('attr_id'));

		$objAttribute = MetaModelAttributeFactory::createFromDB($objAttribSetting);
		
		$arrOptions = $objAttribute->getFilterOptions(null, $objDC->getCurrentModel()->getProperty('onlyused'));
		
		// Remove empty values.
		foreach ($arrOptions as $mixOptionKey => $mixOptionValue)
		{
			// Remove html/php tags.
			$mixOptionValue = strip_tags($mixOptionValue);
			$mixOptionValue = trim($mixOptionValue);

			if($mixOptionValue === '' || $mixOptionValue === null)
			{
				unset($arrOptions[$mixOptionKey]);
			}
		}

		return $arrOptions;
	}
}