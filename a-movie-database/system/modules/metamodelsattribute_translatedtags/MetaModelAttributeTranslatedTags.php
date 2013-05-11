<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage AttributeTranslatedTags
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @author     Christian de la Haye <service@delahaye.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * This is the MetaModelAttribute class for handling translated tag attributes.
 *
 * @package	   MetaModels
 * @subpackage AttributeTranslatedTags
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @author     Christian de la Haye <service@delahaye.de>
 */
class MetaModelAttributeTranslatedTags extends MetaModelAttributeTags implements IMetaModelAttributeTranslated
{
	/**
	 * Get numbers of tag for the given ids.
	 */
	public function getTagCount($arrIds)
	{
		$objDB = Database::getInstance();
		$strTableName = $this->get('tag_table');
		$strColNameId = $this->get('tag_id');
		$arrReturn = array();

		if ($strTableName && $strColNameId)
		{
			$strMetaModelTableName = $this->getMetaModel()->getTableName();
			$strMetaModelTableNameId = $strMetaModelTableName.'_id';

			$objValue = $objDB->prepare(sprintf(
					'SELECT `item_id`, count(*) as count FROM `tl_metamodel_tag_relation`
						WHERE att_id = ? AND item_id IN (%1$s) group BY `item_id`',
					implode(',', $arrIds) // 1
					))
			->execute($this->get('id'));

			while ($objValue->next())
			{

				if(!$arrReturn[$objValue->item_id])
				{
					$arrReturn[$objValue->item_id] = array();
				}
				$arrReturn[$objValue->item_id] = $objValue->count;
			}
		}
		return $arrReturn;
	}

	/**
	 * Fetch the ids of options optionally limited to the items with the provided ids.
	 * NOTE: this does not take the actual availablility of an value in the current or
	 * fallback languages into account.
	 * This method is mainly intended as a helper for
	 * {@see MetaModelAttributeTranslatedTags::getFilterOptions()}
	 *
	 * @param int[] $arrIds      a list of item ids that the result shall be limited to.
	 *
	 * @param bool  $blnUsedOnly do only return ids that have matches in the real table.
	 *
	 * @return int[] a list of all matching value ids.
	 */
	protected function getValueIds($arrIds, $blnUsedOnly)
	{
		if ($arrIds === array())
		{
			return array();
		}

		// first off, we need to determine the option ids in the foreign table.
		$objDB = Database::getInstance();
		if ($arrIds !== NULL)
		{
			$objValueIds = $objDB->prepare(sprintf('
				SELECT %1$s.%2$s %6$s
				FROM %1$s
				%8$s
				LEFT JOIN tl_metamodel_tag_relation ON (
					(tl_metamodel_tag_relation.att_id=?)
					AND (tl_metamodel_tag_relation.value_id=%1$s.%2$s)
				)
				WHERE tl_metamodel_tag_relation.item_id IN (%3$s) %5$s
				GROUP BY %1$s.%2$s
				ORDER BY %7$s %1$s.%4$s',
				$this->get('tag_table'), // 1
				$this->get('tag_id'), // 2
				implode(',', $arrIds), // 3
				$this->get('tag_sorting'), // 4
				($this->get('tag_where') ? 'AND ('.html_entity_decode($this->get('tag_where').')') : false), //5
				($this->get('tag_srctable') ? ', '.$this->get('tag_srctable').'.*' : false), //6
				($this->get('tag_srcsorting') ? $this->get('tag_srctable').'.'.$this->get('tag_srcsorting').',' : false), //7
				($this->get('tag_srctable') ? 'JOIN '.$this->get('tag_srctable').' ON '.$this->get('tag_table').'.'.$this->get('tag_id').'='.$this->get('tag_srctable').'.id' : false) //8
			))
			->execute($this->get('id'));
		} else if ($blnUsedOnly) {
			$objValueIds = $objDB->prepare(sprintf('
				SELECT value_id AS %1$s %5$s
				FROM tl_metamodel_tag_relation
				RIGHT JOIN %3$s ON(tl_metamodel_tag_relation.value_id=%3$s.%1$s)
				%7$s
				WHERE att_id=? %4$s
				GROUP BY value_id
				ORDER BY %6$s %3$s.%2$s',
				$this->get('tag_id'), //1
				$this->get('tag_sorting'), //2
				$this->get('tag_table'), // 3
				($this->get('tag_where') ? 'AND ('.html_entity_decode($this->get('tag_where').')') : false), //4
				($this->get('tag_srctable') ? ', '.$this->get('tag_srctable').'.*' : false), //5
				($this->get('tag_srcsorting') ? $this->get('tag_srctable').'.'.$this->get('tag_srcsorting').',' : false), //6
				($this->get('tag_srctable') ? 'JOIN '.$this->get('tag_srctable').' ON '.$this->get('tag_table').'.'.$this->get('tag_id').'='.$this->get('tag_srctable').'.id' : false) //7
			))
			->execute($this->get('id'));
		} else {
			$objValueIds = $objDB->prepare(sprintf('
				SELECT %1$s.%2$s %5$s
				FROM %1$s
				%7$s
				%4$s
				GROUP BY %1$s.%2$s
				ORDER BY %6$s %3$s',
				$this->get('tag_table'), // 1
				$this->get('tag_id'), // 2
				$this->get('tag_sorting'), // 3
				($this->get('tag_where') ? 'WHERE ('.html_entity_decode($this->get('tag_where').')') : false), //4
				($this->get('tag_srctable') ? ', '.$this->get('tag_srctable').'.*' : false), //5
				($this->get('tag_srcsorting') ? $this->get('tag_srctable').'.'.$this->get('tag_srcsorting').',' : false), //6
				($this->get('tag_srctable') ? 'JOIN '.$this->get('tag_srctable').' ON '.$this->get('tag_table').'.'.$this->get('tag_id').'='.$this->get('tag_srctable').'.id' : false) //7
			))
			->execute();
		}
		return $objValueIds->fetchEach($this->get('tag_id'));
	}

