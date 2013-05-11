<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package     MetaModels
 * @subpackage  AttributeCombinedValues
 * @author      Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @author      Stefan Heimes <cms@men-at-work.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

/**
 * Table tl_metamodel_attribute
 */

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['metapalettes']['combinedvalues extends _simpleattribute_'] = array
(
	'+advanced' => array('force_combinedvalues'),
	'+display'  => array('combinedvalues_format after description', 'combinedvalues_fields')
);


$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['combinedvalues_fields'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['combinedvalues_fields'],
	'exclude'                 => true,
	'inputType'               => 'multiColumnWizard',
	'eval'                    => array
	(
		'tl_class'     => 'm12',
		'columnFields' => array
		(
			'field_attribute' => array
			(
				'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['field_attribute'],
				'exclude'               => true,
				'inputType'             => 'select',
				'options_callback'      => array('TableMetaModelsAttributeCombinedValues','getAllAttributes'),
					'eval' => array
					(
						'style'         => 'width:600px',
						'chosen'        => 'true',
					)
			),
		),
	),
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['force_combinedvalues'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['force_combinedvalues'],
	'exclude'                 => true,
	'inputType'               => 'checkbox',
	'eval'                    => array('tl_class'=>'cbx w50'),
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['combinedvalues_format'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['combinedvalues_format'],
	'exclude'                 => true,
	'inputType'               => 'text',
	'eval'                    => array('tl_class'=>'cbx long'),
);