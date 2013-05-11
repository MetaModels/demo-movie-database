<?php

/**
 * The MetaModels extension allows the creation of multiple collections of custom items,
 * each with its own unique set of selectable attributes, with attribute extendability.
 * The Front-End modules allow you to build powerful listing and filtering of the
 * data in each collection.
 *
 * PHP version 5
 * @package    MetaModels
 * @subpackage AttributeTranslatedFile
 * @author     Christian Schiffler <c.schiffler@cyberspectrum.de>
 * @copyright  The MetaModels team.
 * @license    LGPL.
 * @filesource
 */

/**
 * This is the MetaModelAttribute class for handling translated file fields.
 *
 * @package     MetaModels
 * @subpackage  AttributeText
 * @author      Christian Schiffler <c.schiffler@cyberspectrum.de>
 */
class MetaModelAttributeTranslatedFile extends MetaModelAttributeTranslatedReference
{

	protected $arrMeta = array();
	protected $arrAux = array();
	protected $arrProcessed = array();
	protected $auxDate = array();
	protected $multiSRC = array();

	protected function getValueTable()
	{
		return 'tl_metamodel_translatedlongblob';
	}

	/////////////////////////////////////////////////////////
	// Helper
	/////////////////////////////////////////////////////////

	/**
	 * Parse the meta.txt file of a folder. This is an altered version and differs from the
	 * Contao core funtion as it also checks the fallback language.
	 *
	 * @param string $strPath the path where to look for the meta.txt
	 *
	 * @return void
	 */
	protected function parseMetaFile($strPath)
	{
		if (in_array($strPath, $this->arrProcessed))
		{
			return;
		}

		$strFile = $strPath . '/meta_' . $this->getMetaModel()->getActiveLanguage() . '.txt';

		if (!file_exists(TL_ROOT . '/' . $strFile))
		{
			$strFile = $strPath . '/meta_' . $this->getMetaModel()->getFallbackLanguage() . '.txt';

			if (!file_exists(TL_ROOT . '/' . $strFile))
			{
				$strFile = $strPath . '/meta.txt';

				if (!file_exists(TL_ROOT . '/' . $strFile))
				{
					return;
				}
			}
		}

		$strBuffer = file_get_contents(TL_ROOT . '/' . $strFile);
		$strBuffer = utf8_convert_encoding($strBuffer, $GLOBALS['TL_CONFIG']['characterSet']);
		$arrBuffer = array_filter(trimsplit('[\n\r]+', $strBuffer));

		foreach ($arrBuffer as $v)
		{
			list($strLabel, $strValue) = array_map('trim', explode('=', $v, 2));
			$this->arrMeta[$strPath][$strLabel] = array_map('trim', explode('|', $strValue));
			$this->arrAux[] = $strPath . '/' . $strLabel;
		}
		$this->arrProcessed[] = $strPath;
	}

	/**
	 * Generate an URL for downloading the given file.
	 *
	 * @param string $strFile The file that shall be downloaded.
	 *
	 * @return string
	 */
	public function getDownloadLink($strFile)
	{
		$strRequest = Environment::getInstance()->request;
		if (($intPos = strpos($strRequest, '?')) !== false)
		{
			$strRequest = str_replace('?&', '?', preg_replace('/&?file=[^&]&*/', '', $strRequest));
		}
		$strRequest .= (strpos($strRequest, '?') === false ? '?' : '&');
		$strRequest .= 'file=' . urlencode($strFile);
		return $strRequest;
	}

