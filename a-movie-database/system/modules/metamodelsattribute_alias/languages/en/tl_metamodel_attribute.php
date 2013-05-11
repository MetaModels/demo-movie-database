<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package     MetaModels
 * @subpackage  AttributeAlias
 * @author      Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

/**
 * Fields
 */
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['typeOptions']['alias'] = 'Alias';
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['alias_fields']         = array('Alias fields', 'Please select one or more attributes to combine a alias.');
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['field_attribute']      = 'Attributes';
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['force_alias']          = array('Force alias regenerating', 'Check this, if you want the alias to be regenerated whenever any of the dependant fields is changed. Note that this will invalidate old urls that are based upon the alias.');