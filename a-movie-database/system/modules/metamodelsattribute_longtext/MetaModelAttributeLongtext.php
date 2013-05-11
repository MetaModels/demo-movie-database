<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package     MetaModels
 * @subpackage  AttributeLongtext
 * @author      Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

/**
 * This is the MetaModelAttribute class for handling text fields.
 *
 * @package     MetaModels
 * @subpackage  AttributeLongtext
 * @author      Christian Schiffler <c.schiffler@cyberspectrum.de>
 */
class MetaModelAttributeLongtext extends MetaModelAttributeSimple
{
	public function getSQLDataType()
	{
		return 'text NULL';
	}

	public function getAttributeSettingNames()
	{
		return array_merge(parent::getAttributeSettingNames(), array(
			'allowHtml',
			'rte',
			'mandatory',
			'preserveTags',
			'decodeEntities',
			'rte',
			'rows',
			'cols',
		));
	}

	public function getFieldDefinition($arrOverrides = array())
	{
		$arrFieldDef = parent::getFieldDefinition($arrOverrides);
		$arrFieldDef['inputType'] = 'textarea';
		return $arrFieldDef;
	}
}