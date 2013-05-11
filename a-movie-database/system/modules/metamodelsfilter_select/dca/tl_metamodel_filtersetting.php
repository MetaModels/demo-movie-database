<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage FilterSelect
 * @author     Christian de la Haye <service@delahaye.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * palettes
 */
$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['metapalettes']['select extends _attribute_']['+fefilter'][] = 'label';
$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['metapalettes']['select extends _attribute_']['+fefilter'][] = 'template';
$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['metapalettes']['select extends _attribute_']['+fefilter'][] = 'defaultid';
$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['metapalettes']['select extends _attribute_']['+fefilter'][] = 'blankoption';
$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['metapalettes']['select extends _attribute_']['+fefilter'][] = 'onlyused';
$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['metapalettes']['select extends _attribute_']['+fefilter'][] = 'onlypossible';
$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['metapalettes']['select extends _attribute_']['+config'][] = 'urlparam';

/**
 * fields
 */
$GLOBALS['TL_DCA']['tl_metamodel_filtersetting']['fields']['defaultid'] = array
(
	'label'                   => &$GLOBALS['TL_LANG']['tl_metamodel_filtersetting']['defaultid'],
	'exclude'                 => true,
	'inputType'               => 'select',
	'options_callback'        => array('TableMetaModelFilterSetting_Select','getSelectDefault'),
	'eval'                    => array('tl_class'=>'w50 clr', 'includeBlankOption'=>true)
);