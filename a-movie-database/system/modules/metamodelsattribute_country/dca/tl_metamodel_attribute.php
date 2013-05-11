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

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['metapalettes']['country extends _simpleattribute_'] = array(
	'+display' => array('countries after description')
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['countries'] = array(
	'label'             => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['countries'],
	'exclude'           => true,
	'inputType'         => 'select',
	'options'           => $this->getCountries(),
	'eval'              => array(
		'chosen'        => true,
		'alwaysSave'    => true,
		'multiple'      => true,
		'style'         => 'width: 100%',
	),
);