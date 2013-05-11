<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage AttributeTags
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @author     Andreas Isaak <info@andreas-isaak.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * Register the classes
 */
ClassLoader::addClasses(array
(
	'MetaModelAttributeTags'              => 'system/modules/metamodelsattribute_tags/MetaModelAttributeTags.php',
	'MetaModelFilterRuleTags'             => 'system/modules/metamodelsattribute_tags/MetaModelFilterRuleTags.php',
	'TableMetaModelsAttributeTags'        => 'system/modules/metamodelsattribute_tags/TableMetaModelsAttributeTags.php',
));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
	'mm_attr_tags'              => 'system/modules/metamodelsattribute_tags/templates',
));
