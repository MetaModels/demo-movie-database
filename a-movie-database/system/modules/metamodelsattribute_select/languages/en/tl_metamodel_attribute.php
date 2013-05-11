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
 * @author      Christian de la Haye <service@delahaye.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

/**
 * Fields
 */
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['typeOptions']['select']    = 'Select';
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['select_sorting']           = array('Select sorting', 'Please select an entry for the tag sorting.');
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['select_where']             = array('SQL', 'The list of options can be limited by using SQL.');
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['sql_error']                = 'The SQL query causes an error.';