	/**
	 * Fetch the values with the provided ids and given language.
	 * This method is mainly intended as a helper for
	 * {@see MetaModelAttributeTranslatedTags::getFilterOptions()}
	 *
	 * @param int[]  $arrValueIds a list of value ids that the result shall be limited to.
	 *
	 * @param string $strLangCode the language code for which the values shall be retrieved.
	 *
	 * @return Database_Result a database result containing all matching values.
	 */
	protected function getValues($arrValueIds, $strLangCode)
	{
		// now for the retrival, first with the real language.
		return Database::getInstance()->prepare(sprintf('
			SELECT %1$s.* %7$s
			FROM %1$s
			%9$s
			WHERE %1$s.%2$s IN (%3$s) AND (%1$s.%4$s=? %6$s)
			GROUP BY %1$s.%2$s
			ORDER BY %8$s %1$s.%5$s',
			$this->get('tag_table'), // 1
			$this->get('tag_id'), // 2
			implode(',', $arrValueIds), // 3
			$this->get('tag_langcolumn'), //4
			$this->get('tag_sorting'), //5
			($this->get('tag_where') ? ' AND '.html_entity_decode($this->get('tag_where')) : false), //6
			($this->get('tag_srctable') ? ', '.$this->get('tag_srctable').'.*' : false), //7
			($this->get('tag_srcsorting') ? $this->get('tag_srctable').'.'.$this->get('tag_srcsorting').',' : false), //8
			($this->get('tag_srctable') ? 'JOIN '.$this->get('tag_srctable').' ON '.$this->get('tag_table').'.'.$this->get('tag_id').'='.$this->get('tag_srctable').'.id' : false) //9
		))
		->execute($strLangCode);
	}

	/////////////////////////////////////////////////////////////////
	// interface IMetaModelAttribute
	/////////////////////////////////////////////////////////////////

	public function getAttributeSettingNames()
	{
		return array_merge(parent::getAttributeSettingNames(), array(
			'tag_langcolumn', 'tag_srctable', 'tag_srcsorting'
		));
	}

