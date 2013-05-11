<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage AttributeTranslatedTags
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @author     Christian de la Haye <service@delahaye.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * Table tl_metamodel_attribute
 */

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['metapalettes']['translatedtags extends tags'] = array
(
	'+display' => array('tag_langcolumn after tag_id', 'tag_srctable', 'tag_srcsorting')
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['tag_langcolumn'] = array
(
	'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['tag_langcolumn'],
	'exclude'               => true,
	'inputType'             => 'select',
	'options_callback'      => array('TableMetaModelsAttributeTags', 'getColumnNames'),
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

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['tag_srctable'] = array
(
	'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['tag_srctable'],
	'exclude'               => true,
	'inputType'             => 'select',
	'options_callback'      => array('TableMetaModelsAttributeTags', 'getTableNames'),
	'eval'                  => array
	(
		'includeBlankOption' => true,
		'alwaysSave' => true,
		'submitOnChange'=> true,
		'tl_class' => 'w50',
		'chosen' => 'true'
	),
);

$GLOBALS['TL_DCA']['tl_metamodel_attribute']['fields']['tag_srcsorting'] = array
(
	'label'                 => &$GLOBALS['TL_LANG']['tl_metamodel_attribute']['tag_srcsorting'],
	'exclude'               => true,
	'inputType'             => 'select',
	'options_callback'      => array('TableMetaModelsAttributeTranslatedTags', 'getSourceColumnNames'),
	'eval'                  => array
	(
		'includeBlankOption' => true,
		'alwaysSave' => true,
		'submitOnChange'=> true,
		'tl_class' => 'w50',
		'chosen' => 'true'
	),
);