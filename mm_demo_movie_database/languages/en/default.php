<?php
/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package	   Demo Installer
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

// base values for all demos.
$GLOBALS['TL_LANG']['mm_demo']['see_live']                    = 'Go to our live site to see it in action.';

$GLOBALS['TL_LANG']['mm_demo']['HDL']['about']                = 'About this demo';
$GLOBALS['TL_LANG']['mm_demo']['HDL']['action']               = 'Possible operations';
$GLOBALS['TL_LANG']['mm_demo']['HDL']['about_tasks']          = 'I will perform the following tasks:';
$GLOBALS['TL_LANG']['mm_demo']['HDL']['missing_files']        = 'Your installation is missing the following prerequisities that are needed to run this demo:';
$GLOBALS['TL_LANG']['mm_demo']['HDL']['installed']            = 'Congratulations, installation successful.';

$GLOBALS['TL_LANG']['mm_demo']['BTN']['install']              = 'Install demo';
$GLOBALS['TL_LANG']['mm_demo']['DSC']['install']              = 'Install the demo with one click from the backend.';
$GLOBALS['TL_LANG']['mm_demo']['BTN']['reset']                = 'Reset demo';
$GLOBALS['TL_LANG']['mm_demo']['DSC']['reset']                = 'Re-install the demo with one click from the backend. This is useful if you have played too much and want to get back to the state the Team designed.';

$GLOBALS['TL_LANG']['mm_demo']['BTN']['install_demo']         = 'Start demo script';
$GLOBALS['TL_LANG']['mm_demo']['DSC']['install_demo']         = 'Yes I\'m sure, move on, install the demo and destroy all data I have so far.';
$GLOBALS['TL_LANG']['mm_demo']['BTN']['do_not_install']       = 'Stop demo script';
$GLOBALS['TL_LANG']['mm_demo']['DSC']['do_not_install']       = 'Nah, I decide to rather not install the demo.';

$GLOBALS['TL_LANG']['mm_demo']['WRN']['general']              = 'Please keep in mind, that performing any operation in here will DELETE ALL CONTENT like defined themes, pages, articles, content elements etc. from your installation and RESET IT TO a pure demo installation as provided by the MetaModels Team. Therefore you will most likely NOT want to run this on a real page, we warned you!';
$GLOBALS['TL_LANG']['mm_demo']['WRN']['ensure']               = 'This is the last warning, click "Demo!" below and I will destroy all information in this Contao installation that is not demo relevant. So if you have something valuable here, like Database, content in tl_files or even the templates, all of this will be GONE!';

// Tasks
$GLOBALS['TL_LANG']['mm_demo']['delete_rows']                 = 'Delete %d row(s) from table %s';
$GLOBALS['TL_LANG']['mm_demo']['drop_table']                  = 'Drop table %s';
$GLOBALS['TL_LANG']['mm_demo']['remove_file']                 = 'Delete file %s';
$GLOBALS['TL_LANG']['mm_demo']['remove_dir']                  = 'Remove directory %s';
$GLOBALS['TL_LANG']['mm_demo']['remove_link']                 = 'Remove symlink %s';
$GLOBALS['TL_LANG']['mm_demo']['db_import']                   = 'Import dump %s';
$GLOBALS['TL_LANG']['mm_demo']['install_file']                = 'Install file %s';