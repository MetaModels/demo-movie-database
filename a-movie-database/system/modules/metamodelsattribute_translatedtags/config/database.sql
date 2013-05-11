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
  `tag_langcolumn` varchar(255) NOT NULL default '',
  `tag_srctable` varchar(255) NOT NULL default '',
  `tag_srcsorting` varchar(255) NOT NULL default '',
) ENGINE=MyISAM DEFAULT CHARSET=utf8;