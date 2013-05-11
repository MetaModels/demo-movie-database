<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage AttributeTags
 * @author     Christian de la Haye <service@delahaye.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * Supplementary class for handling DCA information for select attributes.
 *
 * @package	   MetaModels
 * @subpackage AttributeTranslatedTags
 * @author     Christian de la Haye <service@delahaye.de>
 */
class TableMetaModelsAttributeTranslatedTags extends TableMetaModel
{

	public function getSourceColumnNames(DataContainer $objDC)
	{
		$arrFields = array();

		if (($objDC->getCurrentModel())
		    && $this->Database->tableExists($objDC->getCurrentModel()->getProperty('tag_srctable')))
		{
			foreach ($this->Database->listFields($objDC->getCurrentModel()->getProperty('tag_srctable')) as $arrInfo)
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