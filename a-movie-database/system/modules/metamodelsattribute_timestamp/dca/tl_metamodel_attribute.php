<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage AttributeTimestamp
 * @author     Stefan Heimes <stefan_heimes@hotmail.com>
 * @author     Andreas Isaak <info@andreas-isaak.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * Table tl_metamodel_attribute 
 */
$GLOBALS['TL_DCA']['tl_metamodel_attribute']['metapalettes']['timestamp extends _simpleattribute_'] = array
(
	'timesettings' => array('timetype')
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['timetype'] = array
(
	'label'              => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['timetype'],
	'exclude'            => true,
	'inputType'          => 'select',
	'reference'          => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['timetypeOptions'],
	'options'            => array
	(
		'date',
		'datim'
	),
	'eval' => array
	(
		'doNotSaveEmpty'  => true,
		'tl_class'=>'w50'
	)
);