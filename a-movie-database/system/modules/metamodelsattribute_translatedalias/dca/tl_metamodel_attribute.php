<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package     MetaModels
 * @subpackage  AttributeTranslatedAlias
 * @author      Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

/**
 * Table tl_metamodel_attribute
 */

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['metapalettes']['translatedalias extends _complexattribute_'] = array
(
	'+advanced' => array('force_talias'),
	'+display'  => array('talias_fields after description')
);


$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['talias_fields'] = array
(
	'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['talias_fields'],
	'exclude'                 => true,
	'inputType'               => 'multiColumnWizard',
	'eval'                    => array
	(
		'columnFields' => array
		(
			'field_attribute' => array
			(
				'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['field_attribute'],
				'exclude'               => true,
				'inputType'             => 'select',
				'options_callback'      => array('TableMetaModelsAttributeTranslatedAlias','getAllAttributes'),
					'eval' => array
					(
					'style'             => 'width:600px',
					'chosen'            => 'true'
					)
			),
		),
	),
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['force_talias'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['force_alias'],
	'exclude'                 => true,
	'inputType'               => 'checkbox',
	'eval'                    => array
	(
		'tl_class'=>'cbx w50'
	),
);