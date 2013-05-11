<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage FilterRange
 * @author     Christian de la Haye <service@delahaye.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * Filter "value in range of 2 fields" for FE-filtering, based on filters by the meta models team.
 *
 * @package	   MetaModels
 * @subpackage FilterRange
 * @author     Christian de la Haye <service@delahaye.de>
 */
class MetaModelFilterSettingRange extends MetaModelFilterSetting
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
		$objAttribute2 = $objMetaModel->getAttributeById($this->get('attr_id2'));

		if (!$objAttribute2)
		{
			$objAttribute2 = $objAttribute;
		}

		$strParamName = $this->getParamName();
		$strParamValue = $arrFilterUrl[$strParamName];
		$strMore = $this->get('moreequal') ? '>=' : '>';
		$strLess = $this->get('lessequal') ? '<=' : '<';

		if ($objAttribute && $objAttribute2 && $strParamName && $strParamValue)
		{
			$objFilter->addFilterRule(new MetaModelFilterRuleSimpleQuery(
				sprintf(
				'SELECT id FROM %s WHERE (?%s%s AND ?%s%s)',
				$this->getMetaModel()->getTableName(),
				$strLess,
				$objAttribute2->getColName(),
				$strMore,
				$objAttribute->getColName()
				),
				array($strParamValue, $strParamValue)
				));
			return;
		}

		$objFilter->addFilterRule(new MetaModelFilterRuleStaticIdList(NULL));
	}

	/**
	 * {@inheritdoc}
	 */
	public function getParameterFilterNames()
	{
		$strLabel = ($this->get('label') ? $this->get('label') : $this->getMetaModel()->getAttributeById($this->get('attr_id'))->getName());

		return array(
			$this->getParamName() => $strLabel
		);
	}

	/**
	 * {@inheritdoc}
	 */
	public function getParameterFilterWidgets($arrIds, $arrFilterUrl, $arrJumpTo, $blnAutoSubmit, $blnHideClearFilter)
	{
		$objAttribute = $this->getMetaModel()->getAttributeById($this->get('attr_id'));

		$arrLabel = array(
			($this->get('label') ? $this->get('label') : $objAttribute->getName()),
			'GET: '.$this->getParamName()
		);
		
		$GLOBALS['MM_FILTER_PARAMS'][] = $this->getParamName();

		return array(
			$this->getParamName() => $this->prepareFrontendFilterWidget(
				array
				(
					'label'     => $arrLabel,
					'inputType' => 'text',
					'eval'      => array
					(
						'urlparam'     => $this->getParamName(),
						'template'     => $this->get('template')
					)
				),
				$arrFilterUrl,
				$arrJumpTo,
				$blnAutoSubmit
			)
		);
	}
}