<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage AttributeUrl
 * @author     Stefan Heimes <stefan_heimes@hotmail.com>
 * @author     Andreas Isaak <info@andreas-isaak.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * This is the MetaModelAttribute class for handling urls.
 *
 * @package    MetaModels
 * @subpackage AttributeUrl
 * @author     Stefan Heimes <stefan_heimes@hotmail.com>
 * @author     Andreas Isaak <info@andreas-isaak.de>
 */
class MetaModelAttributeUrl extends MetaModelAttributeSimple
{

	public function __construct(\IMetaModel $objMetaModel, $arrData = array())
	{
		if (TL_MODE == 'BE')
		{
			$GLOBALS['TL_CSS']['metamodelsattribute_url'] = 'system/modules/metamodelsattribute_url/html/style.css';
		}

		parent::__construct($objMetaModel, $arrData);
	}

	public function getSQLDataType()
	{
		return 'blob NULL';
	}

	public function getAttributeSettingNames()
	{
		return array_merge(parent::getAttributeSettingNames(), array(
			'mandatory'
		));
	}

	public function getFieldDefinition($arrOverrides = array())
	{
		$arrFieldDef = parent::getFieldDefinition($arrOverrides);

		$arrFieldDef['inputType'] = 'text';

		$arrFieldDef['eval']['size']     = 2;
		$arrFieldDef['eval']['multiple'] = true;
		$arrFieldDef['eval']['tl_class'] .= ' metamodelsattribute_url';
		// $arrFieldDef['eval']['rgxp']     = 'url';

		$arrFieldDef['wizard'][] = array('MetaModelAttributeUrlHelper', 'pagePicker');

		return $arrFieldDef;
	}

}