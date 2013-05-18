<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package	   Movie Database
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

$GLOBALS['BE_MOD']['metamodels']['mm_demo_movie_database'] = array
(
	'callback'        => 'MovieDatabaseDemoInstaller',
	'icon'            => 'system/modules/mm_demo_movie_database/html/icon.png',
	'stylesheet'      => 'system/modules/mm_demo_movie_database/html/style.css',
	'mm_demo_content' => array
	(
		'user'        => 1,
		'sql'         => array
		(
			'system/modules/mm_demo_movie_database/data/movie-database.sql'
		),

		'files'       => array
		(
			'system/modules/mm_demo_movie_database/data/tl_files'
		),

		'templates'   => array
		(
			'system/modules/mm_demo_movie_database/data/templates'
		),

		'root'   => array
		(
			'system/modules/mm_demo_movie_database/data/root'
		),

		'needed_extensions' => array
		(
			'system/modules/metamodelsattribute_text',
			'system/modules/metamodelsattribute_tags',
			'system/modules/metamodelsattribute_timestamp',
			'system/modules/metamodelsattribute_country',
			'system/modules/metamodelsattribute_file',
			'system/modules/metamodelsattribute_translatedalias',
			'system/modules/metamodelsattribute_checkbox',
			'system/modules/metamodelsattribute_url',
			'system/modules/metamodelsattribute_translatedtext',
			'system/modules/metamodelsattribute_translatedlongtext',
			'system/modules/metamodelsattribute_rating',
			'system/modules/generalDriver',
		),
		'needed_core'       => '2.11'
	)
);
