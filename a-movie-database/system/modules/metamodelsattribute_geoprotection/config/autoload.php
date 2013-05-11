<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package     MetaModels
 * @subpackage  AttributeGeoProtection
 * @author      Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @author      Andreas Isaak <info@andreas-isaak.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

/**
 * Register the classes
 */
ClassLoader::addClasses(array
(
	'MetaModelAttributeGeoProtection'             => 'system/modules/metamodelsattribute_geoprotection/MetaModelAttributeGeoProtection.php',
	'MetaModelFilterSettingGeoprotection'         => 'system/modules/metamodelsattribute_geoprotection/MetaModelFilterSettingGeoprotection.php',
	'TableMetaModelFilterSettingGeoprotection'    => 'system/modules/metamodelsattribute_geoprotection/TableMetaModelFilterSettingGeoprotection.php',
	'TableMetaModelsAttributeGeoProtection'       => 'system/modules/metamodelsattribute_geoprotection/TableMetaModelsAttributeGeoProtection.php',
));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
	'mm_attr_geoprotection'              => 'system/modules/metamodelsattribute_geoprotection/templates',
));
