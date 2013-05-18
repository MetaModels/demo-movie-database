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

abstract class DemoInstallTaskFile extends DemoInstallTask
{
	protected $filename;

	public function __construct(DemoInstaller $installer, $filename)
	{
		parent::__construct($installer);

		$this->filename = $filename;
	}
}