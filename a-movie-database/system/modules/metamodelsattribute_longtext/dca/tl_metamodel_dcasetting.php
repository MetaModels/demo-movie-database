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

$GLOBALS['TL_DCA']['tl_metamodel_dcasetting']['metasubselectpalettes']['attr_id']['longtext'] = array
(
	'presentation' => array(
		'tl_class',
		'rte',
		'rows',
		'cols',
	),
	'functions'  => array(
		'mandatory',
		'allowHtml',
		'preserveTags',
		'decodeEntities',
		'trailingSlash',
		'spaceToUnderscore',
	),
	'overview' => array(
		'filterable',
		'searchable',
		'sortable',
		'flag'
	)
);