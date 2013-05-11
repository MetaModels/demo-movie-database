-- **********************************************************
-- *                                                        *
-- * IMPORTANT NOTE                                         *
-- *                                                        *
-- * Do not import this file manually but use the Contao    *
-- * install tool to create and maintain database tables!   *
-- *                                                        *
-- **********************************************************

-- 
-- Table `tl_metamodel_translatedlongtext`
-- 

CREATE TABLE `tl_metamodel_translatedlongtext` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `att_id` int(10) unsigned NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `langcode` varchar(2) NOT NULL default '',
  `value` text NULL,
  PRIMARY KEY  (`id`),
  KEY `attlang` (`att_id`, `langcode`),
  KEY `attitem` (`att_id`, `item_id`),
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