	protected function renderFile($strFile, $objSettings, $strId)
	{
		if (!file_exists(TL_ROOT . '/' . $strFile))
		{
			return;
		}

		$allowedDownload = trimsplit(',', strtolower($GLOBALS['TL_CONFIG']['allowedDownload']));
		if (strlen($this->get('file_validFileTypes')))
		{
			$extensions = trimsplit(',', strtolower($this->get('file_validFileTypes')));
			$allowedDownload = array_intersect($allowedDownload, $extensions);
		}

		$objFile = new File($strFile);
		// check if we want to show as image or if the file is allowed for download.
		if (!(in_array($objFile->extension, $allowedDownload)) || $showImage)
		{
			return;
		}


		// TODO: maybe we want to provide a better option to send the files here as in Catalog v2.0 but for the moment this is the best position.
		// send the file to browser if download is requested.
		if ((!$objSettings->file_showImage) && (Input::getInstance()->get('file') == $strFile))
		{
			MetaModelController::sendFileToBrowser($strFile);
		}

		$arrMeta = array();

		$showImage = $objFile->isGdImage && $objSettings->file_showImage;

		$this->parseMetaFile(dirname($strFile), true);

		$arrMeta = $this->arrMeta[dirname($strFile)][$objFile->basename];

		$strBasename = strlen($arrMeta[0]) ? $arrMeta[0] : specialchars($objFile->basename);
		$strAltText = (strlen($arrMeta[0]) ? $arrMeta[0] : ucfirst(str_replace('_', ' ', preg_replace('/^[0-9]+_/', '', $objFile->filename))));

		$this->auxDate[] = $objFile->mtime;

		$strIcon = 'system/themes/' . MetaModelController::getTheme() . '/images/' . $objFile->icon;
		$arrSource = array
			(
			'file'     => $strFile,
			'mtime'    => $objFile->mtime,
			'alt'      => $strAltText,
			'caption'  => (strlen($arrMeta[2]) ? $arrMeta[2] : ''),
			'title'    => $strBasename,
			'metafile' => $arrMeta,
			'icon'     => $strIcon,
			'size'     => $objFile->filesize,
			'sizetext' => sprintf('(%s)', MetaModelController::getReadableSize($objFile->filesize, 2)),
			'url'      => specialchars($this->getDownloadLink($strFile))
		);

		// images
		if ($objFile->isGdImage)
		{
			$intWidth = $objSettings->file_imageSize[0] ? $objSettings->file_imageSize[0] : '';
			$intHeight = $objSettings->file_imageSize[1] ? $objSettings->file_imageSize[1] : '';
			$strMode = $objSettings->file_imageSize[2] ? $objSettings->file_imageSize[2] : '';

			if ($showImage)
			{
				$strSrc = MetaModelController::getImage(MetaModelController::urlEncode($strFile), $intWidth, $intHeight, $strMode);
			}
			else
			{
				$strSrc = $strFile;
			}
			$arrSource['src'] = $strSrc;

			$size = getimagesize(TL_ROOT . '/' . urldecode($strSrc));
			$arrSource['lb'] = 'lb' . $strId;
			$arrSource['w'] = $size[0];
			$arrSource['h'] = $size[1];
			$arrSource['wh'] = $size[3];
		}

		return $arrSource;
	}

	/**
	 * when rendered via a template, this returns the values to be stored in the template.
	 */
	protected function prepareTemplate(MetaModelTemplate $objTemplate, $arrRowData, $objSettings = null)
	{
		parent::prepareTemplate($objTemplate, $arrRowData, $objSettings);

		$strId = $this->getMetaModel()->getTableName() . '.' . $arrRowData['id'];

		$this->auxDate = array();

		$arrFiles = array();

		foreach ((array) $arrRowData[$this->getColName()] as $strFile)
		{
			if (is_file(TL_ROOT . '/' . $strFile))
			{
				$arrFiles[] = $strFile;
				$arrSource[] = $this->renderFile($strFile, $objSettings, $strId);
			}
			else if (is_dir(TL_ROOT . '/' . $strFile))
			{
				// Folders
				$arrSubFiles = scan(TL_ROOT . '/' . $strFile);
				foreach ($arrSubFiles as $strSubfile)
				{
					if (is_file(TL_ROOT . '/' . $strFile . '/' . $strSubfile))
					{
						$arrFiles[] = $strFile . '/' . $strSubfile;
						$arrSource[] = $this->renderFile($strFile . '/' . $strSubfile, $objSettings, $strId);
					}
				}
			}
		}

		$files = array();
		$source = array();
		$values = array();

		switch ($objSettings->file_sortBy)
		{
			default:
			case 'name_asc':
				uksort($arrFiles, 'basename_natcasecmp');
				break;

			case 'name_desc':
				uksort($arrFiles, 'basename_natcasercmp');
				break;

			case 'date_asc':
				array_multisort($arrFiles, SORT_NUMERIC, $this->auxDate, SORT_ASC);
				break;

			case 'date_desc':
				array_multisort($arrFiles, SORT_NUMERIC, $this->auxDate, SORT_DESC);
				break;

			case 'meta':
				foreach ($this->arrAux as $aux)
				{
					$k = array_search($aux, $arrFiles);
					if ($k !== false)
					{
						$files[] = $arrFiles[$k];
						$source[] = $arrSource[$k];
					}
				}
				break;

			case 'random':
				$keys = array_keys($arrFiles);
				shuffle($keys);
				foreach ($keys as $key)
				{
					$files[$key] = $arrFiles[$key];
				}
				$arrFiles = $files;
				break;
		}
		if ($objSettings->file_sortBy != 'meta')
		{
			// re-sort the values
			foreach ($arrFiles as $k => $v)
			{
				$files[] = $arrFiles[$k];
				$source[] = $arrSource[$k];
			}
		}

		// add the classes now the values have been sorted.
		$countFiles = count($source);
		foreach ($source as $k => $v)
		{
			$source[$k]['class'] = (($k == 0) ? ' first' : '')
				. (($k == ($countFiles - 1 )) ? ' last' : '')
				. ((($k % 2) == 0) ? ' even' : ' odd');
		}

		$objTemplate->files = $files;
		$objTemplate->src = $source;

		$this->arrMeta = array();
		$this->arrAux = array();
		$this->arrProcessed = array();
		$this->auxDate = array();
		$this->multiSRC = array();
	}

