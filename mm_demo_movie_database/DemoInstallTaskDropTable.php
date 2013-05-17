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

class DemoInstallTaskDropTable extends DemoInstallTask
{
	protected $table;

	public function __construct(DemoInstaller $installer, $table)
	{
		parent::__construct($installer);

		$this->table = $table;
	}

	public function run()
	{
		Database::getInstance()->executeUncached('DROP TABLE ' . $this->table);
	}

	public function getDescription()
	{
		return sprintf($GLOBALS['TL_LANG']['mm_demo']['drop_table'], $this->table);
	}
}