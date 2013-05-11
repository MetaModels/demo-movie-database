<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package     MetaModels
 * @subpackage  AttributeCombinedValues
 * @author      Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @author      Stefan Heimes <cms@men-at-work.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

/**
 * Register the classes
 */
ClassLoader::addClasses(array
(
	'MetaModelAttributeCombinedValues'        => 'system/modules/metamodelsattribute_combinedvalues/MetaModelAttributeCombinedValues.php',
	'TableMetaModelsAttributeCombinedValues'  => 'system/modules/metamodelsattribute_combinedvalues/TableMetaModelsAttributeAlias.php',
));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
	'mm_attr_combinedvalues'                  => 'system/modules/metamodelsattribute_combinedvalues/templates',
));