	/**
	 * {@inheritdoc}
	 *
	 * Fetch filter options from foreign table.
	 *
	 */
	public function getFilterOptions($arrIds, $usedOnly)
	{
		$arrReturn = array();

		if ($this->get('tag_table') && ($strColNameId = $this->get('tag_id')))
		{
			// fetch the value ids
			$arrValueIds = $this->getValueIds($arrIds, $usedOnly);
			if (!count($arrValueIds))
			{
				return $arrReturn;
			}

			$strColNameValue = $this->get('tag_column');
			$strColNameAlias = $this->getAliasCol();

			// now for the retrival, first with the real language.
			$objValue = $this->getValues($arrValueIds, $this->getMetaModel()->getActiveLanguage());
			$arrValueIdsRetrieved = array();
			while ($objValue->next())
			{
				$arrValueIdsRetrieved[] = $objValue->$strColNameId;
				$arrReturn[$objValue->$strColNameAlias] = $objValue->$strColNameValue;
			}
			// determine missing ids.
			$arrValueIds = array_diff($arrValueIds, $arrValueIdsRetrieved);
			// if there are missing ids and the fallback language is different than the current language, then fetch those now.
			if ($arrValueIds && ($this->getMetaModel()->getFallbackLanguage() != $this->getMetaModel()->getActiveLanguage()))
			{
				$objValue = $this->getValues($arrValueIds, $this->getMetaModel()->getFallbackLanguage());
				while ($objValue->next())
				{
					$arrReturn[$objValue->$strColNameAlias] = $objValue->$strColNameValue;
				}
			}
		}
		return $arrReturn;
	}

	/////////////////////////////////////////////////////////////////
	// interface IMetaModelAttributeComplex
	/////////////////////////////////////////////////////////////////

	public function getDataFor($arrIds)
	{
		$strActiveLanguage = $this->getMetaModel()->getActiveLanguage();
		$strFallbackLanguage = $this->getMetaModel()->getFallbackLanguage();

		$arrReturn = $this->getTranslatedDataFor($arrIds, $strActiveLanguage);
		$arrTagCount = $this->getTagCount($arrIds);

		$arrFallbackIds = array();

		//check if we got all tags
		foreach ($arrReturn as $key => $results)
		{
			// remove matching tags
			if (count($results) == $arrTagCount[$key])
			{
				unset($arrTagCount[$key]);
			}
		}

		$arrFallbackIds = array_keys($arrTagCount);

		// second round, fetch fallback languages if not all items could be resolved.
		if ((count($arrFallbackIds) > 0) && ($strActiveLanguage != $strFallbackLanguage))
		{

			$arrFallbackData = $this->getTranslatedDataFor($arrFallbackIds, $strFallbackLanguage);

			// cannot use array_merge here as it would renumber the keys.
			foreach ($arrFallbackData as $intId => $arrTransValue)
			{
				foreach ($arrTransValue as $intTransID => $arrValue)
				{
					if (!$arrReturn[$intId][$intTransID])
					{
						$arrReturn[$intId][$intTransID] = $arrValue;
					}
				}
			}

		}
		return $arrReturn;
	}

	/**
	 * {@inheritdoc}
	 */
	public function searchFor($strPattern)
	{
		return $this->searchForInLanguages($strPattern, array($this->getMetaModel()->getActiveLanguage()));
	}

	/////////////////////////////////////////////////////////////////
	// interface IMetaModelAttributeTranslated
	/////////////////////////////////////////////////////////////////

	public function setTranslatedDataFor($arrValues, $strLangCode)
	{
		// although we are translated, we do not manipulate tertiary tables
		// in this attribute. Updating the reference table from plain setDataFor
		// will do just fine.
		$this->setDataFor($arrValues);
	}

