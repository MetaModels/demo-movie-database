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

class DemoInstallTaskInstallFile extends DemoInstallTaskFile
{
	protected $destination;

	public function __construct(DemoInstaller $installer, $filename, $destination)
	{
		parent::__construct($installer, $filename);

		$this->destination = $destination;
	}

	public function run()
	{
		if (is_dir(TL_ROOT . DIRECTORY_SEPARATOR . $this->filename))
		{
			if (!(is_dir(TL_ROOT . DIRECTORY_SEPARATOR . $this->destination) || mkdir(TL_ROOT . DIRECTORY_SEPARATOR . $this->destination)))
			{
				throw new Exception('Error creating directory: ' . TL_ROOT . DIRECTORY_SEPARATOR . $this->destination);
			}
		}
		else
		{
			if (!(is_file(TL_ROOT . DIRECTORY_SEPARATOR . $this->destination) || copy(TL_ROOT . DIRECTORY_SEPARATOR . $this->filename, TL_ROOT . DIRECTORY_SEPARATOR . $this->destination)))
			{
				throw new Exception('Error installing file: ' . TL_ROOT . DIRECTORY_SEPARATOR . $this->destination);
			}
		}
	}

	public function getDescription()
	{
		return sprintf($GLOBALS['TL_LANG']['mm_demo']['install_file'], $this->destination);
	}
}