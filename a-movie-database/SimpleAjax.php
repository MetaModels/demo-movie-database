<?php

/**
 * Contao Open Source CMS
 * Copyright (C) 2005-2011 Leo Feyer
 *
 * Formerly known as TYPOlight Open Source CMS.
 *
 * This program is free software: you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation, either
 * version 3 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this program. If not, please visit the Free
 * Software Foundation website at <http://www.gnu.org/licenses/>.
 *
 * PHP version 5
 * @copyright	Leo Unglaub 2012
 * @author		Leo Unglaub <leo@leo-unglaub.net>
 * @package		simple_ajax
 * @license		LGPL
 */

// simple trick for Contao < 2.10
$arrPost = $_POST;
unset($_POST);

define('TL_MODE', 'FE');
require('system/initialize.php');

$_POST = $arrPost;


/**
 * Class SimpleAjax
 * Contain methods to catch ajax requests and send responses
 */
class SimpleAjax extends Controller
{
	/**
	 * Call the parent constructor.
	 *
	 * !!! DON'T REMOVE THIS !!!
	 *
	 * If you remove this you get the following error message:
	 * Fatal error: Call to protected System::__construct() from invalid context
	 *
	 * @param	void
	 * @return	void
	 */
	public function __construct()
	{
		parent::__construct();
	}


	/**
	 * Get the ajax request and call all hooks
	 *
	 * @param	void
	 * @return	void
	 */
	public function run()
	{
		// check if a hook is registered
		if (is_array($GLOBALS['TL_HOOKS']['simpleAjax']) && count($GLOBALS['TL_HOOKS']['simpleAjax']) > 0)
		{
			// execute every registered callback
			foreach ($GLOBALS['TL_HOOKS']['simpleAjax'] as $callback)
			{
				$this->import($callback[0]);
				$this->$callback[0]->$callback[1]();
			}
		}

		// if there is no other output, we generate a 412 error response
		header('HTTP/1.1 412 Precondition Failed');
		die('Simple Ajax: Invalid AJAX call.');
	}
}


// create a SimpleAjax instance and run it.
$objSimpleAjax = new SimpleAjax();
$objSimpleAjax->run();

?>