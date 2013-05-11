<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package     MetaModels
 * @subpackage  AttributeSelect
 * @author      Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

$GLOBALS['TL_DCA']['tl_metamodel_dcasetting']['metasubselectpalettes']['attr_id']['select'] = array
(
	'presentation' => array(
		'tl_class',
		'includeBlankOption',
		'chosen',
		'select_as_radio'
	),
	'functions'  => array(
		'mandatory'
	),
	'overview' => array(
		'filterable',
		'searchable',
		'sortable',
		'flag'
	)
);

$GLOBALS['TL_DCA']['tl_metamodel_dcasetting']['fields']['select_as_radio'] = array
(
	'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_dcasetting']['select_as_radio'],
	'exclude'               => true,
	'inputType'             => 'checkbox',
	'eval'                  => array
	(
		'tl_class'          => 'clr m12'
	)
);
