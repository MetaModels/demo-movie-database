<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage FilterTags
 * @author     Christian de la Haye <service@delahaye.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * Filter "tags" for FE-filtering, based on filters by the MetaModels team.
 *
 * @package    MetaModels
 * @subpackage FilterTags
 * @author     Christian de la Haye <service@delahaye.de>
 */
class MetaModelFilterSettingTags extends MetaModelFilterSettingSimpleLookup
{
	/**
	 * Overrides the parent implementation to always return true, as this setting is always available for FE filtering.
	 *
	 * @return bool true as this setting is always available.
	 */
	public function enableFEFilterWidget()
	{
		return true;
	}

	/**
	 * {@inheritdoc}
	 */
	protected function isActiveFrontendFilterValue($arrWidget, $arrFilterUrl, $strKeyOption)
	{
		return in_array($strKeyOption, (array)$arrWidget['value']) ? true : false;
	}

	/**
	 * {@inheritdoc}
	 */
	protected function getFrontendFilterValue($arrWidget, $arrFilterUrl, $strKeyOption)
	{
		$arrCurrent = (array)$arrWidget['value'];
		// toggle if active.
		if ($this->isActiveFrontendFilterValue($arrWidget, $arrFilterUrl, $strKeyOption))
		{
			$arrCurrent = array_diff($arrCurrent, array($strKeyOption));
		} else {
			$arrCurrent[] = $strKeyOption;
		}
		return implode(',', $arrCurrent);
	}

	/**
	 * {@inheritdoc}
	 */
	public function prepareRules(IMetaModelFilter $objFilter, $arrFilterUrl)
	{
		$objMetaModel = $this->getMetaModel();
		$objAttribute = $objMetaModel->getAttributeById($this->get('attr_id'));
		$strParamName = $this->getParamName();

		$arrParamValue = NULL;
		if (array_key_exists($strParamName, $arrFilterUrl) && !empty($arrFilterUrl[$strParamName]))
		{
			if (is_array($arrFilterUrl[$strParamName]))
			{
				$arrParamValue = $arrFilterUrl[$strParamName];
			} else {
				$arrParamValue = explode(',', $arrFilterUrl[$strParamName]);
			}
		}

		$arrOptions = $this->getParameterFilterOptions($objAttribute, NULL);

		// filter out the magic keyword for none selected.
		if ($arrParamValue && in_array('--none--', $arrParamValue))
		{
			$arrParamValue = array();
		}

		// filter out the magic keyword for all selected.
		if ($arrParamValue && in_array('--all--', $arrParamValue))
		{
			$arrParamValue = array_keys($arrOptions);
		}

		if ($objAttribute && $strParamName && is_array($arrParamValue) && $arrOptions)
		{
			// TODO: @CS this check for type of "select" is really an very evil hack. We should reconsider it. Leaving it in place for now though, as it was put here by DLH for a good reason I suppose.
			// determine which parenting rule to use, AND or OR.
			if ($objAttribute->get('type')=='select' || $this->get('useor'))
			{
				$objParentRule = new MetaModelFilterRuleOR();
			} else {
				$objParentRule = new MetaModelFilterRuleAND();
			}

			// we allow the current and the fallback language to be searched by default.
			$arrValidLanguages = array($this->getMetaModel()->getActiveLanguage(), $this->getMetaModel()->getFallbackLanguage());

			foreach($arrParamValue as $strParamValue)
			{
				// restrict to valid options for obvious reasons.
				if(array_key_exists($strParamValue, $arrOptions))
				{
					$objSubFilter = new MetaModelFilter($objMetaModel);
					$objSubFilter->addFilterRule(new MetaModelFilterRuleSearchAttribute($objAttribute, $strParamValue, $arrValidLanguages));
					$objParentRule->addChild($objSubFilter);
				}
			}

			$objFilter->addFilterRule($objParentRule);
			return;
		}

		// if no setting has been defined, we appear transparently as "not defined" and return all items.
		$objFilter->addFilterRule(new MetaModelFilterRuleStaticIdList(NULL));
	}

	/**
	 * {@inheritdoc}
	 */
	public function getParameterFilterWidgets($arrIds, $arrFilterUrl, $arrJumpTo, $blnAutoSubmit, $blnHideClearFilter)
	{
		$objAttribute = $this->getMetaModel()->getAttributeById($this->get('attr_id'));

		$arrOptions = $this->getParameterFilterOptions($objAttribute, $arrIds);

		$strParamName = $this->getParamName();
		$arrMyFilterUrl = $arrFilterUrl;
		// if we have a value, we have to explode it by comma to have a valid value which the active checks may cope with.
		if (array_key_exists($strParamName, $arrFilterUrl) && !empty($arrFilterUrl[$strParamName]))
		{
			if (is_array($arrFilterUrl[$strParamName]))
			{
				$arrParamValue = $arrFilterUrl[$strParamName];
			} else {
				$arrParamValue = explode(',', $arrFilterUrl[$strParamName]);
			}

			// ok, this is rather hacky here. The magic value of '--none--' means clear in the widget.
			if (in_array('--none--', $arrParamValue))
			{
				$arrParamValue = null;
			}

			// also hacky, the magic value of '--all--' means check all items in the widget.
			if (is_array($arrParamValue) && in_array('--all--', $arrParamValue))
			{
				$arrParamValue = array_keys($arrOptions);
			}

			if ($arrParamValue)
			{
				$arrMyFilterUrl[$strParamName] = $arrParamValue;
			}
		}
		
		$GLOBALS['MM_FILTER_PARAMS'][] = $strParamName;

		return array(
			$this->getParamName() => $this->prepareFrontendFilterWidget(array
			(
				'label'     => array(
					// TODO: make this multilingual.
					($this->get('label') ? $this->get('label') : $objAttribute->getName()),
					'GET: ' . $strParamName
				),
				'inputType' => 'tags',
				'options'   => $arrOptions,
				'eval'      => array(
					'includeBlankOption' => ($this->get('blankoption') && !$blnHideClearFilter ? true : false),
					'blankOptionLabel'   => &$GLOBALS['TL_LANG']['metamodels_frontendfilter']['do_not_filter'],
					'multiple'     => true,
					'colname'      => $objAttribute->getColname(),
					'urlparam'     => $strParamName,
					'onlyused'     => $this->get('onlyused'),
					'onlypossible' => $this->get('onlypossible'),
					'template'     => $this->get('template')
					),
				// we need to implode again to have it transported correctly in the frontend filter.
				'urlvalue' => !empty($arrParamValue) ? implode(',', $arrParamValue) : ''
			),
			$arrMyFilterUrl,
			$arrJumpTo,
			$blnAutoSubmit)
		);
	}
}