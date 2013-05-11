<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package     MetaModels
 * @subpackage  AttributeTranslatedAlias
 * @author      Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

/**
 * This is the MetaModelAttribute class for handling translated text fields.
 *
 * @package	   MetaModels
 * @subpackage AttributeTranslatedAlias
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 */
class MetaModelAttributeTranslatedAlias extends MetaModelAttributeTranslatedReference
{
	protected function getValueTable()
	{
		return 'tl_metamodel_translatedtext';
	}

	public function getAttributeSettingNames()
	{
		return array_merge(parent::getAttributeSettingNames(), array('talias_fields', 'isunique', 'force_talias', 'alwaysSave'));
	}

	public function getFieldDefinition($arrOverrides = array())
	{
		$arrFieldDef = parent::getFieldDefinition($arrOverrides);

		$arrFieldDef['inputType'] = 'text';

		// we do not need to set mandatory, as we will automatically update our value when isunique is given.
		if ($this->get('isunique'))
		{
			$arrFieldDef['eval']['mandatory'] = false;
		}
		
		// If "force_alias" is ture set alwaysSave to true.
		if ($this->get('force_alias'))
		{
			$arrFieldDef['eval']['alwaysSave'] = true;
		}
		
		return $arrFieldDef;
	}

	/**
	 * {@inheritdoc}
	 */
	public function modelSaved($objItem)
	{
		$arrValue = $objItem->get($this->getColName());
		// alias already defined and no update forced, get out!
		if ($arrValue && !empty($arrValue['value']) && (!$this->get('force_talias')))
		{
			return;
		}

		$arrAlias = array();
		foreach (deserialize($this->get('talias_fields')) as $strAttribute)
		{
			$arrValues = $objItem->parseAttribute($strAttribute['field_attribute'], 'text', null);
			$arrAlias[] = $arrValues['text'];
		}

		// implode with '-'
		$strAlias  = standardize(implode('-', $arrAlias));

		$strLanguage = $this->getMetaModel()->getActiveLanguage();
		// we need to fetch the attribute values for all attribs in the alias_fields and update the database and the model accordingly.
		if ($this->get('isunique') && $this->searchForInLanguages($strAlias, $strLanguage))
		{
			$intCount = 1;
			// ensure uniqueness.
			while (count($this->searchForInLanguages($strAlias . '-' . (++$intCount), $strLanguage)) > 0){}
			$strAlias = $strAlias . '-' . $intCount;
		}

		$arrData = $this->widgetToValue($strAlias, $objItem->get('id'));

		$this->setTranslatedDataFor(array
		(
			$objItem->get('id') => $arrData
		), $this->getMetaModel()->getActiveLanguage());
		$objItem->set($this->getColName(), $arrData);
	}
}