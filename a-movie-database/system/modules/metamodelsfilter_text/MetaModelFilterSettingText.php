<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage FilterText
 * @author     Christian de la Haye <service@delahaye.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * Filter "text field" for FE-filtering, based on filters by the MetaModels team.
 *
 * @package	   MetaModels
 * @subpackage FrontendFilter
 * @author     Christian de la Haye <service@delahaye.de>
 */
class MetaModelFilterSettingText extends MetaModelFilterSetting
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
		$strParamValue = $arrFilterUrl[$strParamName];
		$strTextsearch = $this->get('textsearch');

		// react on wildcard, overriding the search type
		if(strpos($strParamValue,'*')!==false)
		{
			$strTextsearch = 'exact';
		}

		// type of search
		switch($strTextsearch)
		{
			case 'beginswith':
				$strWhat = $strParamValue.'%';
				break;
			case 'endswith':
				$strWhat = '%'.$strParamValue;
				break;
			case 'exact':
				$strWhat = $strParamValue;
				break;
			default:
				$strWhat = '%'.$strParamValue.'%';
				break;
		}

		if ($objAttribute && $strParamName && $strParamValue)
		{
			$objQuery = Database::getInstance()->prepare(sprintf(
				'SELECT id FROM %s WHERE %s LIKE ?',
				$this->getMetaModel()->getTableName(),
				$objAttribute->getColName()
				))
				->execute(str_replace(array('*', '?'), array('%', '_'), $strWhat));

			$arrIds = $objQuery->fetchEach('id');

			$objFilter->addFilterRule(new MetaModelFilterRuleStaticIdList($arrIds));
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
	public function getParameterDCA()
	{
		$objAttribute = $this->getMetaModel()->getAttributeById($this->get('attr_id'));

		$arrLabel = array(
			($this->get('label') ? $this->get('label') : $objAttribute->getName()),
			'GET: '.$this->get('urlparam')
			);

		return array(
			$this->getParamName() => array
			(
				'label'     => $arrLabel,
				'inputType' => 'text',
				'eval'      => array(
					'urlparam'     => $this->get('urlparam'),
					'template'     => $this->get('template')
					)
			)
		);
	}
}