	/**
	 * Get values for the given items in a certain language.
	 */
	public function getTranslatedDataFor($arrIds, $strLangCode)
	{
		$objDB = Database::getInstance();
		$strTableName = $this->get('tag_table');
		$strColNameId = $this->get('tag_id');
		$strColNameLangCode = $this->get('tag_langcolumn');
		$strSortColumn = $this->get('tag_sorting');
		$strWhere = ($this->get('tag_where') ? html_entity_decode($this->get('tag_where')) : false);
		$strTableNameSrc = $this->get('tag_srctable');
		$strSortColumnSrc = ($this->get('tag_srcsorting') ? $this->get('tag_srcsorting') : 'id');
		$arrReturn = array();

		if ($strTableName && $strColNameId && $strColNameLangCode)
		{
			$strMetaModelTableName = $this->getMetaModel()->getTableName();
			$strMetaModelTableNameId = $strMetaModelTableName.'_id';

			$objValue = $objDB->prepare(sprintf('
				SELECT %1$s.*, tl_metamodel_tag_relation.item_id AS %2$s %8$s
				FROM %1$s
				LEFT JOIN tl_metamodel_tag_relation ON (
					(tl_metamodel_tag_relation.att_id=?)
					AND (tl_metamodel_tag_relation.value_id=%1$s.%3$s)
					AND (%1$s.%5$s=?)
				)
				%9$s
				WHERE tl_metamodel_tag_relation.item_id IN (%4$s) %7$s
				ORDER BY %10$s %6$s',
				$strTableName, // 1
				$strMetaModelTableNameId, // 2
				$strColNameId, // 3
				implode(',', $arrIds), // 4
				$strColNameLangCode, // 5
				$strSortColumn,//6
				($strWhere ? ' AND '.html_entity_decode($strWhere) : false), //7
				($strTableNameSrc ? ', '.$strTableNameSrc.'.'.$strSortColumnSrc.' as srcsorting' : false), //8
				($strTableNameSrc ? 'JOIN '.$strTableNameSrc.' ON ('.$strTableNameSrc.'.id='.$strTableName.'.'.$strColNameId.')' : false), //9
				($strTableNameSrc ? 'srcsorting,' : false) //10
			))
			->execute($this->get('id'), $strLangCode);
			while ($objValue->next())
			{

				if(!$arrReturn[$objValue->$strMetaModelTableNameId])
				{
					$arrReturn[$objValue->$strMetaModelTableNameId] = array();
				}
				$arrData = $objValue->row();
				unset($arrData[$strMetaModelTableNameId]);
				$arrReturn[$objValue->$strMetaModelTableNameId][$objValue->$strColNameId] = $arrData;
			}
		}

		return $arrReturn;
	}

	/**
	 * Remove values for items in a certain lanugage.
	 */
	public function unsetValueFor($arrIds, $strLangCode)
	{
		// FIXME: unimplemented
		throw new Exception('MetaModelAttributeTranslatedTags::unsetValueFor() is not yet implemented, please do it or find someone who can!', 1);
	}

	/**
	 * {@inheritdoc}
	 */
	public function searchForInLanguages($strPattern, $arrLanguages = array())
	{
		$arrParams = array($strPattern, $strPattern);

		$strTableName = $this->get('tag_table');
		$strColNameId = $this->get('tag_id');
		$strColNameLangCode = $this->get('tag_langcolumn');
		$strColumn = $this->get('tag_column');
		$strColAlias = $this->get('tag_alias') ? $this->get('tag_alias') : $strColNameId;

		$objFilterRule = new MetaModelFilterRuleSimpleQuery(
			sprintf('SELECT item_id FROM tl_metamodel_tag_relation WHERE value_id IN (SELECT DISTINCT %1$s FROM %2$s WHERE %3$s LIKE ? OR %6$s LIKE ?%4$s) AND att_id = %5$s',
				$strColNameId,  //1
				$strTableName,  //2
				$strColumn,     //3
				$arrLanguages ? sprintf(' AND %s IN (\'%s\')',$strColNameLangCode,implode('\',\'', $arrLanguages)) : '',    //4
				$this->get('id'),   //5
				$strColAlias    //6
			),
			$arrParams,
			'item_id'
		);

		return $objFilterRule->getMatchingIds();
	}
}