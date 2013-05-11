<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package     MetaModels
 * @subpackage  AttributeSelect
 * @author      Christian de la Haye <service@delahaye.de>
 * @copyright   The MetaModels team.
 * @license     LGPL.
 * @filesource
 */

/**
 * Supplementary class for handling DCA information for select attributes.
 *
 * @package	   MetaModels
 * @subpackage AttributeSelect
 * @author      Christian de la Haye <service@delahaye.de>
 */
class TableMetaModelsAttributeTranslatedSelect extends TableMetaModel
{
	public function getSourceColumnNames(DataContainer $objDC)
	{
		$arrFields = array();

		if (($objDC->getCurrentModel())
		    && $this->Database->tableExists($objDC->getCurrentModel()->getProperty('select_srctable')))
		{
			foreach ($this->Database->listFields($objDC->getCurrentModel()->getProperty('select_srctable')) as $arrInfo)
			{
				if ($arrInfo['type'] != 'index')
				{
					$arrFields[$arrInfo['name']] = $arrInfo['name'];
				}
			}
		}

		return $arrFields;
	}
}