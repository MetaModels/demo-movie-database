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


class DemoInstallTaskDbImport extends DemoInstallTask
{
	protected $file;

	public function __construct(DemoInstaller $installer, $file)
	{
		$this->file = $file;
	}

	public function run()
	{
		// Import data
		$file = file_get_contents(TL_ROOT . DIRECTORY_SEPARATOR . $this->file);

		preg_match_all('/CREATE TABLE.*;\s*\n/sU', $file, $sql);

		foreach ($sql[0] as $query)
		{
			Database::getInstance()->execute($query);
		}

		preg_match_all('/INSERT.*;\s*\n/sU', $file, $sql);

		foreach ($sql[0] as $query)
		{
			Database::getInstance()->execute($query);
		}
	}

	public function getDescription()
	{
		return sprintf($GLOBALS['TL_LANG']['mm_demo']['db_import'], $this->file);
	}
}