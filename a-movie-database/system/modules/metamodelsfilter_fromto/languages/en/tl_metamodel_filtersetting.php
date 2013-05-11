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
 * filter types
 */
$GLOBALS['TL_LANG']['tl_metamodel_filtersetting']['typenames']['fromto']   = 'Value from/to';


/**
 * fields
 */
$GLOBALS['TL_LANG']['tl_metamodel_filtersetting']['moreequal']    = array('Value 1 included', 'Standard: excluded.');
$GLOBALS['TL_LANG']['tl_metamodel_filtersetting']['lessequal']    = array('Value 2 included', 'Standard: excluded.');
$GLOBALS['TL_LANG']['tl_metamodel_filtersetting']['fromfield']    = array('Field for value 1', 'Show FE field for value no 1.');
$GLOBALS['TL_LANG']['tl_metamodel_filtersetting']['tofield']      = array('Field for value 2', 'Show FE field for value no 2.');