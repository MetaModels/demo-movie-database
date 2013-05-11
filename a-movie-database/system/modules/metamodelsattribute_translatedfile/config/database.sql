-- **********************************************************
-- *                                                        *
-- * IMPORTANT NOTE                                         *
-- *                                                        *
-- * Do not import this file manually but use the Contao    *
-- * install tool to create and maintain database tables!   *
-- *                                                        *
-- **********************************************************

-- 
-- Table `tl_metamodel_translatedtext`
-- 

CREATE TABLE `tl_metamodel_translatedlongblob` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `att_id` int(10) unsigned NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `langcode` varchar(2) NOT NULL default '',
  `value` longblob NULL,
  PRIMARY KEY  (`id`),
  KEY `attlang` (`att_id`, `langcode`),
  KEY `attitem` (`att_id`, `item_id`),
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Table `tl_metamodel_attribute`
--

CREATE TABLE `tl_metamodel_attribute` (
  `file_multiple` char(1) NOT NULL default '',
  `file_customFiletree` char(1) NOT NULL default '',
  `file_uploadFolder` varchar(255) NOT NULL default '',
  `file_validFileTypes` varchar(255) NOT NULL default '',
  `file_filesOnly` char(1) NOT NULL default '',
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table `tl_metamodel_rendersetting`
--

CREATE TABLE `tl_metamodel_rendersetting` (
  `file_sortBy` varchar(32) NOT NULL default '',
  `file_showLink` char(1) NOT NULL default '',
  `file_showImage` char(1) NOT NULL default '',
  `file_imageSize` varchar(255) NOT NULL default '',
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
