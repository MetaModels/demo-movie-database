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
 * Table tl_metamodel_attribute 
 */

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['metapalettes']['geoprotection extends _simpleattribute_'] = array
(
	'+display' => array('geoprotection after description')
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['geoprotection'] = array
(
	'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['geoprotection'],
	'exclude'               => true,
	'inputType'             => 'checkbox',
	'eval'                  => array
	(
		'doNotSaveEmpty' => true,
		'alwaysSave' => true,
		'multiple' => true
	),
	'options_callback' => array('TableMetaModelsAttributeGeoProtection', 'getCountriesByContinent')
	
);