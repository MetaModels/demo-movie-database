<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage FilterFromTo
 * @author     Christian de la Haye <service@delahaye.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * Frontend filter
 */

// value from x to y
$GLOBALS['METAMODELS']['filters']['fromto'] = array
(
	'class' => 'MetaModelFilterSettingFromTo',
	'attr_filter' => array('numeric','decimal'),
	'image' => 'system/modules/metamodelsfilter_fromto/html/filter_fromto.png',
	'info_callback' => array('TableMetaModelFilterSetting','infoCallback'),
);