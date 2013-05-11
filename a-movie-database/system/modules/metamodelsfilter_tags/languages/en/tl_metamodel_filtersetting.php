<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage FilterTags
 * @author     Christian de la Haye <service@delahaye.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * filter types
 */
$GLOBALS['TL_LANG']['tl_metamodel_filtersetting']['typenames']['tags']     = 'Multi selection';

/**
 * fields
 */
$GLOBALS['TL_LANG']['tl_metamodel_filtersetting']['useor']        = array('OR', 'OR-linking of the tags. Is automatically set if the attribute is aselect-type.');
$GLOBALS['TL_LANG']['tl_metamodel_filtersetting']['onlyused']     = array('Assigned tags only', 'Show only options, that are assigned somewhere in the MetaModel.');
$GLOBALS['TL_LANG']['tl_metamodel_filtersetting']['onlypossible'] = array('Remaining tags only', 'Show only options, that are still assigned somewhere after the actual filter is set.');