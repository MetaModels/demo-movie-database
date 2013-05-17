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

class DemoInstaller extends BackendModule
{
	protected $strTemplate = 'demo_installer';

	protected $config;

	protected $name;

	protected function setName($strName)
	{
		$this->name = $strName;

		$this->loadLanguageFile($this->name);

		$this->config = $GLOBALS['BE_MOD']['metamodels'][$this->name]['mm_demo_content'];
	}

	protected function buildButton($strAction)
	{
		return array
		(
			'class'       => $strAction,
			'action'      => $this->addToUrl('action=' . $strAction),
			'name'        => $GLOBALS['TL_LANG']['mm_demo']['BTN'][$strAction],
			'description' => $GLOBALS['TL_LANG']['mm_demo']['DSC'][$strAction],
		);
	}

	protected function isInstalled()
	{
		return false;
	}

	protected function getInstallButton()
	{
		return $this->buildButton('install');
	}

	protected function getReInstallButton()
	{
		return $this->buildButton('reinstall');
	}

	protected function checkPrerequisities()
	{
		$arrMissing = array();

		if (VERSION <> $this->config['needed_core'])
		{
			$arrMissing[] = 'Contao ' . $this->config['needed_core'];
		}

		foreach ($this->config['needed_extensions'] as $extension)
		{
			if (!file_exists(TL_ROOT . DIRECTORY_SEPARATOR . $extension))
			{
				$arrMissing[] = DIRECTORY_SEPARATOR . $extension;
			}
		}

		$this->Template->missing = $arrMissing;
	}

	protected function determineTableTasks()
	{
		$objTables = $this->Database->executeUncached('SELECT table_name, TABLE_ROWS FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = "' . $GLOBALS['TL_CONFIG']['dbDatabase'] . '";');

		$arrTasks = array();

		while ($objTables->next())
		{
			if (substr($objTables->table_name, 0, 3) == 'mm_')
			{
				$arrTasks[] = new DemoInstallTaskDropTable($this, $objTables->table_name);
			}
			elseif($objTables->TABLE_ROWS>0)
			{
				if ($objTables->table_name != 'tl_session')
				{
					$arrTasks[] = new DemoInstallTaskTruncateTable($this, $objTables->table_name, $objTables->TABLE_ROWS);
				}
			}
		}

		return $arrTasks;
	}

	protected function recursiveGetFiles($strFolder)
	{
		$arrFiles = array();
		// Add a trailing slash
		if (substr($strFolder, -1, 1) != DIRECTORY_SEPARATOR)
		{
			$strFolder .= DIRECTORY_SEPARATOR;
		}

		// Scan directory
		foreach (scandir(TL_ROOT . DIRECTORY_SEPARATOR . $strFolder) as $strFile)
		{
			if ($strFile == '.' || $strFile == '..')
			{
				continue;
			}

			if (is_dir(TL_ROOT . DIRECTORY_SEPARATOR . $strFolder . $strFile))
			{
				$arrFiles = array_merge($arrFiles, $this->recursiveGetFiles($strFolder . $strFile));
			}

			$arrFiles[] = $strFolder . $strFile;
		}

		return $arrFiles;
	}

	protected function determineRemoveFileTasks($strFolder)
	{
		$arrFiles = $this->recursiveGetFiles($strFolder);

		$arrTasks = array();

		// Scan directory
		foreach ($arrFiles as $strFile)
		{
			$arrTasks[] = new DemoInstallTaskRemoveFile($this, $strFile);
		}

		return $arrTasks;
	}

	protected function determineDBInstall()
	{
		$arrTasks = array();

		foreach ($this->config['sql'] as $dump)
		{
			$arrTasks[] = new DemoInstallTaskDbImport($this, $dump);
		}

		return $arrTasks;
	}

	protected function determineSubInstall($folders, $destination)
	{
		$arrTasks = array();

		foreach ($folders as $dir)
		{
			$len = strlen($dir);
			$arrFiles = $this->recursiveGetFiles($dir);
			foreach ($arrFiles as $file)
			{
				$arrTasks[] = new DemoInstallTaskInstallFile($this, $file, $destination . substr($file, $len));
			}
		}

		return array_reverse($arrTasks);
	}

	protected function determineFileInstall()
	{
		$arrTasks = array_merge
		(
			$this->determineSubInstall($this->config['files'], $GLOBALS['TL_CONFIG']['uploadPath']),
			$this->determineSubInstall($this->config['templates'], 'templates'),
			$this->determineSubInstall($this->config['root'], '')
		);

		return $arrTasks;
	}

	protected function assembleTasks()
	{
		$arrTasks = array_merge
		(
			$this->determineTableTasks(),
			$this->determineRemoveFileTasks($GLOBALS['TL_CONFIG']['uploadPath']),
			$this->determineRemoveFileTasks('templates'),
			$this->determineDBInstall(),
			$this->determineFileInstall()
		);

		return $arrTasks;
	}

	protected function installScreen()
	{
		$arrOperations   = array();
		$arrOperations[] = $this->buildButton('install_demo');
		$arrOperations[] = $this->buildButton('do_not_install');

		$this->Template->operations = $arrOperations;
		$this->Template->tasks = $this->assembleTasks();
	}

	protected function welcomeScreen()
	{
		$arrOperations = array();

		if ($this->isInstalled())
		{
			$arrOperations[] = $this->getReInstallButton();
		} else {
			$arrOperations[] = $this->getInstallButton();
		}

		$this->Template->operations = $arrOperations;
	}

	protected function runInstall()
	{
		if (Session::getInstance()->get('demo_installed'))
		{
			$this->Template->installed = true;
			Session::getInstance()->set('demo_installed', null);
			return;
		}

		$arrTasks = $this->assembleTasks();

		/**
		 * @var DemoInstallTask $task
		 */
		foreach ($arrTasks as $task)
		{
			$task->run();
		}

		// Reset Session to configured backend user, so we have a defined state.
		$this->Database->prepare("UPDATE tl_session SET pid=? WHERE pid=?")
			->execute($this->config['user'], BackendUser::getInstance()->id);

		Session::getInstance()->set('demo_installed', true);
		$this->reload();
	}

	public function compile()
	{
		$this->Template->name      = $this->name;
		$this->Template->mode      = $this->Input->get('action');
		$this->Template->installed =
		$installed                 = $this->isInstalled();

		$this->checkPrerequisities();

		switch ($this->Input->get('action'))
		{
			case 'do_not_install':
				$this->redirect(str_replace('&action=do_not_install', '', $this->Environment->request));
				break;

			case 'install':
				$this->installScreen();
				break;

			case 'install_demo':
				$this->runInstall();
				break;

			default:
				$this->welcomeScreen();
		}
	}
}