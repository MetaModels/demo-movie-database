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


class DemoInstallTaskRemoveFile extends DemoInstallTaskFile
{
	protected function determineType()
	{
		$path = TL_ROOT . DIRECTORY_SEPARATOR . $this->filename;
		if (is_dir($path))
		{
			return 'd';
		}
		elseif(is_file($path))
		{
			return 'f';
		}
		elseif(is_link($path))
		{
			return 'l';
		}
		else
		{
			return 'unknown';
		}
	}

	public function run()
	{
		$path = TL_ROOT . DIRECTORY_SEPARATOR . $this->filename;
		switch ($this->determineType())
		{
			case 'd':
				rmdir($path);
				break;

			case 'f':
			case 'l':
				unlink($path);
				break;
			default:
				throw new Exception('Error, unknown filetype encountered: ' . $path);
		}
	}

	public function getDescription()
	{
		switch ($this->determineType())
		{
			case 'f':
				return sprintf($GLOBALS['TL_LANG']['mm_demo']['remove_file'], $this->filename);
				break;
			case 'd':
				return sprintf($GLOBALS['TL_LANG']['mm_demo']['remove_dir'], $this->filename);
				break;
			case 'l':
				return sprintf($GLOBALS['TL_LANG']['mm_demo']['remove_link'], $this->filename);
				break;
			default:
				throw new Exception('Error, unknown filetype encountered: ' . $this->filename);
				break;
		}
	}
}