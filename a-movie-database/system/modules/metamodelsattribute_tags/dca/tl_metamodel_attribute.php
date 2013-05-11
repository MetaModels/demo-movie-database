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
 * Table tl_metamodel_attribute 
 */

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['metapalettes']['tags extends _simpleattribute_'] = array
(
	'+display' => array('tag_table after description', 'tag_column', 'tag_id', 'tag_alias', 'tag_sorting', 'tag_where')
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['tag_table'] = array
(
	'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['tag_table'],
	'exclude'               => true,
	'inputType'             => 'select',
	'options_callback'      => array('TableMetaModelsAttributeTags', 'getTableNames'),
	'eval'                  => array
	(
		'includeBlankOption' => true,
		'doNotSaveEmpty' => true,
		'alwaysSave' => true,
		'submitOnChange'=> true,
		'tl_class' => 'w50',
		'chosen' => 'true'
	),
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['tag_column'] = array
(
	'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['tag_column'],
	'exclude'               => true,
	'inputType'             => 'select',
	'options_callback'      => array('TableMetaModelsAttributeTags', 'getColumnNames'),
	'eval'                  => array
	(
		'includeBlankOption' => true,
		'doNotSaveEmpty' => true,
		'alwaysSave' => true,
		'submitOnChange'=> true,
		'tl_class' => 'w50',
		'chosen' => 'true'
	),
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['tag_id'] = array
(
	'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['tag_id'],
	'exclude'               => true,
	'inputType'             => 'select',
	'options_callback'      => array('TableMetaModelsAttributeTags', 'getIntColumnNames'),
	'eval'                  => array
	(
		'includeBlankOption' => true,
		'doNotSaveEmpty' => true,
		'alwaysSave' => true,
		'submitOnChange'=> true,
		'tl_class' => 'w50',
		'chosen' => 'true'
	),
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['tag_alias'] = array
(
	'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['tag_alias'],
	'exclude'               => true,
	'inputType'             => 'select',
	'options_callback'      => array('TableMetaModelsAttributeTags', 'getColumnNames'),
	'eval'                  => array
	(
		'includeBlankOption' => true,
		'doNotSaveEmpty' => true,
		'alwaysSave' => true,
		'submitOnChange'=> true,
		'tl_class' => 'w50',
		'chosen' => 'true'
	),
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['tag_sorting'] = array
(
    'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['tag_sorting'],
    'exclude'               => true,
    'inputType'             => 'select',
    'options_callback'      => array('TableMetaModelsAttributeTags', 'getColumnNames'),
    'eval'                  => array
    (
        'includeBlankOption' => true,
        'doNotSaveEmpty' => true,
        'alwaysSave' => true,
        'submitOnChange'=> true,
        'tl_class' => 'w50',
        'chosen' => 'true'
    ),
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['tag_where'] = array
(
	'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['tag_where'],
	'exclude'               => true,
	'inputType'             => 'textarea',
	'save_callback'         => array(array('TableMetaModelsAttributeTags', 'checkQuery')),
	'eval'                  => array
	(
		'tl_class'=>'clr',
		'style'=>'height: 4em;',
		'decodeEntities'=>'true'
	)
);