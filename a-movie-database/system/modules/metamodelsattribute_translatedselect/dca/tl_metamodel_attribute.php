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
 * Table tl_metamodel_attribute 
 */

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['metapalettes']['translatedselect extends select'] = array
(
	'+display' => array('select_langcolumn after select_id', 'select_srctable', 'select_srcsorting')
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['select_langcolumn'] = array
(
	'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['select_langcolumn'],
	'exclude'               => true,
	'inputType'             => 'select',
	'options_callback'      => array('TableMetaModelsAttributeSelect', 'getColumnNames'),
	'eval'                  => array
	(
		'includeBlankOption' => true,
		'doNotSaveEmpty' => true,
		'alwaysSave' => true,
		'submitOnChange'=> true,
		'tl_class'=>'w50',
		'chosen' => 'true'
	),
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['select_srctable'] = array
(
	'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['select_srctable'],
	'exclude'               => true,
	'inputType'             => 'select',
	'options_callback'      => array('TableMetaModelsAttributeSelect', 'getTableNames'),
	'eval'                  => array
	(
		'includeBlankOption' => true,
		'alwaysSave' => true,
		'submitOnChange'=> true,
		'tl_class' => 'w50',
		'chosen' => 'true'
	),
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['select_srcsorting'] = array
(
	'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['select_srcsorting'],
	'exclude'               => true,
	'inputType'             => 'select',
	'options_callback'      => array('TableMetaModelsAttributeTranslatedSelect', 'getSourceColumnNames'),
	'eval'                  => array
	(
		'includeBlankOption' => true,
		'alwaysSave' => true,
		'submitOnChange'=> true,
		'tl_class' => 'w50',
		'chosen' => 'true'
	),
);