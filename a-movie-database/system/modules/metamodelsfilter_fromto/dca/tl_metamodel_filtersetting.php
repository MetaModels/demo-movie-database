<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage FilterFromTo
 * @author     Christian de la Haye <service@delahaye.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * palettes
 */
$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['metapalettes']['fromto extends _attribute_']['+config'][] = 'urlparam';
$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['metapalettes']['fromto extends _attribute_']['+fefilter'][] = 'label';
$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['metapalettes']['fromto extends _attribute_']['+fefilter'][] = 'template';
$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['metapalettes']['fromto extends _attribute_']['+fefilter'][] = 'moreequal';
$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['metapalettes']['fromto extends _attribute_']['+fefilter'][] = 'lessequal';
$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['metapalettes']['fromto extends _attribute_']['+fefilter'][] = 'fromfield';
$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['metapalettes']['fromto extends _attribute_']['+fefilter'][] = 'tofield';


/**
 * fields
 */

$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['fields']['moreequal'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_filtersetting']['moreequal'],
	'exclude'                 => true,
	'default'                 => true,
	'inputType'               => 'checkbox',
	'eval'                    => array
	(
		'tl_class'            => 'w50'
	)
);

$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['fields']['lessequal'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_filtersetting']['lessequal'],
	'exclude'                 => true,
	'default'                 => true,
	'inputType'               => 'checkbox',
	'eval'                    => array
	(
		'tl_class'            => 'w50'
	)
);

$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['fields']['fromfield'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_filtersetting']['fromfield'],
	'exclude'                 => true,
	'default'                 => true,
	'inputType'               => 'checkbox',
	'eval'                    => array
	(
		'tl_class'            => 'w50 clr'
	)
);

$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['fields']['tofield'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_filtersetting']['tofield'],
	'exclude'                 => true,
	'default'                 => true,
	'inputType'               => 'checkbox',
	'eval'                    => array
	(
		'tl_class'            => 'w50'
	)
);