<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage FilterTags
 * @author     Christian de la Haye <service@delahaye.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * Frontend filter
 */

// Tags
$GLOBALS['METAMODELS']['filters']['tags'] = array
(
	'class' => 'MetaModelFilterSettingTags',
	'attr_filter' => array('tags','select', 'translatedselect', 'translatedtags'),
	'image' => 'system/modules/metamodelsfilter_tags/html/filter_tags.png',
	'info_callback' => array('TableMetaModelFilterSetting','infoCallback'),
);