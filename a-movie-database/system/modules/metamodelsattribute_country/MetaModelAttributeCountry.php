<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package     MetaModels
 * @subpackage  AttributeCountry
 * @author      Oliver Hoff <oliver@hofff.com>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

class MetaModelAttributeCountry extends MetaModelAttributeSimple {

	protected function prepareTemplate(MetaModelTemplate $objTemplate, $arrRowData, $objSettings = null)
	{
		parent::prepareTemplate($objTemplate, $arrRowData, $objSettings);
		$objTemplate->value = $this->getCountryLabel($arrRowData[$this->getColName()]);
	}

	public function getSQLDataType() {
		return 'varchar(2) NOT NULL default \'\'';
	}

	public function getAttributeSettingNames() {
		return array_merge(parent::getAttributeSettingNames(), array(
			'countries',
			'filterable',
			'searchable',
			'sortable',
			'flag',
			'mandatory',
			'includeBlankOption'
		));
	}

	public function getFieldDefinition($arrOverrides = array()) {
		$arrFieldDef = parent::getFieldDefinition($arrOverrides);
		$arrFieldDef['inputType'] = 'select';
		$arrFieldDef['options'] = MetaModelController::getInstance()->getCountries();
		$arrSelectable = deserialize($this->get('countries'), true);
		$arrSelectable && $arrFieldDef['options'] = array_intersect_key(
			$arrFieldDef['options'],
			array_flip($arrSelectable)
		);
		$arrFieldDef['eval']['chosen'] = true;
		return $arrFieldDef;
	}

	public function getCountryLabel($strCountry) {
		$strLanguage = $this->getMetaModel()->getActiveLanguage();
		MetaModelController::getInstance()->loadLanguageFile('countries', $strLanguage, true);

		if(strlen($GLOBALS['TL_LANG']['CNT'][$strCountry])) {
			$strLabel = $GLOBALS['TL_LANG']['CNT'][$strCountry];

		} else {
			$strLanguage = $this->getMetaModel()->getFallbackLanguage();
			MetaModelController::getInstance()->loadLanguageFile('countries', $strLanguage, true);

			if(strlen($GLOBALS['TL_LANG']['CNT'][$strCountry])) {
				$strResult = $GLOBALS['TL_LANG']['CNT'][$strCountry];

			} else {
				include(TL_ROOT . '/system/config/countries.php');
				$strResult = $countries[$strCountry];
			}
		}

		// switch back to the original FE language to not disturb the frontend.
		if($strLanguage != $GLOBALS['TL_LANGUAGE']) {
			MetaModelController::getInstance()->loadLanguageFile('countries', false, true);
		}

		return $strLabel;
	}

}