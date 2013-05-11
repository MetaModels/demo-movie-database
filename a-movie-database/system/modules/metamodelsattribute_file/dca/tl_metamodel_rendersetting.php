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
 * Table tl_metamodel_attribute
 */

$GLOBALS['TL_DCA']['tl_metamodel_rendersetting']['metapalettes']['file extends default'] = array
(
	'+advanced' => array('file_sortBy', 'file_showLink', 'file_showImage'),
);

$GLOBALS['TL_DCA']['tl_metamodel_rendersetting']['metasubpalettes']['file_showImage'] = array
(
	'file_imageSize',
);

$GLOBALS['TL_DCA']['tl_metamodel_rendersetting']['fields']['file_sortBy'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_rendersetting']['file_sortBy'],
	'exclude'                 => true,
	'inputType'               => 'select',
	'options'                 => array('name_asc', 'name_desc', 'date_asc', 'date_desc', 'meta', 'random'),
	'reference'               => &$GLOBALS['TL_LANG']['tl_metamodel_rendersetting'],
	'eval'                    => array(
		'tl_class'            => 'w50',
		'chosen'              => true,
	)
);

$GLOBALS['TL_DCA']['tl_metamodel_rendersetting']['fields']['file_showLink'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_rendersetting']['file_showLink'],
	'inputType'               => 'checkbox',
	'eval'                    => array('tl_class'=>'w50 m12')
);

$GLOBALS['TL_DCA']['tl_metamodel_rendersetting']['fields']['file_showImage'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_rendersetting']['file_showImage'],
	'inputType'               => 'checkbox',
	'eval'                    => array(
		'submitOnChange'      => true, 
		'tl_class'            => 'clr'
	)
);

$GLOBALS['TL_DCA']['tl_metamodel_rendersetting']['fields']['file_imageSize'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_rendersetting']['file_imageSize'],
	'exclude'                 => true,
	'inputType'               => 'imageSize',
	'options'                 => $GLOBALS['TL_CROP'],
	'reference'               => &$GLOBALS['TL_LANG']['MSC'],
	'eval'                    => array(
		'rgxp'                => 'digit', 
		'nospace'             => true, 
		'helpwizard'          => true, 
		'tl_class'            => 'w50'
	)
);