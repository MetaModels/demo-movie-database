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
 * Frontend filter
 */

// select fields
$GLOBALS['METAMODELS']['filters']['select'] = array
(
	'class' => 'MetaModelFilterSettingSelect',
	'attr_filter' => array('select','text'),
	'image' => 'system/modules/metamodelsfilter_select/html/filter_select.png',
	'info_callback' => array('TableMetaModelFilterSetting','infoCallback'),
);