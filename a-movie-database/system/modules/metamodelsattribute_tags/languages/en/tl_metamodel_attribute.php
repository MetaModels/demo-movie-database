<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage AttributeTags
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @author     Christian de la Haye <service@delahaye.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * Legends
 */
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['display_legend']      = 'Display settings';

/**
 * Fields
 */
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['typeOptions']['tags'] = 'Tags';
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['tag_table']           = array('Database table', 'Please select the database table.');
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['tag_column']          = array('Table column', 'Please select the column.');
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['tag_id']              = array('Tag ID', 'Please select a entry for the tag id.');
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['tag_alias']           = array('Tag alias', 'Please select a entry for the tag alias.');
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['tag_sorting']         = array('Tag sorting', 'Please select a entry for the tag sorting.');
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['tag_where']           = array('SQL', 'The list of options can be limited by using SQL.');
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['sql_error']           = 'The SQL query causes an error.';