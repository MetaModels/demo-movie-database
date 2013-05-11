-- ********************************************************
-- *                                                      *
-- * IMPORTANT NOTE                                       *
-- *                                                      *
-- * Do not import this file manually but use the Contao  *
-- * install tool to create and maintain database tables! *
-- *                                                      *
-- ********************************************************


-- --------------------------------------------------------

--
-- Table `tl_metamodel_filtersetting`
--

CREATE TABLE `tl_metamodel_filtersetting` (
  `attr_id2` int(10) unsigned NOT NULL default '0',
  `moreequal` char(1) NOT NULL default '1',
  `lessequal` char(1) NOT NULL default '1',
  `fromfield` char(1) NOT NULL default '1',
  `tofield` char(1) NOT NULL default '1',
) ENGINE=MyISAM DEFAULT CHARSET=utf8;