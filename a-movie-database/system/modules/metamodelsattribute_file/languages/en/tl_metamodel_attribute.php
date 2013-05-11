<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage AttributeFile
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * Fields
 */
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['typeOptions']['file'] = 'File';
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['file_customFiletree'] = array('Customize the file tree', 'Allows you to set custom options for the Filetree.');
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['file_uploadFolder']   = array('Set file root folder', 'Selects the root point from which the user will select this file field.');
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['file_validFileTypes'] = array('Valid file types', 'Please enter a comma separated list of extensions of valid file types for this field.');
$GLOBALS['TL_LANG']['tl_metamodel_attribute']['file_filesOnly']      = array('Allow files only', 'Select this option to restrict the file browser to files only (folders not selectable).');

$GLOBALS['TL_LANG']['tl_metamodel_attribute']['file_multiple']       = array('Multiple selection', 'If selected, user will be able to select more than one item.');