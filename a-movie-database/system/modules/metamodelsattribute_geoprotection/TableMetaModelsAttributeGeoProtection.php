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
 * Supplementary class for handling DCA information for geoprotection attributes.
 *
 * @package	   MetaModels
 * @subpackage AttributeGeoProtection
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 */
class TableMetaModelsAttributeGeoProtection extends TableMetaModelAttribute 
{

	protected static $objInstance;
	
	public static function getInstance() {
		isset(self::$objInstance) || self::$objInstance = new self();
		return self::$objInstance;
	}

	public function __construct() {
		parent::__construct();
	}

	public function getCountriesByContinent($arrValues = null) 
	{
		$return = array();
		$countries = array();
		$arrAux = array();
		$arrTmp = array();

		$this->loadLanguageFile('countries');
		$this->loadLanguageFile('continents');
		include(TL_ROOT . '/system/config/countries.php');
		include(TL_ROOT . '/system/config/countriesByContinent.php');

		foreach ($countriesByContinent as $strConKey => $arrCountries)
		{
			$strConKeyTranslated = strlen($GLOBALS['TL_LANG']['CONTINENT'][$strConKey]) ? utf8_romanize($GLOBALS['TL_LANG']['CONTINENT'][$strConKey]) : $strConKey;
			$arrAux[$strConKey] = $strConKeyTranslated;
			foreach ($arrCountries as $key => $strCounntry)
			{
				if (!is_array($arrValues) || in_array($key, $arrValues))
					$arrTmp[$strConKeyTranslated][$key] = strlen($GLOBALS['TL_LANG']['CNT'][$key]) ? utf8_romanize($GLOBALS['TL_LANG']['CNT'][$key]) : $countries[$key];
			}
		}

		ksort($arrTmp);

		foreach ($arrTmp as $strConKey => $arrCountries)
		{
			asort($arrCountries);
			//get original continent key
			$strOrgKey = array_search($strConKey, $arrAux);
			$strConKeyTranslated = strlen($GLOBALS['TL_LANG']['CONTINENT'][$strOrgKey]) ? ($GLOBALS['TL_LANG']['CONTINENT'][$strOrgKey]) : $strConKey;
			foreach ($arrCountries as $strKey => $strCountry)
			{
				$return[$strConKeyTranslated][$strKey] = strlen($GLOBALS['TL_LANG']['CNT'][$strKey]) ? $GLOBALS['TL_LANG']['CNT'][$strKey] : $countries[$strKey];
			}
		}

		$return[$GLOBALS['TL_LANG']['CONTINENT']['other']]['xx'] = strlen($GLOBALS['TL_LANG']['CNT']['xx']) ? $GLOBALS['TL_LANG']['CNT']['xx'] : 'No Country';

		return $return;
	}
}