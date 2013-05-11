<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage FilterFromTo
 * @author     Christian de la Haye <service@delahaye.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * Filter "value from x to y" for FE-filtering, based on filters by the meta models team.
 *
 * @package	   MetaModels
 * @subpackage FilterFromTo
 * @author     Christian de la Haye <service@delahaye.de>
 */
class MetaModelFilterSettingFromTo extends MetaModelFilterSetting
{
	/**
	 * {@inheritdoc}
	 */
	protected function getParamName()
	{
		if ($this->get('urlparam'))
		{
			return $this->get('urlparam');
		}

		$objAttribute = $this->getMetaModel()->getAttributeById($this->get('attr_id'));
		if ($objAttribute)
		{
			return $objAttribute->getColName();
		}
	}


	/**
	 * {@inheritdoc}
	 */
	public function prepareRules(IMetaModelFilter $objFilter, $arrFilterUrl)
	{
		$objMetaModel = $this->getMetaModel();
		$objAttribute = $objMetaModel->getAttributeById($this->get('attr_id'));
		$strParamName = $this->getParamName();
		$strColname = $objAttribute->getColName();

		$arrParamValue = NULL;
		if (array_key_exists($strParamName, $arrFilterUrl) && !empty($arrFilterUrl[$strParamName]))
		{
			if (is_array($arrFilterUrl[$strParamName]))
			{
				$arrParamValue = $arrFilterUrl[$strParamName];
			} else {
				// TODO: still unsure if double underscore is such a wise idea.
				$arrParamValue = explode('__', $arrFilterUrl[$strParamName]);
			}
		}

		if ($objAttribute && $strParamName && $arrParamValue && ($arrParamValue[0] || $arrParamValue[1]))
		{
			$strMore = $this->get('moreequal') ? '>=' : '>';
			$strLess = $this->get('lessequal') ? '<=' : '<';

			$arrQuery = array();
			$arrParams = array();

			if($this->get('fromfield'))
			{
				if ($arrParamValue[0])
				{
					$arrQuery[] = sprintf('(%s%s?)', $objAttribute->getColName(), $strMore);
					$arrParams[] = $arrParamValue[0];
				}
				if ($arrParamValue[1])
				{
					$arrQuery[] = sprintf('(%s%s?)', $objAttribute->getColName(), $strLess);
					$arrParams[] = $arrParamValue[1];
				}
			}
			else
			{
				if ($arrParamValue[0])
				{
					$arrQuery[] = sprintf('(%s%s?)', $objAttribute->getColName(), $strLess);
					$arrParams[] = $arrParamValue[0];
				}
			}

			$objFilter->addFilterRule(new MetaModelFilterRuleSimpleQuery(
				sprintf('SELECT id FROM %s WHERE ', $this->getMetaModel()->getTableName()) . implode(' AND ', $arrQuery), $arrParams));
			return;
		}

		$objFilter->addFilterRule(new MetaModelFilterRuleStaticIdList(NULL));
	}


	/**
	 * {@inheritdoc}
	 */
	public function getParameters()
	{
		return ($strParamName = $this->getParamName()) ? array($strParamName) : array();
	}


	/**
	 * {@inheritdoc}
	 */
	public function getParameterFilterNames()
	{
		return array(
			$this->getParamName() => ($this->get('label') ? $this->get('label') : $this->getMetaModel()->getAttributeById($this->get('attr_id'))->getName())
		);
	}


	/**
	 * {@inheritdoc}
	 */
	public function getParameterFilterWidgets($arrIds, $arrFilterUrl, $arrJumpTo, $blnAutoSubmit, $blnHideClearFilter)
	{
		$objAttribute = $this->getMetaModel()->getAttributeById($this->get('attr_id'));

		$arrOptions = $objAttribute->getFilterOptions(($this->get('onlypossible') ? $arrIds : NULL), (bool)$this->get('onlyused'));
			
		// Remove empty values from list.
		foreach ($arrOptions as $mixKeyOption => $mixOption)
		{
			// Remove html/php tags.
			$mixOption = strip_tags($mixOption);
			$mixOption = trim($mixOption);
			
			if($mixOption === '' || $mixOption === null)
			{
				unset($arrOptions[$mixKeyOption]);
			}
		}

		$arrLabel = array(
			($this->get('label') ? $this->get('label') : $objAttribute->getName()),
			'GET: '.$this->get('urlparam')
			);

		if($this->get('fromfield') && $this->get('tofield'))
		{
			$arrLabel[0] .= ' '.$GLOBALS['TL_LANG']['metamodels_frontendfilter']['fromto'];
		}
		elseif($this->get('fromfield') && !$this->get('tofield'))
		{
			$arrLabel[0] .= ' '.$GLOBALS['TL_LANG']['metamodels_frontendfilter']['from'];
		}
		else
		{
			$arrLabel[0] .= ' '.$GLOBALS['TL_LANG']['metamodels_frontendfilter']['to'];
		}

		$arrUrlValue = $arrFilterUrl[$this->getParamName()];

		// split up our param so the widgets can use it again.
		$strParamName = $this->getParamName();
		$arrMyFilterUrl = $arrFilterUrl;
		// if we have a value, we have to explode it by double underscore to have a valid value which the active checks may cope with.
		if (array_key_exists($strParamName, $arrFilterUrl) && !empty($arrFilterUrl[$strParamName]))
		{
			if (is_array($arrFilterUrl[$strParamName]))
			{
				$arrParamValue = $arrFilterUrl[$strParamName];
			} else {
				// TODO: still unsure if double underscore is such a wise idea.
				$arrParamValue = explode('__', $arrFilterUrl[$strParamName], 2);
			}

			if ($arrParamValue && ($arrParamValue[0] || $arrParamValue[1]))
			{
				$arrMyFilterUrl[$strParamName] = $arrParamValue;
			} else {
				// no values given, clear the array.
				$arrParamValue = NULL;
			}
		}
		
		$GLOBALS['MM_FILTER_PARAMS'][] = $this->getParamName();

		return array(
			$this->getParamName() => $this->prepareFrontendFilterWidget(
				array
				(
					'label'     => $arrLabel,
					'inputType' => 'multitext',
					'eval'      => array
					(
						'multiple'  => true,
						'size'      => ($this->get('fromfield') && $this->get('tofield') ? 2 : 1),
						'urlparam'  => $this->get('urlparam')
					),
					'template'  => $this->get('template'),
					// we need to implode to have it transported correctly in the frontend filter.
					// TODO: still unsure if double underscore is such a wise idea.
					'urlvalue' => !empty($arrParamValue) ? implode('__', $arrParamValue) : ''
				),
				$arrMyFilterUrl,
				$arrJumpTo,
				$blnAutoSubmit
			)
		);
	}
}