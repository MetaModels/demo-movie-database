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
$GLOBALS['TL_LANG']['tl_metamodel_rendersetting']['file_showImage'] = array('Enable as image field with thumbnail', 'If selected, a thumbnail will be created for image files.');
$GLOBALS['TL_LANG']['tl_metamodel_rendersetting']['file_sortBy']    = array('Order by', 'Please choose the sort order.');
$GLOBALS['TL_LANG']['tl_metamodel_rendersetting']['file_showLink']  = array('Create link as file download or image lightbox', 'Wraps the item in a link that will show the fullscreen image or download the file.');
$GLOBALS['TL_LANG']['tl_metamodel_rendersetting']['file_imageSize'] = array('Image width and height', 'Please enter either the image width, the image height or both measures to resize the image. If you leave both fields blank, the original image size will be displayed.');

$GLOBALS['TL_LANG']['tl_metamodel_rendersetting']['name_asc']       = 'File name (ascending)';
$GLOBALS['TL_LANG']['tl_metamodel_rendersetting']['name_desc']      = 'File name (descending)';
$GLOBALS['TL_LANG']['tl_metamodel_rendersetting']['date_asc']       = 'Date (ascending)';
$GLOBALS['TL_LANG']['tl_metamodel_rendersetting']['date_desc']      = 'Date (descending)';
$GLOBALS['TL_LANG']['tl_metamodel_rendersetting']['meta']           = 'Meta file (meta.txt)';
$GLOBALS['TL_LANG']['tl_metamodel_rendersetting']['random']         = 'Random order';