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
 * @author      Christian de la Haye <service@delahaye.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

/**
 * Fields
 */
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['typeOptions']['translatedselect']    = 'Translated select';
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['select_srctable']                    = array('Untranslated table for sorting', 'Please specify the table that provides the sorting column.');
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['select_srcsorting']                  = array('Sorting column', 'Please specify which column of the untranslated table shall be used for sorting.');