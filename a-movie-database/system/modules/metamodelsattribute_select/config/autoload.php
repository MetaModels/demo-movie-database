<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package     MetaModels
 * @subpackage  AttributeSelect
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
	'MetaModelAttributeSelect'              => 'system/modules/metamodelsattribute_select/MetaModelAttributeSelect.php',
	'MetaModelFilterRuleSelect'             => 'system/modules/metamodelsattribute_select/MetaModelFilterRuleSelect.php',
	'TableMetaModelsAttributeSelect'        => 'system/modules/metamodelsattribute_select/TableMetaModelsAttributeSelect.php',
));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
	'mm_attr_select'              => 'system/modules/metamodelsattribute_select/templates',
));
