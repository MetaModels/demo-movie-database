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
  `useor` char(1) NOT NULL default '0',
  `onlyused` char(1) NOT NULL default '0',
  `onlypossible` char(1) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;