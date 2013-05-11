<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package     MetaModels
 * @subpackage  AttributeCheckbox
 * @author      Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

/**
 * Table tl_metamodel_filtersetting
 */
$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['metapalettes']['checkbox_published extends _attribute_']['+config'] = array('check_ignorepublished');

$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['fields']['check_ignorepublished'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_filtersetting']['check_ignorepublished'],
	'exclude'                 => true,
	'inputType'               => 'checkbox',
	'eval'                    => array(
		'alwaysSave'          => true,
		'tl_class'            => 'w50 m12',
	),
);