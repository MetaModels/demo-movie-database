<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package     MetaModels
 * @subpackage  AttributeTranslatedSelect
 * @author      Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

$GLOBALS['TL_DCA']['tl_metamodel_dcasetting']['metasubselectpalettes']['attr_id']['translatedselect'] = array
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