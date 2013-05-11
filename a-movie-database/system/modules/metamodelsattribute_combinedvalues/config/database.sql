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
  `combinedvalues_fields` blob NULL,
  `combinedvalues_format` text NULL,
  `force_combinedvalues` char(1) NOT NULL default '',
) ENGINE=MyISAM DEFAULT CHARSET=utf8;