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
 * @author      Andreas Isaak <info@andreas-isaak.de>
 * @author      Christian de la Haye <service@delahaye.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

/**
 * Register the classes
 */
ClassLoader::addClasses(array
(
	'MetaModelAttributeTranslatedSelect'              => 'system/modules/metamodelsattribute_translatedselect/MetaModelAttributeTranslatedSelect.php',
	'TableMetaModelsAttributeTranslatedSelect'        => 'system/modules/metamodelsattribute_translatedselect/TableMetaModelsAttributeTranslatedSelect.php',
));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
	'mm_attr_translatedselect'              => 'system/modules/metamodelsattribute_translatedselect/templates',
));