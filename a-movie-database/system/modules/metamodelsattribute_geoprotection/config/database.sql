-- **********************************************************
-- *                                                        *
-- * IMPORTANT NOTE                                         *
-- *                                                        *
-- * Do not import this file manually but use the Contao    *
-- * install tool to create and maintain database tables!   *
-- *                                                        *
-- **********************************************************

-- 
-- Table `tl_metamodel_attribute`
-- 

CREATE TABLE `tl_metamodel_attribute` (
  `geoprotection` blob NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- 
-- Table `tl_metamodel_geoprotection`
-- 

CREATE TABLE `tl_metamodel_geoprotection` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `attr_id` int(11) unsigned NOT NULL default '0',
  `item_id` int(11) unsigned NOT NULL default '0',
  `countries` text NULL,
  `mode` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `attr_id` (`attr_id`),
  KEY `item_id` (`item_id`),
  UNIQUE KEY `geoid` (`item_id`, `attr_id`),
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table `tl_metamodel_filtersetting`
--

CREATE TABLE `tl_metamodel_filtersetting` (
-- corresponding tl_metamodel_attribute
  `gp_attr_id` int(10) unsigned NOT NULL default '0',
) ENGINE=MyISAM DEFAULT CHARSET=utf8;