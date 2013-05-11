<?php

/**
 * PHP version 5
 * @package	   JustTextWidgets
 * @subpackage Core
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @copyright  CyberSpectrum
 * @license    LGPL
 * @filesource
 */

/**
 * Class JustATextOption
 *
 * Display a hidden field with a fixed value in the backend and the option name next to it.
 * This is useful when you need predefined values in a MultiColumnWizard i.e.
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @copyright  CyberSpectrum
 * @package    JustTextWidgets
 */
class JustATextOption extends Widget
{

	/**
	 * Template
	 * @var string
	 */
	protected $strTemplate = 'be_widget';

	/**
	 * Options
	 * @var array
	 */
	protected $arrOptions = array();

	/**
	 * Add specific attributes
	 * @param string
	 * @param mixed
	 */
	public function __set($strKey, $varValue)
	{
		switch ($strKey)
		{
			case 'options':
				$this->arrOptions = deserialize($varValue);
				break;

			default:
				parent::__set($strKey, $varValue);
				break;
		}
	}

	/**
	 * Generate the widget and return it as string
	 * @return string
	 */
	public function generate()
	{
		// Add empty option (XHTML) if there are none
		if (empty($this->arrOptions))
		{
			$this->arrOptions = array(array('value'=>'', 'label'=>'-'));
		}

		$strClass = (strlen($this->strClass) ? ' class="' . $this->strClass . '"' : '');
		$strStyle = (strlen($this->arrAttributes['style']) ? ' style="' . $this->arrAttributes['style'] . '"' : '');

		foreach ($this->arrOptions as $strKey=>$arrOption)
		{
			if (isset($arrOption['value']))
			{
				if ($this->isSelected($arrOption))
				{
					return sprintf('<input type="hidden" id="ctrl_%s" name="%s" value="%s" /><span%s>%s</span>',
										$this->strId,
										$this->strName,
										specialchars($arrOption['value']),
										$strClass . $strStyle,
										$arrOption['label']);
				}
			}
			else
			{
				foreach ($arrOption as $arrOptgroup)
				{
					if ($this->isSelected($arrOptgroup))
					{
						return sprintf('<input type="hidden" id="ctrl_%s" name="%s" value="%s" /><span%s>%s</span>',
											$this->strId,
											$this->strName,
											specialchars($arrOptgroup['value']),
											$strClass . $strStyle,
											$arrOptgroup['label']);
					}
				}
			}
		}
	}
}