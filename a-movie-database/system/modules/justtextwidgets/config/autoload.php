<?php

/**
 * Contao Open Source CMS
 * 
 * Copyright (C) 2005-2013 Leo Feyer
 * 
 * @package JustTextWidgets
 * @link    https://contao.org
 * @license http://www.gnu.org/licenses/lgpl-3.0.html LGPL
 */


/**
 * Register the classes
 */
ClassLoader::addClasses(array
(
	'JustAnExplanation'                   => 'system/modules/justtextwidgets/JustAnExplanation.php',
	'JustASmallText'                      => 'system/modules/justtextwidgets/JustASmallText.php',
	'JustAText'                           => 'system/modules/justtextwidgets/JustAText.php',
	'JustATextOption'                     => 'system/modules/justtextwidgets/JustATextOption.php',
));

/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
	'be_widget_explanation'               => 'system/modules/justtextwidgets/templates',
	'be_widget_small'                     => 'system/modules/justtextwidgets/templates',
));