	/////////////////////////////////////////////////////////
	// interface IMetaModelAttribute
	/////////////////////////////////////////////////////////

	public function getAttributeSettingNames()
	{
		return array_merge(parent::getAttributeSettingNames(), array(
			    'file_multiple',
			    'file_customFiletree',
			    'file_uploadFolder',
			    'file_validFileTypes',
			    'file_filesOnly',
			));
	}

	public function getFieldDefinition($arrOverrides = array())
	{
		$arrFieldDef = parent::getFieldDefinition($arrOverrides);

		$arrFieldDef['inputType'] = 'fileTree';

		$arrFieldDef['eval']['files'] = true;

		$arrFieldDef['eval']['fieldType'] = $this->get('file_multiple') ? 'checkbox' : 'radio';

		$arrFieldDef['eval']['extensions'] = $GLOBALS['TL_CONFIG']['allowedDownload'];

		if ($this->get('file_customFiletree'))
		{
			if (strlen($this->get('file_uploadFolder')))
			{
				$arrFieldDef['eval']['path'] = $this->get('file_uploadFolder');
			}
			if (strlen($this->get('file_validFileTypes')))
			{
				$arrFieldDef['eval']['extensions'] = $this->get('file_validFileTypes');
			}
			if (strlen($this->get('file_filesOnly')))
			{
				$arrFieldDef['eval']['filesOnly'] = true;
			}
		}

		return $arrFieldDef;
	}

	public function valueToWidget($varValue)
	{
		return deserialize($varValue['value']);
	}

	public function widgetToValue($varValue, $intId)
	{
		return array
		(
			'tstamp' => time(),
			'value' => $varValue,
			'att_id' => $this->get('id'),
//			'langcode' => $strLangCode,
//			'item_id' => $intId,
		);
	}

	/////////////////////////////////////////////////////////////////
	// interface IMetaModelAttributeTranslated
	/////////////////////////////////////////////////////////////////

	protected function getSetValues($arrValue, $intId, $strLangCode)
	{
		if (is_array($arrValue['value']) && count($arrValue['value']) != 0)
		{
			$arrReturn = array(
				'tstamp' => time(),
				'value' => serialize($arrValue['value']),
				'att_id' => $this->get('id'),
				'langcode' => $strLangCode,
				'item_id' => $intId,
			);
		}
		else if (!is_array($arrValue['value']) && strlen($arrValue['value']) != 0)
		{
			$arrReturn = array(
				'tstamp' => time(),
				'value' => $arrValue['value'],
				'att_id' => $this->get('id'),
				'langcode' => $strLangCode,
				'item_id' => $intId,
			);
		}
		else
		{
			$arrReturn = array(
			'tstamp' => time(),
				'value' => null,
				'att_id' => $this->get('id'),
				'langcode' => $strLangCode,
				'item_id' => $intId,
			);
		}

		return $arrReturn;
	}

}