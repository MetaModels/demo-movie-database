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

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['metapalettes']['file extends _simpleattribute_'] = array
(
	'+advanced' => array('file_showImage', 'file_customFiletree', 'file_multiple'),
	'+backenddisplay'	=> array('-width50'),
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['metasubpalettes']['file_customFiletree'] = array
(
	'file_uploadFolder', 'file_validFileTypes', 'file_filesOnly'
);


$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['file_customFiletree'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['file_customFiletree'],
	'inputType'               => 'checkbox',
	'eval'                    => array('submitOnChange'=>true, 'tl_class'=>'clr')
);


$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['file_multiple'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['file_multiple'],
	'inputType'               => 'checkbox',
	'eval'                    => array('tl_class'=>'clr')
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['file_uploadFolder'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['file_uploadFolder'],
	'exclude'                 => true,
	'inputType'               => 'fileTree',
	'eval'                    => array('fieldType'=>'radio', 'tl_class'=>'clr')
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['file_validFileTypes'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['file_validFileTypes'],
	'inputType'               => 'text',
	'eval'                    => array('maxlength'=>255, 'tl_class'=>'w50')
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['file_filesOnly'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['file_filesOnly'],
	'inputType'               => 'checkbox',
	'eval'                    => array('tl_class'=>'w50 m12')
);