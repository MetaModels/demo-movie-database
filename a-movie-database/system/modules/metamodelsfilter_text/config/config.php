<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage FilterText
 * @author     Christian de la Haye <service@delahaye.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * Frontend filter
 */
$GLOBALS['METAMODELS']['filters']['text'] = array
(
	'class' => 'MetaModelFilterSettingText',
	'attr_filter' => array('text','longtext'),
	'image' => 'system/modules/metamodelsfilter_text/html/filter_text.png',
	'info_callback' => array('TableMetaModelFilterSetting','infoCallback'),
);