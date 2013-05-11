-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net


SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mm_actor`
--

CREATE TABLE `mm_actor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `birthday` int(10) DEFAULT NULL,
  `country` varchar(2) NOT NULL DEFAULT '',
  `image` text,
  `surname` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=96 ;

--
-- Daten für Tabelle `mm_actor`
--

INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(1, 0, 22528, 1367958567, 'Jamie', NULL, '', NULL, 'Foxx', 'Jamie Foxx', 'jamie-foxx');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(2, 0, 22272, 1367958567, 'Christoph', NULL, '', NULL, 'Waltz', 'Christoph Waltz', 'christoph-waltz');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(3, 0, 22016, 1367958567, 'Leonardo', NULL, '', NULL, 'DiCaprio', 'Leonardo DiCaprio', 'leonardo-dicaprio');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(4, 0, 21760, 1367958567, 'Samuel L.', NULL, '', NULL, 'Jackson', 'Samuel L. Jackson', 'samuel-l-jackson');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(5, 0, 21504, 1367958567, 'Robert', NULL, '', NULL, 'Downey Jr.', 'Robert Downey Jr.', 'robert-downey-jr');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(6, 0, 21248, 1367958567, 'Chris', NULL, '', NULL, 'Hemsworth', 'Chris Hemsworth', 'chris-hemsworth');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(7, 0, 20992, 1367958567, 'Scarlett', NULL, '', NULL, 'Johansson', 'Scarlett Johansson', 'scarlett-johansson');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(8, 0, 20736, 1367958567, 'Hugh', NULL, '', NULL, 'Jackman', 'Hugh Jackman', 'hugh-jackman');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(24, 0, 17152, 1367958567, 'Elodie', 351644400, 'fr', NULL, 'Yung', 'Elodie Yung', 'elodie-yung');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(10, 0, 20480, 1367958567, 'Timothy', NULL, '', NULL, 'Olyphant', 'Timothy Olyphant', 'timothy-olyphant');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(11, 0, 20224, 1367958567, 'Milla', NULL, '', NULL, 'Jovovich', 'Milla Jovovich', 'milla-jovovich');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(12, 0, 19968, 1367958567, 'Colin', NULL, '', NULL, 'Salmon', 'Colin Salmon', 'colin-salmon');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(92, 0, 256, 1367958569, 'Tim', -272509200, 'gb', NULL, 'Roth', 'Tim Roth', 'tim-roth');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(91, 0, 256, 1367958567, 'John', NULL, 'us', NULL, 'Travolta', 'John Travolta', 'john-travolta');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(14, 0, 19712, 1367958567, 'Tom', -425437200, 'us', NULL, 'Hanks', 'Tom Hanks', 'tom-hanks');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(15, 0, 19456, 1367958567, 'Jack', -1031792400, 'us', NULL, 'Nicholson', 'Jack Nicholson', 'jack-nicholson');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(16, 0, 19200, 1367958567, 'Matt', 24188400, 'us', NULL, 'Damon', 'Matt Damon', 'matt-damon');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(17, 0, 18944, 1367958567, 'Brad', -190602000, 'us', NULL, 'Pitt', 'Brad Pitt', 'brad-pitt');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(18, 0, 18688, 1367958567, 'Morgan', -1028336400, 'us', NULL, 'Freeman', 'Morgan Freeman', 'morgan-freeman');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(19, 0, 18432, 1367958567, 'Gwyneth', 86396400, 'us', NULL, 'Paltrow', 'Gwyneth Paltrow', 'gwyneth-paltrow');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(20, 0, 18176, 1367958567, 'Ryan', 342831600, 'us', NULL, 'Gosling', 'Ryan Gosling', 'ryan-gosling');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(21, 0, 17920, 1367958567, 'Bryan', -436150800, 'us', NULL, 'Cranston', 'Bryan Cranston', 'bryan-cranston');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(22, 0, 17664, 1367958567, 'Dwayne', 73609200, 'us', NULL, 'Johnson', 'Dwayne Johnson', 'dwayne-johnson');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(23, 0, 17408, 1367958567, 'Byung-hun', 16585200, 'kr', NULL, 'Lee', 'Byung-hun Lee', 'byung-hun-lee');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(25, 0, 16896, 1367958567, 'Ray', -176864400, 'ie', NULL, 'Stevenson', 'Ray Stevenson', 'ray-stevenson');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(26, 0, 16640, 1367958567, 'D.J.', 327880800, 'us', NULL, 'Cotrona', 'D.J. Cotrona', 'dj-cotrona');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(27, 0, 16384, 1367958567, 'Adrianne', 421020000, 'us', NULL, 'Palicki', 'Adrianne Palicki', 'adrianne-palicki');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(28, 0, 16128, 1367958567, 'Channing', 325548000, 'us', NULL, 'Tatum', 'Channing Tatum', 'channing-tatum');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(29, 0, 15872, 1367958567, 'Ray', 146444400, 'gb', NULL, 'Park', 'Ray Park', 'ray-park');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(30, 0, 15616, 1367958567, 'Luke', NULL, '', NULL, 'Bracey', 'Luke Bracey', 'luke-bracey');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(31, 0, 15360, 1367958567, 'Walton', 58575600, 'us', NULL, 'Goggins', 'Walton Goggins', 'walton-goggins');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(32, 0, 15104, 1367958567, 'Hayden', NULL, '', NULL, 'Christensen', 'Hayden Christensen', 'hayden-christensen');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(33, 0, 14848, 1367958567, 'Jamie', 511138800, 'gb', NULL, 'Bell', 'Jamie Bell', 'jamie-bell');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(34, 0, 14592, 1367958567, 'Rachel', 367538400, 'us', NULL, 'Bilson', 'Rachel Bilson', 'rachel-bilson');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(35, 0, 14336, 1367958567, 'Diane', -155955600, 'us', NULL, 'Lane', 'Diane Lane', 'diane-lane');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(84, 0, 2048, 1367958567, 'Laurence', -265856400, 'us', NULL, 'Fishburne', 'Laurence Fishburne', 'laurence-fishburne');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(83, 0, 2304, 1367958567, 'Keanu', -168224400, 'lb', NULL, 'Reeves', 'Keanu Reeves', 'keanu-reeves');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(37, 0, 14080, 1367958567, 'Hilary', 144370800, 'us', NULL, 'Swank', 'Hilary Swank', 'hilary-swank');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(38, 0, 13824, 1367958567, 'Gerard', -4237200, 'gb', NULL, 'Butler', 'Gerard Butler', 'gerard-butler');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(39, 0, 13568, 1367958567, 'Lisa', -202784400, 'us', NULL, 'Kudrow', 'Lisa Kudrow', 'lisa-kudrow');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(40, 0, 13312, 1367958567, 'Gina', -238640400, 'us', NULL, 'Gershon', 'Gina Gershon', 'gina-gershon');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(41, 0, 13056, 1367958567, 'James', -232506000, 'us', NULL, 'Marsters', 'James Marsters', 'james-marsters');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(42, 0, 12544, 1367958567, 'Kathy', -678852000, 'us', NULL, 'Bates', 'Kathy Bates', 'kathy-bates');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(43, 0, 12800, 1367958567, 'Harry', -72838800, 'us', NULL, 'Connick Jr.', 'Harry Connick Jr.', 'harry-connick-jr');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(44, 0, 12288, 1367958567, 'Nellie', 387496800, 'gb', NULL, 'McKay', 'Nellie McKay', 'nellie-mckay');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(45, 0, 12032, 1367958567, 'Jeffrey Dean', -106102800, 'us', NULL, 'Morgan', 'Jeffrey Dean Morgan', 'jeffrey-dean-morgan');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(46, 0, 11776, 1367958567, 'Dean', -172026000, 'us', NULL, 'Winters', 'Dean Winters', 'dean-winters');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(47, 0, 11520, 1367958567, 'Christopher', NULL, '', NULL, 'Whalen', 'Christopher Whalen', 'christopher-whalen');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(48, 0, 11264, 1367958567, 'Anne', NULL, '', NULL, 'Kent', 'Anne Kent', 'anne-kent');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(49, 0, 10752, 1367958567, 'Brian', NULL, '', NULL, 'McGrath', 'Brian McGrath', 'brian-mcgrath');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(50, 0, 11008, 1367958567, 'Sherie Rene', -28256400, 'us', NULL, 'Scott', 'Sherie Rene Scott', 'sherie-rene-scott');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(51, 0, 10496, 1367958567, 'Susan', NULL, '', NULL, 'Blackwell', 'Susan Blackwell', 'susan-blackwell');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(52, 0, 10240, 1367958567, 'Tim', -353811600, 'us', NULL, 'Robbins', 'Tim Robbins', 'tim-robbins');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(53, 0, 9984, 1367958567, 'Bob', -761450400, 'us', NULL, 'Gunton', 'Bob Gunton', 'bob-gunton');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(54, 0, 9728, 1367958567, 'Til', -190515600, 'de', NULL, 'Schweiger', 'Til Schweiger', 'til-schweiger');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(55, 0, 9472, 1367958567, 'Gedeon', -15728400, 'de', NULL, 'Burkhard', 'Gedeon Burkhard', 'gedeon-burkhard');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(56, 0, 8960, 1367958567, 'Matthias', 353113200, 'de', NULL, 'Schweighöfer', 'Matthias Schweighöfer', 'matthias-schweighoefer');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(57, 0, 9216, 1367958567, 'Julia', 256777200, 'de', NULL, 'Jentsch', 'Julia Jentsch', 'julia-jentsch');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(58, 0, 8704, 1367958567, 'Luna', 852937200, 'de', NULL, 'Schweiger', 'Luna Schweiger', 'luna-schweiger');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(59, 0, 8448, 1367958567, 'Emma', 1035583200, 'de', NULL, 'Schweiger', 'Emma Schweiger', 'emma-schweiger');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(60, 0, 8192, 1367958567, 'Nico', 963784800, 'de', NULL, 'Liersch', 'Nico Liersch', 'nico-liersch');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(61, 0, 7936, 1367958567, 'Paula', 531874800, 'de', NULL, 'Kalenberg', 'Paula Kalenberg', 'paula-kalenberg');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(62, 0, 7680, 1367958567, 'Jasmin', 283388400, 'de', NULL, 'Gerat', 'Jasmin Gerat', 'jasmin-gerat');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(63, 0, 7424, 1367958567, 'Samuel', -124592400, 'de', NULL, 'Finzi', 'Samuel Finzi', 'samuel-finzi');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(64, 0, 7168, 1367958567, 'Steffen', -78714000, 'de', NULL, 'Wink', 'Steffen Wink', 'steffen-wink');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(65, 0, 6912, 1367958567, 'Narges', NULL, 'de', NULL, 'Rashidi', 'Narges Rashidi', 'narges-rashidi');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(66, 0, 6656, 1367958567, 'Moritz', 50886000, 'de', NULL, 'Bleibtreu', 'Moritz Bleibtreu', 'moritz-bleibtreu');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(67, 0, 6400, 1367958567, 'Karoline', 372294000, 'de', NULL, 'Schuch', 'Karoline Schuch', 'karoline-schuch');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(68, 0, 6144, 1367958567, 'Herbert', -434768400, 'de', NULL, 'Knaup', 'Herbert Knaup', 'herbert-knaup');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(69, 0, 5888, 1367958567, 'Kostja', 454716000, 'de', NULL, 'Ullmann', 'Kostja Ullmann', 'kostja-ullmann');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(70, 0, 5632, 1367958567, 'Hannah', 368661600, 'de', NULL, 'Herzsprung', 'Hannah Herzsprung', 'hannah-herzsprung');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(71, 0, 5376, 1367958567, 'Stipe', 152319600, 'hr', NULL, 'Erceg', 'Stipe Erceg', 'stipe-erceg');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(72, 0, 5120, 1367958567, 'Lars', NULL, '', NULL, 'Eidinger', 'Lars Eidinger', 'lars-eidinger');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(73, 0, 4864, 1367958567, 'Lisa', NULL, '', NULL, 'Vicari', 'Lisa Vicari', 'lisa-vicari');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(74, 0, 4608, 1367958567, 'Angela', -818730000, 'de', NULL, 'Winkler', 'Angela Winkler', 'angela-winkler');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(75, 0, 4352, 1367958567, 'Ross', 457999200, 'us', NULL, 'Malinger', 'Ross Malinger', 'ross-malinger');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(76, 0, 4096, 1367958567, 'Rita', -416019600, 'us', NULL, 'Wilson', 'Rita Wilson', 'rita-wilson');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(77, 0, 3840, 1367958567, 'Victor', -656298000, 'ca', NULL, 'Garber', 'Victor Garber', 'victor-garber');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(78, 0, 3584, 1367958567, 'Tom Riis', NULL, '', NULL, 'Farrell', 'Tom Riis Farrell', 'tom-riis-farrell');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(79, 0, 3328, 1367958567, 'Carey', -280458000, 'us', NULL, 'Lowell', 'Carey Lowell', 'carey-lowell');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(80, 0, 3072, 1367958567, 'Meg', -256179600, 'us', NULL, 'Ryan', 'Meg Ryan', 'meg-ryan');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(81, 0, 2816, 1367958567, 'Bill', -506221200, '', NULL, 'Pullman', 'Bill Pullman', 'bill-pullman');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(82, 0, 2560, 1367958567, 'Le Clanché', -864352800, 'za', NULL, 'du Rand', 'Le Clanché du Rand', 'le-clanche-du-rand');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(85, 0, 1792, 1367958567, 'Carrie-Anne', -74653200, 'ca', NULL, 'Moss', 'Carrie-Anne Moss', 'carrie-anne-moss');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(86, 0, 1536, 1367958567, 'Hugo', -307501200, 'ng', NULL, 'Weaving', 'Hugo Weaving', 'hugo-weaving');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(87, 0, 1280, 1367958567, 'Vin', -77590800, 'us', NULL, 'Diesel', 'Vin Diesel', 'vin-diesel');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(88, 0, 1024, 1367958567, 'Paul', 116636400, 'us', NULL, 'Walker', 'Paul Walker', 'paul-walker');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(89, 0, 768, 1367958567, 'Jordana', 325548000, 'pa', NULL, 'Brewster', 'Jordana Brewster', 'jordana-brewster');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(90, 0, 512, 1367958567, 'Michelle', 269046000, 'us', NULL, 'Rodriguez', 'Michelle Rodriguez', 'michelle-rodriguez');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(93, 0, 128, 1367958989, 'Uma', 10191600, 'us', NULL, 'Thurman', 'Uma Thurman', 'uma-thurman');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(94, 0, 64, 1367960201, 'Christian', NULL, 'gb', NULL, 'Bale', 'Christian Bale', 'christian-bale');
INSERT INTO `mm_actor` (`id`, `pid`, `sorting`, `tstamp`, `firstname`, `birthday`, `country`, `image`, `surname`, `name`, `alias`) VALUES(95, 0, 32, 1367960213, 'Heath', NULL, 'au', NULL, 'Ledger', 'Heath Ledger', 'heath-ledger');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mm_genre`
--

CREATE TABLE `mm_genre` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `icon` text,
  `internal_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Daten für Tabelle `mm_genre`
--

INSERT INTO `mm_genre` (`id`, `pid`, `sorting`, `tstamp`, `icon`, `internal_name`) VALUES(1, 0, 2176, 1367434462, '', 'Horror');
INSERT INTO `mm_genre` (`id`, `pid`, `sorting`, `tstamp`, `icon`, `internal_name`) VALUES(2, 0, 1258, 1367935868, NULL, 'Comedy');
INSERT INTO `mm_genre` (`id`, `pid`, `sorting`, `tstamp`, `icon`, `internal_name`) VALUES(3, 0, 1024, 1367396472, NULL, 'Drama');
INSERT INTO `mm_genre` (`id`, `pid`, `sorting`, `tstamp`, `icon`, `internal_name`) VALUES(4, 0, 512, 1367396482, NULL, 'Action');
INSERT INTO `mm_genre` (`id`, `pid`, `sorting`, `tstamp`, `icon`, `internal_name`) VALUES(5, 0, 4096, 1367396354, NULL, 'Science-Fiction');
INSERT INTO `mm_genre` (`id`, `pid`, `sorting`, `tstamp`, `icon`, `internal_name`) VALUES(6, 0, 1536, 1367396493, NULL, 'Fantasy');
INSERT INTO `mm_genre` (`id`, `pid`, `sorting`, `tstamp`, `icon`, `internal_name`) VALUES(7, 0, 3840, 1367396508, NULL, 'Mystery');
INSERT INTO `mm_genre` (`id`, `pid`, `sorting`, `tstamp`, `icon`, `internal_name`) VALUES(8, 0, 4608, 1367396536, NULL, 'Western');
INSERT INTO `mm_genre` (`id`, `pid`, `sorting`, `tstamp`, `icon`, `internal_name`) VALUES(10, 0, 4352, 1367396542, NULL, 'Thriller');
INSERT INTO `mm_genre` (`id`, `pid`, `sorting`, `tstamp`, `icon`, `internal_name`) VALUES(11, 0, 2816, 1367935896, NULL, 'Crime');
INSERT INTO `mm_genre` (`id`, `pid`, `sorting`, `tstamp`, `icon`, `internal_name`) VALUES(12, 0, 2048, 1367935880, NULL, 'Historical');
INSERT INTO `mm_genre` (`id`, `pid`, `sorting`, `tstamp`, `icon`, `internal_name`) VALUES(15, 0, 2560, 1367935891, NULL, 'War');
INSERT INTO `mm_genre` (`id`, `pid`, `sorting`, `tstamp`, `icon`, `internal_name`) VALUES(17, 0, 3584, 1367396662, NULL, 'Musical');
INSERT INTO `mm_genre` (`id`, `pid`, `sorting`, `tstamp`, `icon`, `internal_name`) VALUES(19, 0, 768, 1367935847, NULL, 'Biographical');
INSERT INTO `mm_genre` (`id`, `pid`, `sorting`, `tstamp`, `icon`, `internal_name`) VALUES(22, 0, 256, 1367935675, NULL, 'Adventure');
INSERT INTO `mm_genre` (`id`, `pid`, `sorting`, `tstamp`, `icon`, `internal_name`) VALUES(24, 0, 128, 1367935646, NULL, 'Romantic');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mm_movies`
--

CREATE TABLE `mm_movies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `releasedate` int(10) DEFAULT NULL,
  `director` varchar(255) NOT NULL DEFAULT '',
  `imdbranking` varchar(255) NOT NULL DEFAULT '',
  `trailer` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `youtube` blob,
  `asin` varchar(255) NOT NULL DEFAULT '',
  `vimeo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Daten für Tabelle `mm_movies`
--

INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(1, 0, 3328, 1367959335, 1016665200, 'Paul W.S. Anderson', '', '1', '1', 0x613a323a7b693a303b733a303a22223b693a313b733a31313a226a6953366774436c72716b223b7d, 'B00363J12Q', '');
INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(4, 0, 2816, 1367960280, 1199142000, 'Christopher Nolan', '9,0', '1', '1', 0x613a323a7b693a303b733a303a22223b693a313b733a31313a22357932737a56694a6c6159223b7d, 'B001G73S2S', '');
INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(3, 0, 3072, 1367959077, 783817200, 'Quentin Tarantino', '9,0', '1', '1', 0x613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d, 'B00004TH46', '');
INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(5, 0, 2560, 1367943712, 1062453600, 'Gore Verbinski', '8,0', '1', '1', 0x613a323a7b693a303b733a303a22223b693a313b733a31313a224b525f39412d6355454a63223b7d, 'B00005JM5E', '');
INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(6, 0, 2304, 1367956531, 929570400, 'Andy Wachowski', '8,7', '1', '1', 0x613a323a7b693a303b733a303a22223b693a313b733a31313a226d38652d4646384d737155223b7d, 'B00000K19E', '');
INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(7, 0, 2048, 1368001478, 1165446000, 'Martin Scorsese', '8.5', '1', '1', 0x613a323a7b693a303b733a303a22223b693a313b733a31313a2253475776776a5a30654463223b7d, 'B000NO1V0G', '');
INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(8, 0, 1792, 1367960054, 817081200, 'David Fincher', '8.7', '1', '1', 0x613a323a7b693a303b733a303a22223b693a313b733a31313a224a345956325f5463436f45223b7d, 'B00011CZRE', '');
INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(9, 0, 1536, 1367955612, 1335391200, 'Joss Whedon', '8.3', '1', '1', 0x613a323a7b693a303b733a303a22223b693a313b733a31313a2231685070473473332d4f34223b7d, 'B007SVESDO', '');
INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(10, 0, 1280, 1367954602, 1327532400, '', '7.9', '1', '1', 0x613a323a7b693a303b733a303a22223b693a313b733a31313a22726758724848656153684d223b7d, 'B0073ZZE42', '');
INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(11, 0, 1024, 1367955198, 1209592800, 'Jon Favreau', '7,9', '1', '1', 0x613a323a7b693a303b733a303a22223b693a313b733a31313a223868596c42333861734459223b7d, 'B00189AYJE', '');
INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(12, 0, 768, 1367954565, 1358377200, '', '8.6', '1', '1', 0x613a323a7b693a303b733a303a22223b693a313b733a31313a226555644d39767243626f77223b7d, 'B00APVVZBM', '');
INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(13, 0, 512, 1367958062, 1303941600, 'Justin Lin', '7,3', '', '1', NULL, 'B004TECRFE', '');
INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(14, 0, 256, 1367955459, 1206572400, 'Doug Liman', '5.9', '1', '1', 0x613a323a7b693a303b733a303a22223b693a313b733a31313a22386a7737524a714d684f55223b7d, 'B001AC6SLM', '');
INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(15, 0, 256, 1367958342, 1200524400, 'Richard LaGravenese', '6,9', '', '1', NULL, 'B00194WZN6', '');
INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(16, 0, 128, 1367916864, 1200524400, 'Richard LaGravenese', '6,9', '', '', NULL, '00000000000', '');
INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(20, 0, 8, 1367955119, 1316642400, 'Tim Fehlbaum', '5,9', '1', '1', 0x613a323a7b693a303b733a303a22223b693a313b733a31313a22773530754b68444e556c63223b7d, 'B006LLTYJA', '');
INSERT INTO `mm_movies` (`id`, `pid`, `sorting`, `tstamp`, `releasedate`, `director`, `imdbranking`, `trailer`, `published`, `youtube`, `asin`, `vimeo`) VALUES(21, 0, 4, 1367925610, 748130400, 'Nora Ephron', '6,7', '', '', NULL, 'B00004RYBP', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_article`
--

CREATE TABLE IF NOT EXISTS `tl_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varbinary(128) NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `inColumn` varchar(32) NOT NULL DEFAULT '',
  `keywords` text,
  `showTeaser` char(1) NOT NULL DEFAULT '',
  `teaserCssID` varchar(255) NOT NULL DEFAULT '',
  `teaser` text,
  `printable` varchar(255) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `space` varchar(64) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Daten für Tabelle `tl_article`
--

INSERT INTO `tl_article` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `author`, `inColumn`, `keywords`, `showTeaser`, `teaserCssID`, `teaser`, `printable`, `cssID`, `space`, `published`, `start`, `stop`) VALUES(8, 11, 128, 1367804056, 'And show me', 'and-show-me', 1, 'main', NULL, '', '', NULL, '', '', '', '1', '', '');
INSERT INTO `tl_article` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `author`, `inColumn`, `keywords`, `showTeaser`, `teaserCssID`, `teaser`, `printable`, `cssID`, `space`, `published`, `start`, `stop`) VALUES(2, 3, 128, 1367195157, 'Index', 'index-2', 1, 'main', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '');
INSERT INTO `tl_article` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `author`, `inColumn`, `keywords`, `showTeaser`, `teaserCssID`, `teaser`, `printable`, `cssID`, `space`, `published`, `start`, `stop`) VALUES(7, 3, 256, 1367272282, 'Sidebar', 'sidebar', 2, 'left', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '');
INSERT INTO `tl_article` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `author`, `inColumn`, `keywords`, `showTeaser`, `teaserCssID`, `teaser`, `printable`, `cssID`, `space`, `published`, `start`, `stop`) VALUES(11, 11, 256, 1367855786, 'Sidebar', 'sidebar-11', 2, 'left', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '');
INSERT INTO `tl_article` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `author`, `inColumn`, `keywords`, `showTeaser`, `teaserCssID`, `teaser`, `printable`, `cssID`, `space`, `published`, `start`, `stop`) VALUES(10, 3, 192, 1367855756, 'Filter', 'filter', 2, 'left', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '');
INSERT INTO `tl_article` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `author`, `inColumn`, `keywords`, `showTeaser`, `teaserCssID`, `teaser`, `printable`, `cssID`, `space`, `published`, `start`, `stop`) VALUES(12, 12, 128, 1367911189, 'And filter me', 'and-filter-me-12', 2, 'main', NULL, '', '', NULL, '', '', '', '1', '', '');
INSERT INTO `tl_article` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `author`, `inColumn`, `keywords`, `showTeaser`, `teaserCssID`, `teaser`, `printable`, `cssID`, `space`, `published`, `start`, `stop`) VALUES(13, 12, 256, 1367914234, 'Sidebar', 'sidebar-13', 2, 'left', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '');
INSERT INTO `tl_article` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `author`, `inColumn`, `keywords`, `showTeaser`, `teaserCssID`, `teaser`, `printable`, `cssID`, `space`, `published`, `start`, `stop`) VALUES(15, 11, 192, 1367914278, 'Meta', 'meta', 2, 'left', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '');
INSERT INTO `tl_article` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `author`, `inColumn`, `keywords`, `showTeaser`, `teaserCssID`, `teaser`, `printable`, `cssID`, `space`, `published`, `start`, `stop`) VALUES(16, 12, 192, 1367916452, 'Filter', 'filter-16', 2, 'left', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_calendar`
--

CREATE TABLE IF NOT EXISTS `tl_calendar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `allowComments` char(1) NOT NULL DEFAULT '',
  `notify` varchar(32) NOT NULL DEFAULT '',
  `sortOrder` varchar(32) NOT NULL DEFAULT '',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moderate` char(1) NOT NULL DEFAULT '',
  `bbcode` char(1) NOT NULL DEFAULT '',
  `requireLogin` char(1) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `makeFeed` char(1) NOT NULL DEFAULT '',
  `format` varchar(32) NOT NULL DEFAULT '',
  `language` varchar(32) NOT NULL DEFAULT '',
  `source` varchar(32) NOT NULL DEFAULT '',
  `maxItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `feedBase` varchar(255) NOT NULL DEFAULT '',
  `alias` varbinary(128) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_calendar`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_calendar_events`
--

CREATE TABLE IF NOT EXISTS `tl_calendar_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varbinary(128) NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `addTime` char(1) NOT NULL DEFAULT '',
  `startTime` int(10) unsigned DEFAULT NULL,
  `endTime` int(10) unsigned DEFAULT NULL,
  `startDate` int(10) unsigned DEFAULT NULL,
  `endDate` int(10) unsigned DEFAULT NULL,
  `teaser` text,
  `details` mediumtext,
  `addImage` char(1) NOT NULL DEFAULT '',
  `singleSRC` varchar(255) NOT NULL DEFAULT '',
  `alt` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(255) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(32) NOT NULL DEFAULT '',
  `recurring` char(1) NOT NULL DEFAULT '',
  `repeatEach` varchar(64) NOT NULL DEFAULT '',
  `repeatEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `recurrences` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addEnclosure` char(1) NOT NULL DEFAULT '',
  `enclosure` blob,
  `source` varchar(32) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `articleId` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(255) NOT NULL DEFAULT '',
  `noComments` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_calendar_events`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_comments`
--

CREATE TABLE IF NOT EXISTS `tl_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) NOT NULL DEFAULT '',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `website` varchar(128) NOT NULL DEFAULT '',
  `comment` text,
  `addReply` char(1) NOT NULL DEFAULT '',
  `reply` text,
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `published` char(1) NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `source` (`source`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_comments`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_content`
--

CREATE TABLE IF NOT EXISTS `tl_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `invisible` char(1) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `text` mediumtext,
  `addImage` char(1) NOT NULL DEFAULT '',
  `singleSRC` varchar(255) NOT NULL DEFAULT '',
  `alt` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(255) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(32) NOT NULL DEFAULT '',
  `html` mediumtext,
  `listtype` varchar(32) NOT NULL DEFAULT '',
  `listitems` blob,
  `tableitems` mediumblob,
  `summary` varchar(255) NOT NULL DEFAULT '',
  `thead` char(1) NOT NULL DEFAULT '',
  `tfoot` char(1) NOT NULL DEFAULT '',
  `tleft` char(1) NOT NULL DEFAULT '',
  `sortable` char(1) NOT NULL DEFAULT '',
  `sortIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sortOrder` varchar(32) NOT NULL DEFAULT '',
  `mooType` varchar(32) NOT NULL DEFAULT '',
  `mooHeadline` varchar(255) NOT NULL DEFAULT '',
  `mooStyle` varchar(255) NOT NULL DEFAULT '',
  `mooClasses` varchar(255) NOT NULL DEFAULT '',
  `shClass` varchar(255) NOT NULL DEFAULT '',
  `highlight` varchar(32) NOT NULL DEFAULT '',
  `code` text,
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `linkTitle` varchar(255) NOT NULL DEFAULT '',
  `embed` varchar(255) NOT NULL DEFAULT '',
  `rel` varchar(64) NOT NULL DEFAULT '',
  `useImage` char(1) NOT NULL DEFAULT '',
  `multiSRC` blob,
  `useHomeDir` char(1) NOT NULL DEFAULT '',
  `perRow` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `numberOfItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sortBy` varchar(32) NOT NULL DEFAULT '',
  `galleryTpl` varchar(64) NOT NULL DEFAULT '',
  `cteAlias` int(10) unsigned NOT NULL DEFAULT '0',
  `articleAlias` int(10) unsigned NOT NULL DEFAULT '0',
  `article` int(10) unsigned NOT NULL DEFAULT '0',
  `form` int(10) unsigned NOT NULL DEFAULT '0',
  `module` int(10) unsigned NOT NULL DEFAULT '0',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `space` varchar(64) NOT NULL DEFAULT '',
  `com_order` varchar(32) NOT NULL DEFAULT '',
  `com_perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `com_moderate` char(1) NOT NULL DEFAULT '',
  `com_bbcode` char(1) NOT NULL DEFAULT '',
  `com_requireLogin` char(1) NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) NOT NULL DEFAULT '',
  `com_template` varchar(32) NOT NULL DEFAULT '',
  `metamodel` int(10) unsigned NOT NULL DEFAULT '0',
  `metamodel_layout` varchar(64) NOT NULL DEFAULT '',
  `metamodel_use_limit` char(1) NOT NULL DEFAULT '',
  `metamodel_limit` smallint(5) NOT NULL DEFAULT '0',
  `metamodel_offset` smallint(5) NOT NULL DEFAULT '0',
  `metamodel_sortby` varchar(64) NOT NULL DEFAULT '',
  `metamodel_sortby_direction` varchar(4) NOT NULL DEFAULT '',
  `metamodel_filtering` int(10) NOT NULL DEFAULT '0',
  `metamodel_rendersettings` int(10) NOT NULL DEFAULT '0',
  `metamodel_noparsing` char(1) NOT NULL DEFAULT '',
  `metamodel_filterparams` longblob,
  `metamodel_fef_autosubmit` char(1) NOT NULL DEFAULT '',
  `metamodel_fef_params` blob,
  `metamodel_fef_template` varchar(64) NOT NULL DEFAULT '',
  `metamodel_jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `metamodel_donotindex` char(1) NOT NULL DEFAULT '',
  `metamodel_fef_hideclearfilter` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Daten für Tabelle `tl_content`
--

INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(7, 7, 128, 1367272431, '', 'headline', 'a:2:{s:4:"unit";s:2:"h3";s:5:"value";s:5:"About";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(8, 7, 256, 1367272595, '', 'headline', 'a:2:{s:4:"unit";s:2:"h3";s:5:"value";s:5:"Links";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(9, 7, 192, 1367272874, '', 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', '<p>Metamodels are the replacement for the famous catalog extension for <span>Contao Open Source CMS</span> with focus on flexibility and extendability.</p>\n<p><a href="../" target="_blank">More information</a></p>', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(10, 7, 384, 1367273524, '', 'list', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, 'unordered', 0x613a333a7b693a303b733a36383a223c6120687265663d2268747470733a2f2f747769747465722e636f6d2f4d6574614d6f64656c7322207461726765743d225f626c616e6b223e547769747465723c2f613e223b693a313b733a37323a223c6120687265663d22687474703a2f2f64652e636f6e74616f77696b692e6f72672f4d6574614d6f64656c7322207461726765743d225f626c616e6b223e4d616e75616c3c2f613e223b693a323b733a36363a223c6120687265663d2268747470733a2f2f6769746875622e636f6d2f4d6574614d6f64656c7322207461726765743d225f626c616e6b223e4769746875623c2f613e223b7d, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:4:"data";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(11, 7, 512, 1367273567, '', 'list', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, 'unordered', 0x613a323a7b693a303b733a37323a223c6120687265663d22687474703a2f2f6e6f772e6d6574616d6f64656c2e6d652f656e2f636f6e7461637422207461726765743d225f626c616e6b223e436f6e746163743c2f613e223b693a313b733a38383a223c6120687265663d22687474703a2f2f6e6f772e6d6574616d6f64656c2e6d652f656e2f646174612d70726f74656374696f6e22207461726765743d225f626c616e6b223e446174612070726f74656374696f6e3c2f613e223b7d, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:4:"data";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(44, 13, 256, 1367914231, '', 'headline', 'a:2:{s:4:"unit";s:2:"h3";s:5:"value";s:5:"Links";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(13, 2, 128, 1368286033, '', 'module', '', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 7, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:4:"list";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(45, 13, 384, 1367914231, '', 'list', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, 'unordered', 0x613a333a7b693a303b733a36383a223c6120687265663d2268747470733a2f2f747769747465722e636f6d2f4d6574614d6f64656c7322207461726765743d225f626c616e6b223e547769747465723c2f613e223b693a313b733a37323a223c6120687265663d22687474703a2f2f64652e636f6e74616f77696b692e6f72672f4d6574614d6f64656c7322207461726765743d225f626c616e6b223e4d616e75616c3c2f613e223b693a323b733a36363a223c6120687265663d2268747470733a2f2f6769746875622e636f6d2f4d6574614d6f64656c7322207461726765743d225f626c616e6b223e4769746875623c2f613e223b7d, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:4:"data";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(16, 8, 128, 1368286106, '', 'module', '', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 9, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:6:"detail";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(35, 11, 512, 1367855782, '', 'list', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, 'unordered', 0x613a323a7b693a303b733a37323a223c6120687265663d22687474703a2f2f6e6f772e6d6574616d6f64656c2e6d652f656e2f636f6e7461637422207461726765743d225f626c616e6b223e436f6e746163743c2f613e223b693a313b733a38383a223c6120687265663d22687474703a2f2f6e6f772e6d6574616d6f64656c2e6d652f656e2f646174612d70726f74656374696f6e22207461726765743d225f626c616e6b223e446174612070726f74656374696f6e3c2f613e223b7d, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:4:"data";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(34, 11, 384, 1367855782, '', 'list', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, 'unordered', 0x613a333a7b693a303b733a36383a223c6120687265663d2268747470733a2f2f747769747465722e636f6d2f4d6574614d6f64656c7322207461726765743d225f626c616e6b223e547769747465723c2f613e223b693a313b733a37323a223c6120687265663d22687474703a2f2f64652e636f6e74616f77696b692e6f72672f4d6574614d6f64656c7322207461726765743d225f626c616e6b223e4d616e75616c3c2f613e223b693a323b733a36363a223c6120687265663d2268747470733a2f2f6769746875622e636f6d2f4d6574614d6f64656c7322207461726765743d225f626c616e6b223e4769746875623c2f613e223b7d, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:4:"data";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(33, 11, 256, 1367855782, '', 'headline', 'a:2:{s:4:"unit";s:2:"h3";s:5:"value";s:5:"Links";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(31, 11, 128, 1367855782, '', 'headline', 'a:2:{s:4:"unit";s:2:"h3";s:5:"value";s:5:"About";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(32, 11, 192, 1367855782, '', 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', '<p>Metamodels are the replacement for the famous catalog extension for <span>Contao Open Source CMS</span> with focus on flexibility and extendability.</p>\n<p><a href="../" target="_blank">More information</a></p>', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(24, 10, 64, 1367855750, '', 'headline', 'a:2:{s:4:"unit";s:2:"h3";s:5:"value";s:5:"Genre";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:13:"iconset genre";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(25, 10, 96, 1367855750, '', 'module', '', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 8, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(42, 13, 128, 1367914231, '', 'headline', 'a:2:{s:4:"unit";s:2:"h3";s:5:"value";s:5:"About";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(43, 13, 192, 1367914231, '', 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', '<p>Metamodels are the replacement for the famous catalog extension for <span>Contao Open Source CMS</span> with focus on flexibility and extendability.</p>\n<p><a href="../" target="_blank">More information</a></p>', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(50, 15, 96, 1367914253, '', 'module', '', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 10, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(63, 15, 32, 1367943414, '', 'hyperlink', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '{{link_url::3}}', '', 'Back to overview', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(49, 15, 64, 1367914253, '', 'headline', 'a:2:{s:4:"unit";s:2:"h3";s:5:"value";s:17:"Meta informations";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(38, 12, 128, 1368293545, '', 'metamodel_content', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 7, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:4:"list";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 3, 'ce_metamodel_list_with_filter_headline', '', 0, 0, 'rating', 'DESC', 5, 7, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(46, 13, 512, 1367914231, '', 'list', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, 'unordered', 0x613a323a7b693a303b733a37323a223c6120687265663d22687474703a2f2f6e6f772e6d6574616d6f64656c2e6d652f656e2f636f6e7461637422207461726765743d225f626c616e6b223e436f6e746163743c2f613e223b693a313b733a38383a223c6120687265663d22687474703a2f2f6e6f772e6d6574616d6f64656c2e6d652f656e2f646174612d70726f74656374696f6e22207461726765743d225f626c616e6b223e446174612070726f74656374696f6e3c2f613e223b7d, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:4:"data";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(65, 16, 480, 1367964264, '', 'module', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 14, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_clearall', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(61, 16, 352, 1367916450, '', 'module', '', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 12, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(60, 16, 224, 1367916450, '', 'headline', 'a:2:{s:4:"unit";s:2:"h3";s:5:"value";s:8:"Director";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(64, 16, 32, 1367943403, '', 'hyperlink', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '{{link_url::3}}', '', 'Back to overview', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(62, 10, 224, 1367918763, '', 'hyperlink', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '{{link_url::12}}', '', 'More filter', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(58, 16, 64, 1367916450, '', 'headline', 'a:2:{s:4:"unit";s:2:"h3";s:5:"value";s:5:"Genre";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:13:"iconset genre";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');
INSERT INTO `tl_content` (`id`, `pid`, `sorting`, `tstamp`, `invisible`, `type`, `headline`, `text`, `addImage`, `singleSRC`, `alt`, `title`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooType`, `mooHeadline`, `mooStyle`, `mooClasses`, `shClass`, `highlight`, `code`, `url`, `target`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `galleryTpl`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `space`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(59, 16, 96, 1367916450, '', 'module', '', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'start', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', 4, 0, 0, '', '', 0, 0, 0, 0, 8, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'ascending', 0, '', '', '', '', 'com_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_default', 0, '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_faq`
--

CREATE TABLE IF NOT EXISTS `tl_faq` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `question` varchar(255) NOT NULL DEFAULT '',
  `alias` varbinary(128) NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `answer` text,
  `addImage` char(1) NOT NULL DEFAULT '',
  `singleSRC` varchar(255) NOT NULL DEFAULT '',
  `alt` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(255) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(32) NOT NULL DEFAULT '',
  `addEnclosure` char(1) NOT NULL DEFAULT '',
  `enclosure` blob,
  `noComments` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_faq`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_faq_category`
--

CREATE TABLE IF NOT EXISTS `tl_faq_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `allowComments` char(1) NOT NULL DEFAULT '',
  `notify` varchar(32) NOT NULL DEFAULT '',
  `sortOrder` varchar(32) NOT NULL DEFAULT '',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moderate` char(1) NOT NULL DEFAULT '',
  `bbcode` char(1) NOT NULL DEFAULT '',
  `requireLogin` char(1) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_faq_category`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_form`
--

CREATE TABLE IF NOT EXISTS `tl_form` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varbinary(128) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `sendViaEmail` char(1) NOT NULL DEFAULT '',
  `recipient` text,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `format` varchar(32) NOT NULL DEFAULT '',
  `skipEmpty` char(1) NOT NULL DEFAULT '',
  `storeValues` char(1) NOT NULL DEFAULT '',
  `targetTable` varchar(64) NOT NULL DEFAULT '',
  `method` varchar(12) NOT NULL DEFAULT '',
  `attributes` varchar(255) NOT NULL DEFAULT '',
  `formID` varchar(64) NOT NULL DEFAULT '',
  `tableless` char(1) NOT NULL DEFAULT '',
  `allowTags` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_form`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_form_field`
--

CREATE TABLE IF NOT EXISTS `tl_form_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `invisible` char(1) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `text` text,
  `html` text,
  `options` blob,
  `mandatory` char(1) NOT NULL DEFAULT '',
  `rgxp` varchar(32) NOT NULL DEFAULT '',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `size` varchar(255) NOT NULL DEFAULT '',
  `fSize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `multiple` char(1) NOT NULL DEFAULT '',
  `mSize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `extensions` varchar(255) NOT NULL DEFAULT '',
  `storeFile` char(1) NOT NULL DEFAULT '',
  `uploadFolder` varchar(255) NOT NULL DEFAULT '',
  `useHomeDir` char(1) NOT NULL DEFAULT '',
  `doNotOverwrite` char(1) NOT NULL DEFAULT '',
  `fsType` varchar(32) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `placeholder` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(255) NOT NULL DEFAULT '',
  `accesskey` char(1) NOT NULL DEFAULT '',
  `tabindex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addSubmit` char(1) NOT NULL DEFAULT '',
  `slabel` varchar(255) NOT NULL DEFAULT '',
  `imageSubmit` char(1) NOT NULL DEFAULT '',
  `singleSRC` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_form_field`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_layout`
--

CREATE TABLE IF NOT EXISTS `tl_layout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `fallback` char(1) NOT NULL DEFAULT '',
  `header` char(1) NOT NULL DEFAULT '',
  `headerHeight` varchar(255) NOT NULL DEFAULT '',
  `footer` char(1) NOT NULL DEFAULT '',
  `footerHeight` varchar(255) NOT NULL DEFAULT '',
  `cols` varchar(32) NOT NULL DEFAULT '',
  `widthLeft` varchar(255) NOT NULL DEFAULT '',
  `widthRight` varchar(255) NOT NULL DEFAULT '',
  `sections` blob,
  `sPosition` varchar(32) NOT NULL DEFAULT '',
  `stylesheet` blob,
  `skipTinymce` char(1) NOT NULL DEFAULT '',
  `webfonts` varchar(255) NOT NULL DEFAULT '',
  `newsfeeds` blob,
  `calendarfeeds` blob,
  `modules` blob,
  `template` varchar(64) NOT NULL DEFAULT '',
  `skipFramework` char(1) NOT NULL DEFAULT '',
  `doctype` varchar(32) NOT NULL DEFAULT '',
  `mooSource` varchar(16) NOT NULL DEFAULT '',
  `cssClass` varchar(255) NOT NULL DEFAULT '',
  `onload` varchar(255) NOT NULL DEFAULT '',
  `head` text,
  `mootools` text,
  `script` text,
  `static` char(1) NOT NULL DEFAULT '',
  `width` varchar(255) NOT NULL DEFAULT '',
  `align` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `tl_layout`
--

INSERT INTO `tl_layout` (`id`, `pid`, `tstamp`, `name`, `fallback`, `header`, `headerHeight`, `footer`, `footerHeight`, `cols`, `widthLeft`, `widthRight`, `sections`, `sPosition`, `stylesheet`, `skipTinymce`, `webfonts`, `newsfeeds`, `calendarfeeds`, `modules`, `template`, `skipFramework`, `doctype`, `mooSource`, `cssClass`, `onload`, `head`, `mootools`, `script`, `static`, `width`, `align`) VALUES(1, 1, 1368303207, 'Standard', '1', '1', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '1', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '2cll', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '', '', 'main', '', '1', '', '', '', 0x613a343a7b693a303b613a323a7b733a333a226d6f64223b733a313a2235223b733a333a22636f6c223b733a363a22686561646572223b7d693a313b613a323a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b7d693a323b613a323a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b7d693a333b613a323a7b733a333a226d6f64223b733a313a2236223b733a333a22636f6c223b733a363a22666f6f746572223b7d7d, 'fe_page', '', 'html5', 'moo_local', '', '', '<link rel="stylesheet" href="tl_files/standard/layout/css/reset.css" />\n<link rel="stylesheet" href="tl_files/standard/layout/css/normalize.css" />\n<link rel="stylesheet" href="tl_files/standard/layout/css/contao.css" />\n<link rel="stylesheet" href="tl_files/standard/layout/css/forms.css" />\n<link rel="stylesheet" href="tl_files/standard/layout/fonts/open-sans/stylesheet.css" />\n<link rel="stylesheet" href="tl_files/standard/layout/css/style.css" />\n<link rel="apple-touch-icon-precomposed" href="tl_files/standard/apple-touch-icon-precomposed.png" />\n<link rel="icon" type="image/vnd.microsoft.icon" href="tl_files/standard/favicon.ico" />\n<link rel="shortcut icon" type="image/vnd.microsoft.icon" href="tl_files/standard/favicon.ico" />', '', '', '', '', 'center');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_lock`
--

CREATE TABLE IF NOT EXISTS `tl_lock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `tl_lock`
--

INSERT INTO `tl_lock` (`id`, `name`, `tstamp`) VALUES(1, 'cron', 1368303613);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_log`
--

CREATE TABLE IF NOT EXISTS `tl_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `text` text,
  `func` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `browser` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_log`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_member`
--

CREATE TABLE IF NOT EXISTS `tl_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `dateOfBirth` varchar(11) NOT NULL DEFAULT '',
  `gender` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `postal` varchar(32) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(64) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `phone` varchar(64) NOT NULL DEFAULT '',
  `mobile` varchar(64) NOT NULL DEFAULT '',
  `fax` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `website` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(2) NOT NULL DEFAULT '',
  `groups` blob,
  `login` char(1) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `assignDir` char(1) NOT NULL DEFAULT '',
  `homeDir` varchar(255) NOT NULL DEFAULT '',
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `loginCount` smallint(5) unsigned NOT NULL DEFAULT '3',
  `locked` int(10) unsigned NOT NULL DEFAULT '0',
  `session` blob,
  `dateAdded` int(10) unsigned NOT NULL DEFAULT '0',
  `currentLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `lastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `autologin` varchar(32) DEFAULT NULL,
  `createdOn` int(10) unsigned NOT NULL DEFAULT '0',
  `newsletter` blob,
  `activation` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `autologin` (`autologin`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_member`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_member_group`
--

CREATE TABLE IF NOT EXISTS `tl_member_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `redirect` char(1) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_member_group`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_metamodel`
--

CREATE TABLE IF NOT EXISTS `tl_metamodel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `tableName` varchar(64) NOT NULL DEFAULT '',
  `mode` int(1) unsigned NOT NULL DEFAULT '1',
  `translated` char(1) NOT NULL DEFAULT '',
  `languages` text,
  `varsupport` char(1) NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tableName` (`tableName`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `tl_metamodel`
--

INSERT INTO `tl_metamodel` (`id`, `tstamp`, `name`, `tableName`, `mode`, `translated`, `languages`, `varsupport`, `sorting`) VALUES(3, 1367274071, 'Movies', 'mm_movies', 1, '1', 'a:2:{s:2:"en";a:1:{s:10:"isfallback";s:1:"1";}s:2:"de";a:1:{s:10:"isfallback";s:0:"";}}', '', 256);
INSERT INTO `tl_metamodel` (`id`, `tstamp`, `name`, `tableName`, `mode`, `translated`, `languages`, `varsupport`, `sorting`) VALUES(4, 1367274368, 'Genre', 'mm_genre', 1, '1', 'a:2:{s:2:"en";a:1:{s:10:"isfallback";s:1:"1";}s:2:"de";a:1:{s:10:"isfallback";s:0:"";}}', '', 512);
INSERT INTO `tl_metamodel` (`id`, `tstamp`, `name`, `tableName`, `mode`, `translated`, `languages`, `varsupport`, `sorting`) VALUES(5, 1367274541, 'Actor', 'mm_actor', 1, '', NULL, '', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_metamodel_attribute`
--

CREATE TABLE IF NOT EXISTS `tl_metamodel_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` text,
  `description` text,
  `colname` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `isvariant` char(1) NOT NULL DEFAULT '',
  `isunique` char(1) NOT NULL DEFAULT '',
  `alias_fields` blob,
  `force_alias` char(1) NOT NULL DEFAULT '',
  `check_publish` char(1) NOT NULL DEFAULT '',
  `file_multiple` char(1) NOT NULL DEFAULT '',
  `file_customFiletree` char(1) NOT NULL DEFAULT '',
  `file_uploadFolder` varchar(255) NOT NULL DEFAULT '',
  `file_validFileTypes` varchar(255) NOT NULL DEFAULT '',
  `file_filesOnly` char(1) NOT NULL DEFAULT '',
  `geoprotection` blob,
  `langcodes` text,
  `select_table` varchar(255) NOT NULL DEFAULT '',
  `select_column` varchar(255) NOT NULL DEFAULT '',
  `select_id` varchar(255) NOT NULL DEFAULT '',
  `select_alias` varchar(255) NOT NULL DEFAULT '',
  `tag_table` varchar(255) NOT NULL DEFAULT '',
  `tag_column` varchar(255) NOT NULL DEFAULT '',
  `tag_id` varchar(255) NOT NULL DEFAULT '',
  `tag_alias` varchar(255) NOT NULL DEFAULT '',
  `tag_sorting` varchar(255) NOT NULL DEFAULT '',
  `talias_fields` blob,
  `force_talias` char(1) NOT NULL DEFAULT '',
  `select_langcolumn` varchar(255) NOT NULL DEFAULT '',
  `tag_langcolumn` varchar(255) NOT NULL DEFAULT '',
  `combinedvalues_fields` blob,
  `combinedvalues_format` text,
  `force_combinedvalues` char(1) NOT NULL DEFAULT '',
  `countries` text,
  `select_sorting` varchar(255) NOT NULL DEFAULT '',
  `select_where` text,
  `tag_where` text,
  `timetype` varchar(64) NOT NULL DEFAULT '',
  `select_srctable` varchar(255) NOT NULL DEFAULT '',
  `select_srcsorting` varchar(255) NOT NULL DEFAULT '',
  `tag_srctable` varchar(255) NOT NULL DEFAULT '',
  `tag_srcsorting` varchar(255) NOT NULL DEFAULT '',
  `rating_max` int(10) NOT NULL DEFAULT '0',
  `rating_half` char(1) NOT NULL DEFAULT '',
  `rating_emtpy` varchar(255) NOT NULL DEFAULT '',
  `rating_full` varchar(255) NOT NULL DEFAULT '',
  `rating_hover` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `colname` (`colname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Daten für Tabelle `tl_metamodel_attribute`
--

INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(25, 3, 1280, 1367360775, 'a:2:{s:2:"en";s:12:"IMDB ranking";s:2:"de";s:12:"IMDB Ranking";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'imdbranking', 'text', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(23, 3, 1792, 1367360356, 'a:2:{s:2:"en";s:8:"Director";s:2:"de";s:9:"Regisseur";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'director', 'text', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(24, 3, 1536, 1367936107, 'a:2:{s:2:"en";s:5:"Actor";s:2:"de";s:12:"Schauspieler";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'actor', 'tags', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', 'mm_actor', 'name', 'id', 'alias', 'surname', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, '', '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(22, 3, 2048, 1367360308, 'a:2:{s:2:"en";s:12:"Release date";s:2:"de";s:17:"Erscheinungsdatum";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'releasedate', 'timestamp', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, 'date', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(19, 5, 3072, 1367358334, 'Name', '', 'name', 'combinedvalues', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', 0x613a323a7b693a303b613a313a7b733a31353a226669656c645f617474726962757465223b733a393a2266697273746e616d65223b7d693a313b613a313a7b733a31353a226669656c645f617474726962757465223b733a373a227375726e616d65223b7d7d, '%s %s', '1', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(20, 5, 3328, 1367935958, 'Alias', '', 'alias', 'alias', '', '1', 0x613a313a7b693a303b613a313a7b733a31353a226669656c645f617474726962757465223b733a343a226e616d65223b7d7d, '1', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(21, 3, 2304, 1367359994, 'a:2:{s:2:"en";s:5:"Title";s:2:"de";s:5:"Titel";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'title', 'translatedtext', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(16, 5, 3840, 1367355788, 'Country', '', 'country', 'country', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', '', '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(17, 5, 4096, 1367355823, 'File', '', 'image', 'file', '', '', NULL, '', '', '', '1', 'tl_files/standard/publisher/images', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(18, 5, 2816, 1367358294, 'Surname', '', 'surname', 'text', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(14, 5, 2560, 1367358254, 'First name', '', 'firstname', 'text', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(15, 5, 3584, 1367355554, 'Birthday', '', 'birthday', 'timestamp', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, 'date', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(13, 4, 4864, 1367354667, 'a:2:{s:2:"en";s:4:"File";s:2:"de";s:5:"Datei";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'icon', 'file', '', '', NULL, '', '', '', '1', 'tl_files/standard/publisher/images/genre', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(11, 4, 4352, 1367348022, 'a:2:{s:2:"en";s:4:"Name";s:2:"de";s:4:"Name";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'name', 'translatedtext', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(12, 4, 4608, 1367434618, 'a:2:{s:2:"en";s:5:"Alias";s:2:"de";s:5:"Alias";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'alias', 'translatedalias', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', 0x613a313a7b693a303b613a313a7b733a31353a226669656c645f617474726962757465223b733a343a226e616d65223b7d7d, '1', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(26, 3, 1024, 1367360843, 'a:2:{s:2:"en";s:11:"Add trailer";s:2:"de";s:19:"Trailer hinzufügen";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'trailer', 'checkbox', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(27, 3, 768, 1367360891, 'a:2:{s:2:"en";s:16:"Published review";s:2:"de";s:23:"Review veröffentlichen";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'published', 'checkbox', '', '', NULL, '', '1', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(28, 3, 512, 1367361372, 'a:2:{s:2:"en";s:15:"Youtube trailer";s:2:"de";s:15:"Youtube Trailer";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'youtube', 'url', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(29, 3, 256, 1367882511, 'a:2:{s:2:"en";s:13:"Vimeo trailer";s:2:"de";s:13:"Vimeo Trailer";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'vimeo', 'text', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(30, 4, 128, 1367396332, 'a:2:{s:2:"en";s:13:"Internal name";s:2:"de";s:13:"Interner Name";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'internal_name', 'text', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', 0x613a313a7b693a303b613a313a7b733a31353a226669656c645f617474726962757465223b733a343a226e616d65223b7d7d, '%s', '1', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(31, 3, 64, 1367362753, 'a:2:{s:2:"en";s:5:"Genre";s:2:"de";s:5:"Genre";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'genre', 'tags', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', 'mm_genre', 'internal_name', 'id', 'internal_name', 'internal_name', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, '', '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(32, 3, 32, 1367620963, 'a:2:{s:2:"en";s:5:"Alias";s:2:"de";s:5:"Alias";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'alias', 'translatedalias', '', '1', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', 0x613a313a7b693a303b613a313a7b733a31353a226669656c645f617474726962757465223b733a353a227469746c65223b7d7d, '1', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(33, 3, 16, 1367433404, 'a:2:{s:2:"en";s:11:"Description";s:2:"de";s:12:"Beschreibung";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'description', 'translatedlongtext', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(34, 3, 2432, 1367884555, 'a:2:{s:2:"en";s:6:"Rating";s:2:"de";s:7:"Wertung";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'rating', 'rating', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 10, '1', '', '', '');
INSERT INTO `tl_metamodel_attribute` (`id`, `pid`, `sorting`, `tstamp`, `name`, `description`, `colname`, `type`, `isvariant`, `isunique`, `alias_fields`, `force_alias`, `check_publish`, `file_multiple`, `file_customFiletree`, `file_uploadFolder`, `file_validFileTypes`, `file_filesOnly`, `geoprotection`, `langcodes`, `select_table`, `select_column`, `select_id`, `select_alias`, `tag_table`, `tag_column`, `tag_id`, `tag_alias`, `tag_sorting`, `talias_fields`, `force_talias`, `select_langcolumn`, `tag_langcolumn`, `combinedvalues_fields`, `combinedvalues_format`, `force_combinedvalues`, `countries`, `select_sorting`, `select_where`, `tag_where`, `timetype`, `select_srctable`, `select_srcsorting`, `tag_srctable`, `tag_srcsorting`, `rating_max`, `rating_half`, `rating_emtpy`, `rating_full`, `rating_hover`) VALUES(35, 3, 2368, 1367874431, 'a:2:{s:2:"en";s:11:"Amazon ASIN";s:2:"de";s:11:"Amazon ASIN";}', 'a:2:{s:2:"en";s:0:"";s:2:"de";s:0:"";}', 'asin', 'text', '', '1', NULL, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '', '', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_metamodel_dca`
--

CREATE TABLE IF NOT EXISTS `tl_metamodel_dca` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `isdefault` char(1) NOT NULL DEFAULT '',
  `rendertype` varchar(10) NOT NULL DEFAULT '',
  `mode` int(4) unsigned NOT NULL DEFAULT '0',
  `flag` int(4) unsigned NOT NULL DEFAULT '0',
  `panelLayout` blob,
  `ptable` varchar(64) NOT NULL DEFAULT '',
  `backendsection` varchar(255) NOT NULL DEFAULT '',
  `backendcaption` text,
  `backendicon` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Daten für Tabelle `tl_metamodel_dca`
--

INSERT INTO `tl_metamodel_dca` (`id`, `pid`, `sorting`, `tstamp`, `name`, `isdefault`, `rendertype`, `mode`, `flag`, `panelLayout`, `ptable`, `backendsection`, `backendcaption`, `backendicon`) VALUES(3, 3, 256, 1368292983, 'Default', '1', 'standalone', 2, 1, 0x736f72742c6c696d6974, '', 'metamodels_boilerplate', 'a:1:{i:0;a:3:{s:8:"langcode";s:2:"en";s:5:"label";s:6:"Movies";s:11:"description";s:0:"";}}', 'tl_files/standard/layout/images/imdb.png');
INSERT INTO `tl_metamodel_dca` (`id`, `pid`, `sorting`, `tstamp`, `name`, `isdefault`, `rendertype`, `mode`, `flag`, `panelLayout`, `ptable`, `backendsection`, `backendcaption`, `backendicon`) VALUES(4, 4, 128, 1368292965, 'Default', '1', 'standalone', 2, 2, 0x6c696d69742c736f7274, '', 'metamodels_boilerplate', 'a:1:{i:0;a:3:{s:8:"langcode";s:2:"en";s:5:"label";s:5:"Genre";s:11:"description";s:0:"";}}', 'tl_files/standard/layout/images/genre.png');
INSERT INTO `tl_metamodel_dca` (`id`, `pid`, `sorting`, `tstamp`, `name`, `isdefault`, `rendertype`, `mode`, `flag`, `panelLayout`, `ptable`, `backendsection`, `backendcaption`, `backendicon`) VALUES(5, 5, 64, 1368292974, 'Default', '1', 'standalone', 2, 1, 0x6c696d69742c736f7274, '', 'metamodels_boilerplate', 'a:1:{i:0;a:3:{s:8:"langcode";s:2:"en";s:5:"label";s:5:"Actor";s:11:"description";s:0:"";}}', 'tl_files/standard/layout/images/star.png');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_metamodel_dcasetting`
--

CREATE TABLE IF NOT EXISTS `tl_metamodel_dcasetting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `dcatype` varchar(10) NOT NULL DEFAULT '',
  `legendtitle` varchar(255) NOT NULL DEFAULT '',
  `legendhide` varchar(5) NOT NULL DEFAULT '',
  `attr_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tl_class` varchar(64) NOT NULL DEFAULT '',
  `filterable` char(1) NOT NULL DEFAULT '',
  `sortable` char(1) NOT NULL DEFAULT '',
  `searchable` char(1) NOT NULL DEFAULT '',
  `flag` int(4) unsigned NOT NULL DEFAULT '0',
  `mandatory` char(1) NOT NULL DEFAULT '',
  `allowHtml` char(1) NOT NULL DEFAULT '',
  `preserveTags` char(1) NOT NULL DEFAULT '',
  `decodeEntities` char(1) NOT NULL DEFAULT '',
  `rte` varchar(64) NOT NULL DEFAULT '',
  `rows` int(10) NOT NULL DEFAULT '0',
  `cols` int(10) NOT NULL DEFAULT '0',
  `trailingSlash` char(1) NOT NULL DEFAULT '2',
  `spaceToUnderscore` char(1) NOT NULL DEFAULT '',
  `includeBlankOption` char(1) NOT NULL DEFAULT '',
  `subpalette` int(10) NOT NULL DEFAULT '0',
  `chosen` char(1) NOT NULL DEFAULT '',
  `submitOnChange` char(1) NOT NULL DEFAULT '',
  `alwaysSave` char(1) NOT NULL DEFAULT '',
  `select_as_radio` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Daten für Tabelle `tl_metamodel_dcasetting`
--

INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(16, 5, 1536, 1367358621, 'attribute', '', '', 14, 'w50', '', '', '', 0, '1', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(15, 5, 6656, 1367358911, 'attribute', '', '', 17, 'clr', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(14, 5, 3328, 1367358897, 'attribute', '', '', 16, 'w50', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '1', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(13, 4, 2816, 1367349318, 'legend', 'a:2:{s:2:"en";s:16:"General settings";s:2:"de";s:24:"Allgemeine-Einstellungen";}', '', 0, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(11, 4, 3072, 1367433116, 'attribute', '', '', 11, 'w50', '', '1', '', 1, '1', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(12, 4, 4864, 1367349337, 'attribute', '', '', 12, 'w50', '', '', '', 0, '1', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(10, 4, 6912, 1367349366, 'attribute', '', '', 13, 'clr', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(17, 5, 6400, 1367358905, 'attribute', '', '', 15, 'w50', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(18, 5, 2048, 1368282791, 'attribute', '', '', 19, 'w50', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(19, 5, 2304, 1367358748, 'attribute', '', '', 20, 'w50', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(20, 5, 1792, 1368282786, 'attribute', '', '', 18, 'w50', '', '1', '', 0, '1', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(21, 5, 1280, 1367358451, 'legend', 'Personal settings', '', 0, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(22, 5, 2560, 1367358469, 'legend', 'General settings', '', 0, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(23, 4, 6144, 1367362955, 'attribute', '', '', 30, 'long clr', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(24, 3, 3584, 1367433443, 'attribute', '', '', 25, 'w50', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(25, 3, 896, 1367433449, 'attribute', '', '', 23, 'w50', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(26, 3, 5376, 1367362768, 'attribute', '', '', 24, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(27, 3, 1024, 1368001394, 'attribute', '', '', 22, 'w50 wizard', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(28, 3, 512, 1367397666, 'attribute', '', '', 21, 'w50', '', '1', '', 0, '1', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(29, 3, 5888, 1367362768, 'attribute', '', '', 26, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(30, 3, 7424, 1367362768, 'attribute', '', '', 27, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(43, 3, 1216, 1368001416, 'legend', 'a:2:{s:2:"en";s:6:"Rating";s:2:"de";s:7:"Wertung";}', '', 0, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(34, 3, 7680, 1367397208, 'attribute', '', '', 28, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 29, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(33, 3, 5120, 1367362768, 'attribute', '', '', 31, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(36, 3, 7168, 1367397518, 'legend', 'a:2:{s:2:"en";s:15:"Expert settings";s:2:"de";s:22:"Experten-Einstellungen";}', '', 0, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(37, 3, 4608, 1368001439, 'legend', 'a:2:{s:2:"en";s:18:"Categories / Actor";s:2:"de";s:25:"Kategorien / Schauspieler";}', '1', 0, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(38, 3, 5632, 1367397570, 'legend', 'a:2:{s:2:"en";s:7:"Trailer";s:2:"de";s:7:"Trailer";}', '1', 0, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(39, 3, 768, 1367397676, 'attribute', '', '', 32, 'w50', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(40, 3, 1152, 1367433471, 'attribute', '', '', 33, 'clr', '', '', '', 0, '', '', '', '', 'tinyMCE_boilerplate', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(41, 3, 256, 1367433554, 'legend', 'a:2:{s:2:"en";s:7:"Details";s:2:"de";s:7:"Details";}', '', 0, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(42, 3, 3840, 1367874708, 'attribute', '', '', 35, 'w50', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(44, 7, 256, 1368002659, 'attribute', '', '', 25, 'w50', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(45, 7, 224, 1368002643, 'attribute', '', '', 23, 'w50', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(46, 7, 512, 1368002489, 'attribute', '', '', 24, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(47, 7, 240, 1368002650, 'attribute', '', '', 22, 'w50 wizard', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(48, 7, 128, 1368002631, 'attribute', '', '', 21, 'w50', '', '1', '', 0, '1', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(58, 7, 64, 1368002533, 'legend', 'a:2:{s:2:"en";s:7:"Details";s:2:"de";s:7:"Details";}', '', 0, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(60, 7, 448, 1368002607, 'legend', 'a:2:{s:2:"en";s:5:"Actor";s:2:"de";s:12:"Schauspieler";}', '', 0, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(59, 7, 248, 1368002592, 'legend', 'a:2:{s:2:"en";s:6:"Rating";s:2:"de";s:7:"Wertung";}', '', 0, '', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(54, 7, 192, 1368002637, 'attribute', '', '', 32, 'w50', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');
INSERT INTO `tl_metamodel_dcasetting` (`id`, `pid`, `sorting`, `tstamp`, `dcatype`, `legendtitle`, `legendhide`, `attr_id`, `tl_class`, `filterable`, `sortable`, `searchable`, `flag`, `mandatory`, `allowHtml`, `preserveTags`, `decodeEntities`, `rte`, `rows`, `cols`, `trailingSlash`, `spaceToUnderscore`, `includeBlankOption`, `subpalette`, `chosen`, `submitOnChange`, `alwaysSave`, `select_as_radio`) VALUES(57, 7, 384, 1368002663, 'attribute', '', '', 35, 'w50', '', '', '', 0, '', '', '', '', '', 0, 0, '2', '', '', 0, '', '', '', '0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_metamodel_dca_combine`
--

CREATE TABLE IF NOT EXISTS `tl_metamodel_dca_combine` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` int(10) unsigned NOT NULL DEFAULT '0',
  `be_group` int(10) NOT NULL DEFAULT '0',
  `dca_id` int(10) unsigned NOT NULL DEFAULT '0',
  `view_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `fe_group` (`be_group`),
  KEY `be_group` (`be_group`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Daten für Tabelle `tl_metamodel_dca_combine`
--

INSERT INTO `tl_metamodel_dca_combine` (`id`, `pid`, `tstamp`, `sorting`, `fe_group`, `be_group`, `dca_id`, `view_id`) VALUES(1, 4, 1368303373, 128, 0, -1, 4, 5);
INSERT INTO `tl_metamodel_dca_combine` (`id`, `pid`, `tstamp`, `sorting`, `fe_group`, `be_group`, `dca_id`, `view_id`) VALUES(2, 5, 1368303369, 128, 0, -1, 5, 6);
INSERT INTO `tl_metamodel_dca_combine` (`id`, `pid`, `tstamp`, `sorting`, `fe_group`, `be_group`, `dca_id`, `view_id`) VALUES(4, 3, 1368303376, 128, 0, -1, 3, 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_metamodel_filter`
--

CREATE TABLE IF NOT EXISTS `tl_metamodel_filter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Daten für Tabelle `tl_metamodel_filter`
--

INSERT INTO `tl_metamodel_filter` (`id`, `pid`, `tstamp`, `name`) VALUES(5, 3, 1367529976, 'FE Filter');
INSERT INTO `tl_metamodel_filter` (`id`, `pid`, `tstamp`, `name`) VALUES(4, 3, 1367421941, 'Default');
INSERT INTO `tl_metamodel_filter` (`id`, `pid`, `tstamp`, `name`) VALUES(6, 3, 1367804225, 'Detail');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_metamodel_filtersetting`
--

CREATE TABLE IF NOT EXISTS `tl_metamodel_filtersetting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `fid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(64) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT '',
  `attr_id` int(10) unsigned NOT NULL DEFAULT '0',
  `all_langs` char(1) NOT NULL DEFAULT '',
  `allow_empty` char(1) NOT NULL DEFAULT '',
  `stop_after_match` char(1) NOT NULL DEFAULT '',
  `urlparam` varchar(255) NOT NULL DEFAULT '',
  `predef_param` char(1) NOT NULL DEFAULT '',
  `customsql` text,
  `items` text,
  `label` blob,
  `template` varchar(64) NOT NULL DEFAULT '',
  `blankoption` char(1) NOT NULL DEFAULT '1',
  `onlyused` char(1) NOT NULL DEFAULT '0',
  `onlypossible` char(1) NOT NULL DEFAULT '0',
  `check_ignorepublished` char(1) NOT NULL DEFAULT '',
  `gp_attr_id` int(10) unsigned NOT NULL DEFAULT '0',
  `moreequal` char(1) NOT NULL DEFAULT '1',
  `lessequal` char(1) NOT NULL DEFAULT '1',
  `fromfield` char(1) NOT NULL DEFAULT '1',
  `tofield` char(1) NOT NULL DEFAULT '1',
  `attr_id2` int(10) unsigned NOT NULL DEFAULT '0',
  `defaultid` int(10) unsigned NOT NULL DEFAULT '0',
  `useor` char(1) NOT NULL DEFAULT '0',
  `textsearch` varchar(32) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `ynfield` char(1) NOT NULL DEFAULT '1',
  `ynmode` varchar(8) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Daten für Tabelle `tl_metamodel_filtersetting`
--

INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(1, 0, 1361184314, 6656, 1, 'simplelookup', '1', 4, '1', '', '', 'auto_item', '', NULL, NULL, NULL, 'mm_filteritem_default', '', '', '', '', 0, '1', '1', '1', '1', 0, 0, '1', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(2, 0, 1360873349, 5376, 2, 'tags', '1', 7, '', '', '', 'cat', '', NULL, NULL, NULL, 'mm_filteritem_default', '1', '1', '1', '', 0, '1', '1', '1', '1', 0, 0, '1', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(3, 0, 1361867724, 5120, 2, 'checkbox_published', '1', 9, '', '', '', '', '', NULL, NULL, NULL, 'mm_filteritem_default', '1', '1', '1', '', 0, '1', '1', '1', '1', 0, 0, '1', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(4, 0, 1361867746, 4864, 1, 'checkbox_published', '1', 9, '', '', '', '', '', NULL, NULL, NULL, 'mm_filteritem_default', '1', '1', '1', '', 0, '1', '1', '1', '1', 0, 0, '1', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(5, 12, 1366056435, 5632, 3, 'customsql', '1', 0, '', '', '', '', '', 'SELECT id FROM {{table}};', NULL, NULL, 'mm_filteritem_default', '1', '1', '1', '', 0, '1', '1', '1', '1', 0, 0, '1', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(6, 0, 1366055992, 4608, 3, 'conditionor', '1', 0, '', '', '1', '', '', NULL, NULL, NULL, 'mm_filteritem_default', '1', '1', '1', '', 0, '1', '1', '1', '1', 0, 0, '1', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(7, 12, 1366056427, 6912, 3, 'simplelookup', '1', 4, '', '1', '', 'auto_item', '', NULL, NULL, NULL, 'mm_filteritem_default', '1', '1', '1', '', 0, '1', '1', '1', '1', 0, 0, '1', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(8, 0, 1366056071, 4352, 3, 'checkbox_published', '1', 9, '', '', '', '', '', NULL, NULL, NULL, 'mm_filteritem_default', '1', '1', '1', '', 0, '1', '1', '1', '1', 0, 0, '1', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(9, 6, 1366056352, 5888, 3, 'conditionand', '1', 0, '', '', '', '', '', NULL, NULL, NULL, 'mm_filteritem_default', '1', '1', '1', '', 0, '1', '1', '1', '1', 0, 0, '1', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(10, 13, 1366056483, 7168, 3, 'geoprotection', '1', 0, '', '', '', '', '', NULL, NULL, NULL, 'mm_filteritem_default', '1', '1', '1', '', 1, '1', '1', '1', '1', 0, 0, '1', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(11, 9, 1366056396, 7424, 3, 'idlist', '1', 0, '', '', '', '', '', NULL, '0', NULL, 'mm_filteritem_default', '1', '1', '1', '', 0, '1', '1', '1', '1', 0, 0, '1', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(12, 6, 1366056421, 6400, 3, 'conditionand', '1', 0, '', '', '', '', '', NULL, NULL, NULL, 'mm_filteritem_default', '1', '1', '1', '', 0, '1', '1', '1', '1', 0, 0, '1', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(13, 9, 1366056478, 6144, 3, 'conditionor', '1', 0, '', '', '', '', '', NULL, NULL, NULL, 'mm_filteritem_default', '1', '1', '1', '', 0, '1', '1', '1', '1', 0, 0, '1', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(14, 13, 1366056813, 7680, 3, 'checkbox', '1', 10, '', '', '', '', '', NULL, NULL, NULL, 'mm_filteritem_default', '1', '1', '1', '', 0, '1', '1', '1', '1', 0, 0, '1', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(15, 0, 1367421999, 4096, 4, 'checkbox_published', '1', 27, '', '', '', '', '', NULL, NULL, NULL, '', '1', '0', '0', '', 0, '1', '1', '1', '1', 0, 0, '0', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(17, 5, 1367530007, 3840, 5, 'tags', '1', 31, '', '', '', 'auto_item', '', NULL, NULL, '', 'mm_filteritem_default', '1', '1', '', '', 0, '1', '1', '1', '1', 0, 0, '1', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(18, 0, 1368111579, 384, 5, 'tags', '1', 31, '', '', '', 'genre', '', NULL, NULL, '', 'mm_filteritem_default', '1', '1', '1', '', 0, '1', '1', '1', '1', 0, 0, '', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(20, 5, 1367641526, 3328, 5, 'customsql', '', 0, '', '', '', '', '', 'SELECT id FROM {{table}}', NULL, NULL, '', '1', '0', '0', '', 0, '1', '1', '1', '1', 0, 0, '0', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(21, 0, 1368111646, 448, 5, 'checkbox_published', '1', 27, '', '', '', '', '', 'SELECT * FROM {{table}} WHERE published=1', NULL, NULL, '', '1', '0', '0', '', 0, '1', '1', '1', '1', 0, 0, '0', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(22, 0, 1367804255, 2304, 6, 'simplelookup', '1', 32, '', '', '', 'auto_item', '', NULL, NULL, '', 'mm_filteritem_default', '', '', '', '', 0, '1', '1', '1', '1', 0, 0, '0', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(23, 0, 1367911419, 512, 7, 'conditionor', '1', 0, '', '', '', '', '', NULL, NULL, NULL, '', '1', '0', '0', '', 0, '1', '1', '1', '1', 0, 0, '0', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(24, 7, 1367911393, 2048, 7, 'tags', '1', 31, '', '', '', 'genre', '', NULL, NULL, '', 'mm_filteritem_default', '1', '', '', '', 0, '1', '1', '1', '1', 0, 0, '1', '', 'Genre Filter', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(25, 7, 1367911431, 1792, 7, 'tags', '1', 31, '', '', '', 'genre', '', NULL, NULL, '', 'mm_filteritem_default', '1', '', '', '', 0, '1', '1', '1', '1', 0, 0, '', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(26, 7, 1367911499, 1536, 7, 'tags', '1', 31, '', '', '', 'genre', '', NULL, NULL, '', 'mm_filteritem_default', '1', '', '', '', 0, '1', '1', '1', '1', 0, 0, '', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(27, 23, 1367911554, 1024, 7, 'tags', '1', 31, '', '', '', 'genre', '', NULL, NULL, '', 'mm_filteritem_default', '1', '', '', '', 0, '1', '1', '1', '1', 0, 0, '1', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(32, 0, 1367915297, 256, 5, 'select', '1', 23, '', '', '', 'directed-by', '', NULL, NULL, '', 'mm_filteritem_radiobuttons', '1', '1', '1', '', 0, '1', '1', '1', '1', 0, 0, '0', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(31, 7, 1367914888, 1280, 7, 'select', '', 23, '', '', '', 'directed-by', '', NULL, NULL, '', 'mm_filteritem_default', '1', '1', '1', '', 0, '1', '1', '1', '1', 0, 0, '0', '', '', '1', 'yes');
INSERT INTO `tl_metamodel_filtersetting` (`id`, `pid`, `tstamp`, `sorting`, `fid`, `type`, `enabled`, `attr_id`, `all_langs`, `allow_empty`, `stop_after_match`, `urlparam`, `predef_param`, `customsql`, `items`, `label`, `template`, `blankoption`, `onlyused`, `onlypossible`, `check_ignorepublished`, `gp_attr_id`, `moreequal`, `lessequal`, `fromfield`, `tofield`, `attr_id2`, `defaultid`, `useor`, `textsearch`, `comment`, `ynfield`, `ynmode`) VALUES(30, 7, 1367912016, 768, 7, 'select', '', 25, '', '', '', '', '', NULL, NULL, '', 'mm_filteritem_default', '', '', '', '', 0, '1', '1', '1', '1', 0, 0, '0', '', 'Demo test.', '1', 'yes');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_metamodel_geoprotection`
--

CREATE TABLE IF NOT EXISTS `tl_metamodel_geoprotection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `attr_id` int(11) unsigned NOT NULL DEFAULT '0',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `countries` text,
  `mode` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `geoid` (`item_id`,`attr_id`),
  KEY `attr_id` (`attr_id`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_metamodel_geoprotection`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_metamodel_rating`
--

CREATE TABLE IF NOT EXISTS `tl_metamodel_rating` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `iid` int(10) unsigned NOT NULL DEFAULT '0',
  `votecount` int(10) unsigned NOT NULL DEFAULT '0',
  `meanvalue` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `all_id` (`mid`,`aid`,`iid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Daten für Tabelle `tl_metamodel_rating`
--

INSERT INTO `tl_metamodel_rating` (`id`, `mid`, `aid`, `iid`, `votecount`, `meanvalue`) VALUES(1, 3, 34, 1, 19, 0.8078947368421);
INSERT INTO `tl_metamodel_rating` (`id`, `mid`, `aid`, `iid`, `votecount`, `meanvalue`) VALUES(2, 3, 34, 5, 3, 0.78333333333333);
INSERT INTO `tl_metamodel_rating` (`id`, `mid`, `aid`, `iid`, `votecount`, `meanvalue`) VALUES(3, 3, 34, 3, 3, 0.71666666666667);
INSERT INTO `tl_metamodel_rating` (`id`, `mid`, `aid`, `iid`, `votecount`, `meanvalue`) VALUES(4, 3, 34, 6, 6, 0.78333333333333);
INSERT INTO `tl_metamodel_rating` (`id`, `mid`, `aid`, `iid`, `votecount`, `meanvalue`) VALUES(5, 3, 34, 8, 3, 0.66666666666667);
INSERT INTO `tl_metamodel_rating` (`id`, `mid`, `aid`, `iid`, `votecount`, `meanvalue`) VALUES(6, 3, 34, 13, 3, 0.25);
INSERT INTO `tl_metamodel_rating` (`id`, `mid`, `aid`, `iid`, `votecount`, `meanvalue`) VALUES(7, 3, 34, 4, 5, 0.71);
INSERT INTO `tl_metamodel_rating` (`id`, `mid`, `aid`, `iid`, `votecount`, `meanvalue`) VALUES(8, 3, 34, 9, 3, 0.76666666666667);
INSERT INTO `tl_metamodel_rating` (`id`, `mid`, `aid`, `iid`, `votecount`, `meanvalue`) VALUES(9, 3, 34, 14, 3, 0.66666666666667);
INSERT INTO `tl_metamodel_rating` (`id`, `mid`, `aid`, `iid`, `votecount`, `meanvalue`) VALUES(10, 3, 34, 11, 6, 0.73333333333333);
INSERT INTO `tl_metamodel_rating` (`id`, `mid`, `aid`, `iid`, `votecount`, `meanvalue`) VALUES(11, 3, 34, 7, 1, 0.5);
INSERT INTO `tl_metamodel_rating` (`id`, `mid`, `aid`, `iid`, `votecount`, `meanvalue`) VALUES(12, 3, 34, 15, 2, 0.15);
INSERT INTO `tl_metamodel_rating` (`id`, `mid`, `aid`, `iid`, `votecount`, `meanvalue`) VALUES(13, 3, 34, 12, 12, 0.89166666666667);
INSERT INTO `tl_metamodel_rating` (`id`, `mid`, `aid`, `iid`, `votecount`, `meanvalue`) VALUES(14, 3, 34, 10, 4, 0.675);
INSERT INTO `tl_metamodel_rating` (`id`, `mid`, `aid`, `iid`, `votecount`, `meanvalue`) VALUES(15, 3, 34, 20, 1, 0.7);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_metamodel_rendersetting`
--

CREATE TABLE IF NOT EXISTS `tl_metamodel_rendersetting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `attr_id` int(10) unsigned NOT NULL DEFAULT '0',
  `template` varchar(64) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT '',
  `file_sortBy` varchar(32) NOT NULL DEFAULT '',
  `file_showLink` char(1) NOT NULL DEFAULT '',
  `file_showImage` char(1) NOT NULL DEFAULT '',
  `file_imageSize` varchar(255) NOT NULL DEFAULT '',
  `rating_disabled` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- Daten für Tabelle `tl_metamodel_rendersetting`
--

INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(22, 6, 1367358379, 112, 20, 'mm_attr_alias', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(21, 6, 1367358379, 120, 19, 'mm_attr_combinedvalues', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(20, 6, 1367358066, 512, 15, 'mm_attr_timestamp', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(19, 6, 1367358066, 64, 14, 'mm_attr_text', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(18, 6, 1367358066, 256, 17, 'mm_attr_file', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(16, 5, 1367348151, 2097152, 12, 'mm_attr_translatedalias', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(15, 5, 1367348151, 16384, 11, 'mm_attr_translatedtext', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(17, 6, 1367358066, 128, 16, 'mm_attr_country', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(14, 5, 1367352273, 128, 13, 'mm_attr_file', '1', 'name_asc', '1', '', 'a:3:{i:0;s:2:"64";i:1;s:0:"";i:2;s:12:"proportional";}', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(23, 6, 1367358379, 96, 18, 'mm_attr_text', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(24, 7, 1367362797, 128, 25, 'mm_attr_text', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(25, 7, 1367362797, 256, 23, 'mm_attr_text', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(26, 7, 1367362797, 384, 24, 'mm_attr_tags', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(27, 7, 1367362797, 1600, 22, 'mm_attr_timestamp', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(28, 7, 1367362797, 8, 21, 'mm_attr_translatedtext', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(29, 7, 1367362797, 768, 26, 'mm_attr_checkbox', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(36, 7, 1367797232, 1408, 27, 'mm_attr_checkbox', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(31, 7, 1367803489, 1024, 28, 'mm_attr_url_youtube', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(32, 7, 1367362797, 1152, 29, 'mm_attr_url', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(33, 7, 1367362797, 1280, 31, 'mm_attr_tags', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(34, 7, 1367433419, 1280, 32, 'mm_attr_translatedalias', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(35, 7, 1367433419, 1408, 33, 'mm_attr_translatedlongtext', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(37, 7, 1367871646, 1536, 34, 'mm_attr_rating_raw', '1', '', '', '', '', '1');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(64, 9, 1367865841, 1664, 22, 'mm_attr_timestamp', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(39, 8, 1367803596, 256, 23, 'mm_attr_text', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(41, 8, 1367803596, 19, 22, 'mm_attr_timestamp', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(42, 8, 1367803596, 16, 21, 'mm_attr_translatedtext', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(69, 8, 1367865894, 640, 27, 'mm_attr_checkbox', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(70, 8, 1367882422, 768, 28, 'mm_attr_url_youtube', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(65, 9, 1367865841, 1792, 21, 'mm_attr_translatedtext', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(67, 8, 1367865894, 384, 24, 'mm_attr_tags', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(68, 8, 1367865894, 512, 26, 'mm_attr_checkbox', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(49, 8, 1367803596, 52, 33, 'mm_attr_translatedlongtext', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(51, 9, 1367856366, 1728, 25, 'mm_attr_text', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(52, 9, 1367856367, 256, 23, 'mm_attr_text', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(53, 9, 1367856367, 1344, 24, 'mm_attr_tags', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(72, 8, 1367865894, 1024, 31, 'mm_attr_tags', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(71, 8, 1367865894, 896, 29, 'mm_attr_url', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(56, 9, 1367856367, 768, 26, 'mm_attr_checkbox', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(57, 9, 1367856367, 896, 27, 'mm_attr_checkbox', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(58, 9, 1367856367, 1024, 28, 'mm_attr_url', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(59, 9, 1367856367, 1152, 29, 'mm_attr_url', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(66, 8, 1367865894, 256, 25, 'mm_attr_text', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(61, 9, 1367856367, 1408, 32, 'mm_attr_translatedalias', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(62, 9, 1367856367, 1536, 33, 'mm_attr_translatedlongtext', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(63, 9, 1367884339, 1664, 34, 'mm_attr_rating', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(73, 8, 1367865894, 1152, 32, 'mm_attr_translatedalias', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(74, 8, 1367865894, 1280, 34, 'mm_attr_rating', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(75, 7, 1367874582, 1440, 35, 'mm_attr_text_asin_image', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(76, 8, 1367879991, 1280, 35, 'mm_attr_text_asin_details', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(77, 10, 1368002915, 128, 25, 'mm_attr_text', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(78, 10, 1368002915, 256, 23, 'mm_attr_text', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(79, 10, 1368002915, 496, 24, 'mm_attr_tags', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(80, 10, 1368002915, 480, 22, 'mm_attr_timestamp', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(81, 10, 1368002915, 448, 21, 'mm_attr_translatedtext', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(82, 10, 1368002915, 768, 26, 'mm_attr_checkbox', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(83, 10, 1368002915, 896, 27, 'mm_attr_checkbox', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(84, 10, 1368002915, 1024, 28, 'mm_attr_url', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(85, 10, 1368002915, 1152, 29, 'mm_attr_text', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(86, 10, 1368002915, 1280, 31, 'mm_attr_tags', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(87, 10, 1368002915, 1408, 32, 'mm_attr_translatedalias', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(88, 10, 1368002915, 1536, 33, 'mm_attr_translatedlongtext', '', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(89, 10, 1368022671, 488, 34, 'mm_attr_rating_raw', '1', '', '', '', '', '');
INSERT INTO `tl_metamodel_rendersetting` (`id`, `pid`, `tstamp`, `sorting`, `attr_id`, `template`, `enabled`, `file_sortBy`, `file_showLink`, `file_showImage`, `file_imageSize`, `rating_disabled`) VALUES(90, 10, 1368003030, 416, 35, 'mm_attr_text_asin_image', '1', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_metamodel_rendersettings`
--

CREATE TABLE IF NOT EXISTS `tl_metamodel_rendersettings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `isdefault` char(1) NOT NULL DEFAULT '',
  `template` varchar(64) NOT NULL DEFAULT '',
  `jumpTo` blob,
  `format` varchar(255) NOT NULL DEFAULT '',
  `hideEmptyValues` char(1) NOT NULL DEFAULT '',
  `hideLabels` char(1) NOT NULL DEFAULT '',
  `additionalCss` blob,
  `additionalJs` blob,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Daten für Tabelle `tl_metamodel_rendersettings`
--

INSERT INTO `tl_metamodel_rendersettings` (`id`, `pid`, `tstamp`, `name`, `isdefault`, `template`, `jumpTo`, `format`, `hideEmptyValues`, `hideLabels`, `additionalCss`, `additionalJs`) VALUES(7, 3, 1368285986, 'Default', '1', 'metamodel_prerendered', 0x613a323a7b693a303b613a333a7b733a383a226c616e67636f6465223b733a323a226465223b733a353a2276616c7565223b733a303a22223b733a363a2266696c746572223b733a303a22223b7d693a313b613a333a7b733a383a226c616e67636f6465223b733a323a22656e223b733a353a2276616c7565223b733a323a223131223b733a363a2266696c746572223b733a313a2236223b7d7d, '', '1', '1', 0x613a313a7b693a303b613a323a7b733a343a2266696c65223b733a303a22223b733a393a227075626c6973686564223b733a303a22223b7d7d, 0x613a313a7b693a303b613a323a7b733a343a2266696c65223b733a303a22223b733a393a227075626c6973686564223b733a303a22223b7d7d);
INSERT INTO `tl_metamodel_rendersettings` (`id`, `pid`, `tstamp`, `name`, `isdefault`, `template`, `jumpTo`, `format`, `hideEmptyValues`, `hideLabels`, `additionalCss`, `additionalJs`) VALUES(5, 4, 1368293448, 'Default', '1', 'metamodel_prerendered', 0x613a323a7b693a303b613a333a7b733a383a226c616e67636f6465223b733a323a226465223b733a353a2276616c7565223b733a303a22223b733a363a2266696c746572223b733a303a22223b7d693a313b613a333a7b733a383a226c616e67636f6465223b733a323a22656e223b733a353a2276616c7565223b733a303a22223b733a363a2266696c746572223b733a303a22223b7d7d, 'html5', '1', '1', 0x613a313a7b693a303b613a323a7b733a343a2266696c65223b733a303a22223b733a393a227075626c6973686564223b733a303a22223b7d7d, 0x613a313a7b693a303b613a323a7b733a343a2266696c65223b733a303a22223b733a393a227075626c6973686564223b733a303a22223b7d7d);
INSERT INTO `tl_metamodel_rendersettings` (`id`, `pid`, `tstamp`, `name`, `isdefault`, `template`, `jumpTo`, `format`, `hideEmptyValues`, `hideLabels`, `additionalCss`, `additionalJs`) VALUES(6, 5, 1368293466, 'Default', '1', 'metamodel_prerendered', 0x613a313a7b693a303b613a333a7b733a383a226c616e67636f6465223b733a323a227878223b733a353a2276616c7565223b733a303a22223b733a363a2266696c746572223b733a303a22223b7d7d, 'html5', '1', '1', 0x613a313a7b693a303b613a323a7b733a343a2266696c65223b733a303a22223b733a393a227075626c6973686564223b733a303a22223b7d7d, 0x613a313a7b693a303b613a323a7b733a343a2266696c65223b733a303a22223b733a393a227075626c6973686564223b733a303a22223b7d7d);
INSERT INTO `tl_metamodel_rendersettings` (`id`, `pid`, `tstamp`, `name`, `isdefault`, `template`, `jumpTo`, `format`, `hideEmptyValues`, `hideLabels`, `additionalCss`, `additionalJs`) VALUES(8, 3, 1367880324, 'Detail Main', '', 'metamodel_full', 0x613a323a7b693a303b613a333a7b733a383a226c616e67636f6465223b733a323a226465223b733a353a2276616c7565223b733a303a22223b733a363a2266696c746572223b733a303a22223b7d693a313b613a333a7b733a383a226c616e67636f6465223b733a323a22656e223b733a353a2276616c7565223b733a323a223131223b733a363a2266696c746572223b733a303a22223b7d7d, 'html5', '1', '1', NULL, NULL);
INSERT INTO `tl_metamodel_rendersettings` (`id`, `pid`, `tstamp`, `name`, `isdefault`, `template`, `jumpTo`, `format`, `hideEmptyValues`, `hideLabels`, `additionalCss`, `additionalJs`) VALUES(10, 3, 1368273759, 'Backend', '', 'metamodel_prerendered', 0x613a323a7b693a303b613a333a7b733a383a226c616e67636f6465223b733a323a226465223b733a353a2276616c7565223b733a303a22223b733a363a2266696c746572223b733a303a22223b7d693a313b613a333a7b733a383a226c616e67636f6465223b733a323a22656e223b733a353a2276616c7565223b733a303a22223b733a363a2266696c746572223b733a303a22223b7d7d, '', '1', '1', 0x613a313a7b693a303b613a323a7b733a343a2266696c65223b733a34373a22746c5f66696c65732f7374616e646172642f6c61796f75742f6373732f6261636b656e642f6d6f766965732e637373223b733a393a227075626c6973686564223b733a313a2231223b7d7d, 0x613a313a7b693a303b613a323a7b733a343a2266696c65223b733a303a22223b733a393a227075626c6973686564223b733a303a22223b7d7d);
INSERT INTO `tl_metamodel_rendersettings` (`id`, `pid`, `tstamp`, `name`, `isdefault`, `template`, `jumpTo`, `format`, `hideEmptyValues`, `hideLabels`, `additionalCss`, `additionalJs`) VALUES(9, 3, 1367870303, 'Detail Sidebar', '', 'metamodel_prerendered', 0x613a323a7b693a303b613a333a7b733a383a226c616e67636f6465223b733a323a226465223b733a353a2276616c7565223b733a303a22223b733a363a2266696c746572223b733a303a22223b7d693a313b613a333a7b733a383a226c616e67636f6465223b733a323a22656e223b733a353a2276616c7565223b733a303a22223b733a363a2266696c746572223b733a303a22223b7d7d, '', '1', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_metamodel_tag_relation`
--

CREATE TABLE IF NOT EXISTS `tl_metamodel_tag_relation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `att_id` int(11) unsigned NOT NULL DEFAULT '0',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `value_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `att_id` (`att_id`),
  KEY `item_id` (`item_id`),
  KEY `value_id` (`value_id`),
  KEY `tagid` (`item_id`,`att_id`,`value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=147 ;

--
-- Daten für Tabelle `tl_metamodel_tag_relation`
--

INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(10, 31, 5, 4);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(9, 31, 5, 2);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(143, 31, 4, 4);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(7, 31, 1, 1);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(6, 31, 1, 4);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(11, 31, 5, 6);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(12, 31, 5, 22);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(13, 24, 7, 3);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(14, 31, 7, 10);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(15, 31, 7, 11);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(16, 24, 7, 15);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(17, 24, 7, 16);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(18, 24, 8, 17);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(19, 24, 8, 18);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(20, 24, 8, 19);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(21, 31, 8, 7);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(22, 31, 8, 10);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(23, 31, 8, 11);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(24, 24, 9, 4);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(25, 24, 9, 5);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(26, 24, 9, 6);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(27, 24, 9, 7);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(28, 24, 9, 19);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(29, 31, 9, 4);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(30, 24, 10, 20);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(31, 24, 10, 21);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(32, 31, 10, 3);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(33, 31, 10, 11);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(34, 24, 11, 5);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(35, 24, 11, 19);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(36, 31, 11, 4);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(37, 31, 11, 5);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(38, 31, 11, 22);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(39, 24, 12, 1);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(40, 24, 12, 2);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(41, 24, 12, 3);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(42, 24, 12, 4);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(43, 31, 12, 3);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(44, 31, 12, 11);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(45, 31, 12, 22);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(46, 31, 13, 4);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(47, 31, 13, 10);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(48, 31, 13, 11);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(49, 31, 14, 4);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(50, 31, 14, 5);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(51, 31, 14, 22);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(52, 24, 14, 33);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(53, 24, 15, 37);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(54, 24, 15, 38);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(55, 24, 15, 39);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(56, 24, 15, 40);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(57, 24, 15, 41);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(58, 24, 15, 43);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(59, 24, 15, 44);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(60, 24, 15, 45);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(61, 24, 15, 46);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(62, 24, 15, 47);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(63, 24, 15, 48);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(64, 24, 15, 49);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(65, 24, 15, 50);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(66, 24, 15, 51);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(67, 31, 15, 3);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(140, 24, 1, 12);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(136, 24, 3, 92);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(135, 24, 3, 4);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(134, 31, 15, 24);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(133, 24, 13, 90);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(132, 24, 13, 89);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(131, 24, 13, 88);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(130, 24, 13, 87);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(129, 24, 6, 86);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(128, 24, 6, 85);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(127, 24, 6, 83);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(126, 24, 6, 84);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(125, 31, 6, 5);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(124, 31, 6, 4);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(146, 24, 4, 95);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(139, 24, 1, 11);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(138, 24, 3, 93);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(137, 24, 3, 91);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(145, 24, 4, 94);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(144, 31, 4, 5);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(142, 24, 4, 18);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(141, 24, 1, 90);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(105, 24, 20, 70);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(106, 24, 20, 71);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(107, 24, 20, 72);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(108, 24, 20, 73);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(109, 24, 20, 74);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(110, 31, 20, 1);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(111, 31, 20, 5);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(112, 31, 20, 10);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(113, 24, 21, 14);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(114, 24, 21, 75);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(115, 24, 21, 76);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(116, 24, 21, 77);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(117, 24, 21, 78);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(118, 24, 21, 79);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(119, 24, 21, 80);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(120, 24, 21, 81);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(121, 24, 21, 82);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(122, 31, 21, 2);
INSERT INTO `tl_metamodel_tag_relation` (`id`, `att_id`, `item_id`, `value_id`) VALUES(123, 31, 21, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_metamodel_translatedlongblob`
--

CREATE TABLE IF NOT EXISTS `tl_metamodel_translatedlongblob` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `att_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `langcode` varchar(2) NOT NULL DEFAULT '',
  `value` longblob,
  PRIMARY KEY (`id`),
  KEY `attlang` (`att_id`,`langcode`),
  KEY `attitem` (`att_id`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_metamodel_translatedlongblob`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_metamodel_translatedlongtext`
--

CREATE TABLE IF NOT EXISTS `tl_metamodel_translatedlongtext` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `att_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `langcode` varchar(2) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `attlang` (`att_id`,`langcode`),
  KEY `attitem` (`att_id`,`item_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Daten für Tabelle `tl_metamodel_translatedlongtext`
--

INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(10, 1367883883, 33, 4, 'de', '');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(9, 1367960280, 33, 4, 'en', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\n<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(6, 1367959335, 33, 1, 'en', '<p>Corned beef boudin pork loin frankfurter ham hock swine kielbasa short loin turducken ball tip pancetta. Shoulder prosciutto brisket turkey. Jowl capicola tongue bacon doner pastrami beef ribs hamburger. Meatball corned beef short loin chicken pork. Pork belly ball tip frankfurter, meatball sirloin ham filet mignon bresaola pancetta shankle capicola short ribs. Filet mignon chuck turkey spare ribs, brisket hamburger flank tongue chicken. Frankfurter ham corned beef bacon beef.</p>\n<p>Pig swine ball tip, brisket biltong fatback tenderloin tail ribeye boudin shankle frankfurter turkey beef venison. Sirloin pancetta meatball chuck flank pork loin. Shank meatball kielbasa, swine bresaola ham short loin. Pastrami fatback ham biltong tenderloin salami jowl drumstick brisket pancetta pig. Frankfurter strip steak venison filet mignon brisket shankle biltong kielbasa rump chicken jerky pork loin tenderloin drumstick. Ham hock flank bresaola tongue rump jowl.</p>\n<p>Frankfurter strip steak pork loin bresaola tail. Ham meatball strip steak doner tongue brisket bacon chicken short loin leberkas jerky beef. Swine turducken kielbasa ribeye shoulder pork chop doner bacon corned beef ham. Bacon turducken ham short ribs andouille venison ribeye boudin. Shankle tongue ground round pork belly flank. Shank brisket capicola drumstick sirloin prosciutto. Fatback ground round shankle jerky, meatball beef ribs swine short loin chicken pork t-bone drumstick andouille.</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(7, 1367959077, 33, 3, 'en', '<p>Frankfurter strip steak pork loin bresaola tail. Ham meatball strip steak doner tongue brisket bacon chicken short loin leberkas jerky beef. Swine turducken kielbasa ribeye shoulder pork chop doner bacon corned beef ham. Bacon turducken ham short ribs andouille venison ribeye boudin. Shankle tongue ground round pork belly flank. Shank brisket capicola drumstick sirloin prosciutto. Fatback ground round shankle jerky, meatball beef ribs swine short loin chicken pork t-bone drumstick andouille.</p>\n<p>Kielbasa pastrami t-bone venison filet mignon pork belly pig jowl ham hock tenderloin tri-tip shoulder beef ribs hamburger. Bacon boudin chuck strip steak corned beef brisket drumstick ground round meatloaf ribeye chicken t-bone ham pork leberkas. Brisket t-bone short loin, short ribs andouille hamburger ribeye tenderloin tri-tip tail. Chuck capicola meatloaf doner venison. Pancetta biltong cow, pastrami hamburger beef meatball chuck.</p>\n<p>Does your lorem ipsum text long for something a little meatier? Give our generator a try… it’s tasty!</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(8, 1367834897, 33, 3, 'de', '');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(5, 1367875526, 33, 1, 'de', '');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(11, 1367883573, 33, 5, 'de', '');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(12, 1367943712, 33, 5, 'en', '<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\n<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(13, 1367884891, 33, 6, 'de', '');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(14, 1367956531, 33, 6, 'en', '<div>\n<p>Bacon ipsum dolor sit amet chicken corned beef filet mignon jowl. Pancetta chuck ribeye andouille tail t-bone jowl bresaola ham hock. Capicola pig ham hock tenderloin meatball ball tip pork pork belly ham corned beef. Shank fatback meatloaf, brisket turducken filet mignon cow capicola doner flank chicken corned beef tri-tip. Shoulder tail turducken pork chop meatloaf ball tip corned beef beef ribs biltong doner. Tri-tip bresaola venison ground round salami swine meatloaf.</p>\n<p>Ham hock boudin turducken pork tenderloin t-bone chicken spare ribs tail. Jerky sirloin tri-tip pork chop andouille spare ribs, brisket chicken. Corned beef short loin venison beef swine. Jowl andouille spare ribs rump ribeye, turkey fatback tri-tip shoulder pancetta.</p>\n<p>Rump chuck pork belly tenderloin. Pastrami swine hamburger ribeye bacon. Bresaola chicken ground round spare ribs. Pancetta strip steak leberkas turducken chicken andouille short ribs chuck swine pig pork belly doner shank bresaola t-bone. Drumstick kielbasa shank pork belly, flank pancetta pig. Filet mignon turkey pastrami meatloaf.</p>\n<p>Boudin rump pork filet mignon, spare ribs shankle beef ribs. Pork belly pork loin pork leberkas swine. Sausage salami beef ribs bresaola kielbasa, bacon frankfurter pork chop. Fatback short ribs andouille sirloin capicola.</p>\n<p>Ribeye cow frankfurter pancetta tri-tip chicken pastrami ground round tail boudin. Turducken prosciutto sausage tri-tip ham jerky chicken brisket pork loin drumstick pork belly turkey leberkas pig. Jerky ribeye turkey strip steak, hamburger meatball jowl short loin ball tip shank. Pig beef fatback, ground round short loin tenderloin chuck pork chop bresaola t-bone swine corned beef leberkas. Rump salami shank biltong venison. Flank kielbasa sausage, meatloaf filet mignon beef drumstick tri-tip.</p>\n</div>\n<p>Does your lorem ipsum text long for something a little meatier? Give our generator a try… it’s tasty!</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(15, 1367954490, 33, 7, 'de', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\n<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(16, 1368001478, 33, 7, 'en', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\n<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(17, 1367885288, 33, 8, 'de', '');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(18, 1367960054, 33, 8, 'en', '<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores.</p>\n<p>At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues.</p>\n<p>It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es. Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues.</p>\n<p>It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es. Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(19, 1367911944, 33, 9, 'de', '');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(20, 1367955612, 33, 9, 'en', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.</p>\n<p>Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(21, 1367886155, 33, 10, 'de', '');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(22, 1367954602, 33, 10, 'en', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(23, 1367911791, 33, 11, 'de', '');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(24, 1367955198, 33, 11, 'en', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>\n<p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>\n<p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(25, 1367936131, 33, 12, 'de', '');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(26, 1367954565, 33, 12, 'en', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\n<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(27, 1367910591, 33, 13, 'de', '');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(28, 1367886273, 33, 14, 'de', '');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(29, 1367912112, 33, 15, 'de', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(32, 1367958062, 33, 13, 'en', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(31, 1367958342, 33, 15, 'en', '<p>Bacon ipsum dolor sit amet swine tenderloin pork fatback pancetta. Meatball pig doner, tri-tip tail tongue beef ribs bacon bresaola leberkas jerky. Kielbasa meatball ham pork doner hamburger sausage shank corned beef pig meatloaf venison chicken swine. Pork loin biltong ham hock, jowl pork chop rump shankle t-bone chuck shoulder ball tip salami.</p>\n<p>Corned beef boudin pork loin frankfurter ham hock swine kielbasa short loin turducken ball tip pancetta. Shoulder prosciutto brisket turkey. Jowl capicola tongue bacon doner pastrami beef ribs hamburger. Meatball corned beef short loin chicken pork. Pork belly ball tip frankfurter, meatball sirloin ham filet mignon bresaola pancetta shankle capicola short ribs. Filet mignon chuck turkey spare ribs, brisket hamburger flank tongue chicken. Frankfurter ham corned beef bacon beef.</p>\n<p>Pig swine ball tip, brisket biltong fatback tenderloin tail ribeye boudin shankle frankfurter turkey beef venison. Sirloin pancetta meatball chuck flank pork loin. Shank meatball kielbasa, swine bresaola ham short loin. Pastrami fatback ham biltong tenderloin salami jowl drumstick brisket pancetta pig. Frankfurter strip steak venison filet mignon brisket shankle biltong kielbasa rump chicken jerky pork loin tenderloin drumstick. Ham hock flank bresaola tongue rump jowl.</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(33, 1367955459, 33, 14, 'en', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(34, 1367916864, 33, 16, 'de', '');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(42, 1367955119, 33, 20, 'en', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.</p>\n<p>Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\n<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(39, 1367925062, 33, 20, 'de', '');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(40, 1367925536, 33, 21, 'de', '');
INSERT INTO `tl_metamodel_translatedlongtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(41, 1367925610, 33, 21, 'en', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_metamodel_translatedtext`
--

CREATE TABLE IF NOT EXISTS `tl_metamodel_translatedtext` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `att_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `langcode` varchar(2) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `attvalue` (`att_id`,`value`),
  KEY `attlang` (`att_id`,`langcode`),
  KEY `attitem` (`att_id`,`item_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=250 ;

--
-- Daten für Tabelle `tl_metamodel_translatedtext`
--

INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(21, 1367362704, 12, 4, 'de', 'action');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(20, 1367362704, 12, 4, 'de', 'action');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(19, 1367362704, 11, 4, 'de', 'Action');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(18, 1367363441, 12, 3, 'de', 'drama');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(17, 1367363441, 12, 3, 'de', 'drama');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(16, 1367363441, 11, 3, 'de', 'Drama');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(15, 1367396459, 12, 2, 'de', 'komoedie');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(14, 1367396459, 11, 2, 'de', 'Komödie');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(13, 1367434462, 12, 1, 'de', 'horror');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(12, 1367434462, 11, 1, 'de', 'Horror');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(22, 1367396354, 11, 5, 'de', 'Science-Fiction');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(23, 1367396354, 12, 5, 'de', 'science-fiction');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(24, 1367396354, 12, 5, 'de', 'science-fiction');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(25, 1367396493, 11, 6, 'de', 'Fantasy');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(26, 1367396493, 12, 6, 'de', 'fantasy');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(27, 1367396493, 12, 6, 'de', 'fantasy');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(28, 1367354528, 11, 7, 'de', 'Mystery');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(29, 1367354528, 12, 7, 'de', 'mystery');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(30, 1367354528, 12, 7, 'de', 'mystery');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(31, 1367396536, 11, 8, 'de', 'Western');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(32, 1367396536, 12, 8, 'de', 'western');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(33, 1367396536, 12, 8, 'de', 'western');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(114, 1367396508, 12, 7, 'en', 'mystery');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(112, 1367396508, 11, 7, 'en', 'Mystery');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(37, 1367354528, 11, 10, 'de', 'Thriller');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(38, 1367354528, 12, 10, 'de', 'thriller');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(39, 1367354528, 12, 10, 'de', 'thriller');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(40, 1367396556, 11, 11, 'de', 'Krimi');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(41, 1367396556, 12, 11, 'de', 'krimi');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(42, 1367396556, 12, 11, 'de', 'krimi');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(43, 1367396640, 11, 12, 'de', 'Historienfilm');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(44, 1367396640, 12, 12, 'de', 'historienfilm');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(45, 1367396640, 12, 12, 'de', 'historienfilm');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(111, 1367396662, 12, 17, 'en', 'musical');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(109, 1367396662, 11, 17, 'en', 'Musical');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(99, 1367935880, 12, 12, 'en', 'historical');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(98, 1367935880, 12, 12, 'en', 'historical');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(97, 1367935880, 11, 12, 'en', 'Historical');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(110, 1367396662, 12, 17, 'en', 'musical');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(113, 1367396508, 12, 7, 'en', 'mystery');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(52, 1367396650, 11, 15, 'de', 'Kriegsfilm');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(53, 1367396650, 12, 15, 'de', 'kriegsfilm');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(54, 1367396650, 12, 15, 'de', 'kriegsfilm');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(105, 1367935891, 12, 15, 'en', 'war');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(103, 1367935891, 11, 15, 'en', 'War');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(58, 1367355269, 11, 17, 'de', 'Musical');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(59, 1367355269, 12, 17, 'de', 'musical');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(60, 1367355269, 12, 17, 'de', 'musical');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(96, 1367355111, 12, 6, 'en', 'fantasy');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(94, 1367355111, 11, 6, 'en', 'Fantasy');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(64, 1367396678, 11, 19, 'de', 'Biographie');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(65, 1367396678, 12, 19, 'de', 'biographie');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(66, 1367396678, 12, 19, 'de', 'biographie');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(82, 1367396482, 11, 4, 'en', 'Action');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(80, 1367935675, 12, 22, 'en', 'adventure');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(84, 1367396482, 12, 4, 'en', 'action');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(83, 1367396482, 12, 4, 'en', 'action');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(81, 1367935675, 12, 22, 'en', 'adventure');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(95, 1367355111, 12, 6, 'en', '');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(104, 1367935891, 12, 15, 'en', 'war');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(73, 1367396687, 11, 22, 'de', 'Abenteuer');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(74, 1367396687, 12, 22, 'de', 'abenteuer');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(75, 1367396687, 12, 22, 'de', 'abenteuer');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(79, 1367935675, 11, 22, 'en', 'Adventure');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(85, 1367935847, 11, 19, 'en', 'Biographical');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(86, 1367935847, 12, 19, 'en', 'biographical');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(87, 1367935847, 12, 19, 'en', 'biographical');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(88, 1367396472, 11, 3, 'en', 'Drama');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(89, 1367396472, 12, 3, 'en', 'drama');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(90, 1367396472, 12, 3, 'en', 'drama');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(91, 1367935868, 11, 2, 'en', 'Comedy');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(92, 1367935868, 12, 2, 'en', 'comedy');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(93, 1367935868, 12, 2, 'en', 'comedy');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(100, 1367434457, 11, 1, 'en', 'Horror');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(101, 1367434457, 12, 1, 'en', 'horror');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(102, 1367434457, 12, 1, 'en', 'horror');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(106, 1367935896, 11, 11, 'en', 'Crime');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(107, 1367935896, 12, 11, 'en', 'crime');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(108, 1367935896, 12, 11, 'en', 'crime');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(115, 1367355316, 11, 5, 'en', 'Science-fiction');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(116, 1367355316, 12, 5, 'en', '');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(117, 1367355316, 12, 5, 'en', 'science-fiction');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(118, 1367396542, 11, 10, 'en', 'Thriller');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(119, 1367396542, 12, 10, 'en', 'thriller');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(120, 1367396542, 12, 10, 'en', 'thriller');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(121, 1367355337, 11, 8, 'en', 'Western');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(122, 1367355337, 12, 8, 'en', '');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(123, 1367355337, 12, 8, 'en', 'western');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(124, 1367875526, 21, 1, 'de', 'Resident Evil');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(125, 1367875526, 32, 1, 'de', 'resident-evil');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(126, 1367875526, 32, 1, 'de', 'resident-evil');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(127, 1367959335, 21, 1, 'en', 'Resident Evil');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(128, 1367959335, 32, 1, 'en', 'resident-evil');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(129, 1367959335, 32, 1, 'en', 'resident-evil');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(135, 1367834897, 32, 3, 'de', 'pulp-fiction');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(134, 1367834897, 32, 3, 'de', 'pulp-fiction');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(133, 1367834897, 21, 3, 'de', 'Pulp Fiction');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(136, 1367883883, 21, 4, 'de', 'The Dark Knight');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(137, 1367883883, 32, 4, 'de', 'the-dark-knight');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(138, 1367883883, 32, 4, 'de', 'the-dark-knight');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(139, 1367960280, 21, 4, 'en', 'The Dark Knight');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(140, 1367960280, 32, 4, 'en', 'the-dark-knight');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(141, 1367960280, 32, 4, 'en', 'the-dark-knight');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(142, 1367959077, 21, 3, 'en', 'Pulp Fiction');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(143, 1367959077, 32, 3, 'en', 'pulp-fiction');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(144, 1367959077, 32, 3, 'en', 'pulp-fiction');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(145, 1367883573, 21, 5, 'de', 'Fluch der Karibik');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(146, 1367883573, 32, 5, 'de', 'fluch-der-karibik');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(147, 1367883573, 32, 5, 'de', 'fluch-der-karibik');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(148, 1367943712, 21, 5, 'en', 'Pirates of the Caribbean');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(149, 1367943712, 32, 5, 'en', 'pirates-of-the-caribbean');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(150, 1367943712, 32, 5, 'en', 'pirates-of-the-caribbean');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(151, 1367884891, 21, 6, 'de', 'Matrix');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(152, 1367884891, 32, 6, 'de', 'matrix');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(153, 1367884891, 32, 6, 'de', 'matrix');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(154, 1367956531, 21, 6, 'en', 'Matrix');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(155, 1367956531, 32, 6, 'en', 'matrix');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(156, 1367956531, 32, 6, 'en', 'matrix');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(157, 1367954490, 21, 7, 'de', 'Departed - Unter Feinden');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(158, 1367954490, 32, 7, 'de', 'departed-unter-feinden');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(159, 1367954490, 32, 7, 'de', 'departed-unter-feinden');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(160, 1368001478, 21, 7, 'en', 'The Departed');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(161, 1368001478, 32, 7, 'en', 'the-departed');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(162, 1368001478, 32, 7, 'en', 'the-departed');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(163, 1367885288, 21, 8, 'de', 'Sieben');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(164, 1367885288, 32, 8, 'de', 'sieben');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(165, 1367885288, 32, 8, 'de', 'sieben');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(166, 1367960054, 21, 8, 'en', 'Se7en');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(167, 1367960054, 32, 8, 'en', 'se7en');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(168, 1367960054, 32, 8, 'en', 'se7en');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(169, 1367911944, 21, 9, 'de', 'Marvel''s The Avengers');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(170, 1367911944, 32, 9, 'de', 'marvels-the-avengers');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(171, 1367911944, 32, 9, 'de', 'marvels-the-avengers');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(172, 1367955612, 21, 9, 'en', 'The Avengers');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(173, 1367955612, 32, 9, 'en', 'the-avengers');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(174, 1367955612, 32, 9, 'en', 'the-avengers');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(175, 1367886155, 21, 10, 'de', 'Drive');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(176, 1367886155, 32, 10, 'de', 'drive');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(177, 1367886155, 32, 10, 'de', 'drive');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(178, 1367954602, 21, 10, 'en', 'Drive');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(179, 1367954602, 32, 10, 'en', 'drive');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(180, 1367954602, 32, 10, 'en', 'drive');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(181, 1367911791, 21, 11, 'de', 'Iron Man');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(182, 1367911791, 32, 11, 'de', 'iron-man');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(183, 1367911791, 32, 11, 'de', 'iron-man');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(184, 1367955198, 21, 11, 'en', 'Iron Man');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(185, 1367955198, 32, 11, 'en', 'iron-man');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(186, 1367955198, 32, 11, 'en', 'iron-man');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(187, 1367936131, 21, 12, 'de', 'Django Unchained');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(188, 1367936131, 32, 12, 'de', 'django-unchained');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(189, 1367936131, 32, 12, 'de', 'django-unchained');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(190, 1367954565, 21, 12, 'en', 'Django Unchained');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(191, 1367954565, 32, 12, 'en', 'django-unchained');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(192, 1367954565, 32, 12, 'en', 'django-unchained');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(193, 1367910591, 21, 13, 'de', 'Fast and the Furious 5');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(194, 1367910592, 32, 13, 'de', 'fast-and-the-furious-5');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(195, 1367910592, 32, 13, 'de', 'fast-and-the-furious-5');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(196, 1367886273, 21, 14, 'de', 'Jumper');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(197, 1367886273, 32, 14, 'de', 'jumper');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(198, 1367886273, 32, 14, 'de', 'jumper');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(199, 1367912112, 21, 15, 'de', 'P.S. Ich Liebe Dich');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(200, 1367912112, 32, 15, 'de', 'ps-ich-liebe-dich');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(201, 1367912112, 32, 15, 'de', 'ps-ich-liebe-dich');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(209, 1367958062, 32, 13, 'en', 'fast-and-the-furious-5');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(208, 1367958062, 21, 13, 'en', 'Fast and the Furious 5');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(205, 1367958342, 21, 15, 'en', 'P.S. I Love You');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(206, 1367958342, 32, 15, 'en', 'ps-i-love-you');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(207, 1367958342, 32, 15, 'en', 'ps-i-love-you');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(210, 1367958062, 32, 13, 'en', 'fast-and-the-furious-5');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(211, 1367955459, 21, 14, 'en', 'Jumper');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(212, 1367955459, 32, 14, 'en', 'jumper');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(213, 1367955459, 32, 14, 'en', 'jumper');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(215, 1367916864, 32, 16, 'de', 'test');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(216, 1367916864, 32, 16, 'de', 'test');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(246, 1367955119, 32, 20, 'en', 'hell');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(245, 1367955119, 32, 20, 'en', 'hell');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(244, 1367955119, 21, 20, 'en', 'Hell');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(229, 1367925062, 21, 20, 'de', 'Hell');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(230, 1367925062, 32, 20, 'de', '');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(231, 1367925062, 32, 20, 'de', 'hell');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(232, 1367925536, 21, 21, 'de', 'Schlaflos in Seattle');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(233, 1367925536, 32, 21, 'de', '');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(234, 1367925536, 32, 21, 'de', 'schlaflos-in-seattle');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(235, 1367925610, 21, 21, 'en', 'Sleepless in Seattle');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(236, 1367925610, 32, 21, 'en', 'sleepless-in-seattle');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(237, 1367925610, 32, 21, 'en', 'sleepless-in-seattle');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(238, 1367929067, 11, 24, 'de', 'Romantik');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(239, 1367929067, 12, 24, 'de', 'romantik');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(240, 1367929067, 12, 24, 'de', 'romantik');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(241, 1367935646, 11, 24, 'en', 'Romantic');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(242, 1367935646, 12, 24, 'en', 'romantic');
INSERT INTO `tl_metamodel_translatedtext` (`id`, `tstamp`, `att_id`, `item_id`, `langcode`, `value`) VALUES(243, 1367935646, 12, 24, 'en', 'romantic');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_module`
--

CREATE TABLE IF NOT EXISTS `tl_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `levelOffset` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hardLimit` char(1) NOT NULL DEFAULT '',
  `showProtected` char(1) NOT NULL DEFAULT '',
  `defineRoot` char(1) NOT NULL DEFAULT '',
  `rootPage` int(10) unsigned NOT NULL DEFAULT '0',
  `navigationTpl` varchar(64) NOT NULL DEFAULT '',
  `pages` blob,
  `showHidden` char(1) NOT NULL DEFAULT '',
  `customLabel` varchar(64) NOT NULL DEFAULT '',
  `autologin` char(1) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `redirectBack` char(1) NOT NULL DEFAULT '',
  `cols` varchar(32) NOT NULL DEFAULT '',
  `editable` blob,
  `memberTpl` varchar(64) NOT NULL DEFAULT '',
  `tableless` char(1) NOT NULL DEFAULT '',
  `form` int(10) unsigned NOT NULL DEFAULT '0',
  `searchType` varchar(32) NOT NULL DEFAULT '',
  `fuzzy` char(1) NOT NULL DEFAULT '',
  `contextLength` smallint(5) unsigned NOT NULL DEFAULT '0',
  `totalLength` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `queryType` varchar(32) NOT NULL DEFAULT '',
  `searchTpl` varchar(64) NOT NULL DEFAULT '',
  `inColumn` varchar(32) NOT NULL DEFAULT '',
  `skipFirst` smallint(5) unsigned NOT NULL DEFAULT '0',
  `loadFirst` char(1) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `transparent` char(1) NOT NULL DEFAULT '',
  `flashvars` varchar(255) NOT NULL DEFAULT '',
  `altContent` text,
  `source` varchar(32) NOT NULL DEFAULT '',
  `singleSRC` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `interactive` char(1) NOT NULL DEFAULT '',
  `flashID` varchar(64) NOT NULL DEFAULT '',
  `flashJS` text,
  `imgSize` varchar(64) NOT NULL DEFAULT '',
  `useCaption` char(1) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `multiSRC` blob,
  `html` text,
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `space` varchar(64) NOT NULL DEFAULT '',
  `cal_calendar` blob,
  `cal_noSpan` char(1) NOT NULL DEFAULT '',
  `cal_startDay` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cal_format` varchar(32) NOT NULL DEFAULT '',
  `cal_ignoreDynamic` char(1) NOT NULL DEFAULT '',
  `cal_order` varchar(32) NOT NULL DEFAULT '',
  `cal_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `cal_limit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cal_template` varchar(32) NOT NULL DEFAULT '',
  `cal_ctemplate` varchar(32) NOT NULL DEFAULT '',
  `cal_showQuantity` char(1) NOT NULL DEFAULT '',
  `com_order` varchar(32) NOT NULL DEFAULT '',
  `com_moderate` char(1) NOT NULL DEFAULT '',
  `com_bbcode` char(1) NOT NULL DEFAULT '',
  `com_requireLogin` char(1) NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) NOT NULL DEFAULT '',
  `com_template` varchar(32) NOT NULL DEFAULT '',
  `faq_categories` blob,
  `faq_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `list_table` varchar(64) NOT NULL DEFAULT '',
  `list_fields` varchar(255) NOT NULL DEFAULT '',
  `list_where` varchar(255) NOT NULL DEFAULT '',
  `list_sort` varchar(255) NOT NULL DEFAULT '',
  `list_search` varchar(255) NOT NULL DEFAULT '',
  `list_info` varchar(255) NOT NULL DEFAULT '',
  `list_info_where` varchar(255) NOT NULL DEFAULT '',
  `list_layout` varchar(32) NOT NULL DEFAULT '',
  `list_info_layout` varchar(32) NOT NULL DEFAULT '',
  `news_archives` blob,
  `news_featured` varchar(16) NOT NULL DEFAULT '',
  `news_numberOfItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `news_jumpToCurrent` varchar(16) NOT NULL DEFAULT '',
  `news_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `news_metaFields` varchar(255) NOT NULL DEFAULT '',
  `news_template` varchar(32) NOT NULL DEFAULT '',
  `news_format` varchar(32) NOT NULL DEFAULT '',
  `news_startDay` smallint(5) unsigned NOT NULL DEFAULT '0',
  `news_order` varchar(32) NOT NULL DEFAULT '',
  `news_showQuantity` char(1) NOT NULL DEFAULT '',
  `newsletters` blob,
  `nl_channels` blob,
  `nl_hideChannels` char(1) NOT NULL DEFAULT '',
  `nl_subscribe` text,
  `nl_unsubscribe` text,
  `nl_template` varchar(32) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  `reg_groups` blob,
  `reg_allowLogin` char(1) NOT NULL DEFAULT '',
  `reg_skipName` char(1) NOT NULL DEFAULT '',
  `reg_assignDir` char(1) NOT NULL DEFAULT '',
  `reg_close` varchar(32) NOT NULL DEFAULT '',
  `reg_homeDir` varchar(255) NOT NULL DEFAULT '',
  `reg_activate` char(1) NOT NULL DEFAULT '',
  `reg_jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_text` text,
  `reg_password` text,
  `rss_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `rss_feed` text,
  `rss_numberOfItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rss_template` varchar(32) NOT NULL DEFAULT '',
  `metamodel` int(10) unsigned NOT NULL DEFAULT '0',
  `metamodel_layout` varchar(64) NOT NULL DEFAULT '',
  `metamodel_use_limit` char(1) NOT NULL DEFAULT '',
  `metamodel_limit` smallint(5) NOT NULL DEFAULT '0',
  `metamodel_offset` smallint(5) NOT NULL DEFAULT '0',
  `metamodel_sortby` varchar(64) NOT NULL DEFAULT '',
  `metamodel_sortby_direction` varchar(4) NOT NULL DEFAULT '',
  `metamodel_filtering` int(10) NOT NULL DEFAULT '0',
  `metamodel_rendersettings` int(10) NOT NULL DEFAULT '0',
  `metamodel_noparsing` char(1) NOT NULL DEFAULT '',
  `metamodel_filterparams` longblob,
  `metamodel_fef_autosubmit` char(1) NOT NULL DEFAULT '',
  `metamodel_fef_params` blob,
  `metamodel_fef_template` varchar(64) NOT NULL DEFAULT '',
  `metamodel_jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `metamodel_donotindex` char(1) NOT NULL DEFAULT '',
  `metamodel_fef_hideclearfilter` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Daten für Tabelle `tl_module`
--

INSERT INTO `tl_module` (`id`, `pid`, `tstamp`, `name`, `headline`, `type`, `levelOffset`, `showLevel`, `hardLimit`, `showProtected`, `defineRoot`, `rootPage`, `navigationTpl`, `pages`, `showHidden`, `customLabel`, `autologin`, `jumpTo`, `redirectBack`, `cols`, `editable`, `memberTpl`, `tableless`, `form`, `searchType`, `fuzzy`, `contextLength`, `totalLength`, `perPage`, `queryType`, `searchTpl`, `inColumn`, `skipFirst`, `loadFirst`, `size`, `transparent`, `flashvars`, `altContent`, `source`, `singleSRC`, `url`, `interactive`, `flashID`, `flashJS`, `imgSize`, `useCaption`, `fullsize`, `multiSRC`, `html`, `protected`, `groups`, `guests`, `cssID`, `space`, `cal_calendar`, `cal_noSpan`, `cal_startDay`, `cal_format`, `cal_ignoreDynamic`, `cal_order`, `cal_readerModule`, `cal_limit`, `cal_template`, `cal_ctemplate`, `cal_showQuantity`, `com_order`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `faq_categories`, `faq_readerModule`, `list_table`, `list_fields`, `list_where`, `list_sort`, `list_search`, `list_info`, `list_info_where`, `list_layout`, `list_info_layout`, `news_archives`, `news_featured`, `news_numberOfItems`, `news_jumpToCurrent`, `news_readerModule`, `news_metaFields`, `news_template`, `news_format`, `news_startDay`, `news_order`, `news_showQuantity`, `newsletters`, `nl_channels`, `nl_hideChannels`, `nl_subscribe`, `nl_unsubscribe`, `nl_template`, `disableCaptcha`, `reg_groups`, `reg_allowLogin`, `reg_skipName`, `reg_assignDir`, `reg_close`, `reg_homeDir`, `reg_activate`, `reg_jumpTo`, `reg_text`, `reg_password`, `rss_cache`, `rss_feed`, `rss_numberOfItems`, `rss_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(7, 1, 1368285935, 'Artikel - Movie Liste', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'metamodel_list', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'simple', '', 48, 1000, 0, 'and', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', 3, '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', NULL, '', '', '', '', '', '', 0, NULL, NULL, 3600, NULL, 3, 'rss_default', 3, 'mod_metamodel_list', '', 0, 0, 'rating', 'DESC', 5, 7, '', NULL, '1', NULL, 'event_full', 0, '', '');
INSERT INTO `tl_module` (`id`, `pid`, `tstamp`, `name`, `headline`, `type`, `levelOffset`, `showLevel`, `hardLimit`, `showProtected`, `defineRoot`, `rootPage`, `navigationTpl`, `pages`, `showHidden`, `customLabel`, `autologin`, `jumpTo`, `redirectBack`, `cols`, `editable`, `memberTpl`, `tableless`, `form`, `searchType`, `fuzzy`, `contextLength`, `totalLength`, `perPage`, `queryType`, `searchTpl`, `inColumn`, `skipFirst`, `loadFirst`, `size`, `transparent`, `flashvars`, `altContent`, `source`, `singleSRC`, `url`, `interactive`, `flashID`, `flashJS`, `imgSize`, `useCaption`, `fullsize`, `multiSRC`, `html`, `protected`, `groups`, `guests`, `cssID`, `space`, `cal_calendar`, `cal_noSpan`, `cal_startDay`, `cal_format`, `cal_ignoreDynamic`, `cal_order`, `cal_readerModule`, `cal_limit`, `cal_template`, `cal_ctemplate`, `cal_showQuantity`, `com_order`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `faq_categories`, `faq_readerModule`, `list_table`, `list_fields`, `list_where`, `list_sort`, `list_search`, `list_info`, `list_info_where`, `list_layout`, `list_info_layout`, `news_archives`, `news_featured`, `news_numberOfItems`, `news_jumpToCurrent`, `news_readerModule`, `news_metaFields`, `news_template`, `news_format`, `news_startDay`, `news_order`, `news_showQuantity`, `newsletters`, `nl_channels`, `nl_hideChannels`, `nl_subscribe`, `nl_unsubscribe`, `nl_template`, `disableCaptcha`, `reg_groups`, `reg_allowLogin`, `reg_skipName`, `reg_assignDir`, `reg_close`, `reg_homeDir`, `reg_activate`, `reg_jumpTo`, `reg_text`, `reg_password`, `rss_cache`, `rss_feed`, `rss_numberOfItems`, `rss_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(5, 1, 1368274168, 'Header - Logo', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'simple', '', 48, 1000, 0, 'and', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, '<!-- indexer::stop -->\n<h1>\n  <a href="{{env::path}}">Movie<strong>Database</strong>\n    <span>An official MetaModels Demo</span>\n  </a>\n</h1>\n<!-- indexer::continue -->', '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', 3, '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', NULL, '', '', '', '', '', '', 0, NULL, NULL, 3600, NULL, 3, 'rss_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'event_full', 0, '', '');
INSERT INTO `tl_module` (`id`, `pid`, `tstamp`, `name`, `headline`, `type`, `levelOffset`, `showLevel`, `hardLimit`, `showProtected`, `defineRoot`, `rootPage`, `navigationTpl`, `pages`, `showHidden`, `customLabel`, `autologin`, `jumpTo`, `redirectBack`, `cols`, `editable`, `memberTpl`, `tableless`, `form`, `searchType`, `fuzzy`, `contextLength`, `totalLength`, `perPage`, `queryType`, `searchTpl`, `inColumn`, `skipFirst`, `loadFirst`, `size`, `transparent`, `flashvars`, `altContent`, `source`, `singleSRC`, `url`, `interactive`, `flashID`, `flashJS`, `imgSize`, `useCaption`, `fullsize`, `multiSRC`, `html`, `protected`, `groups`, `guests`, `cssID`, `space`, `cal_calendar`, `cal_noSpan`, `cal_startDay`, `cal_format`, `cal_ignoreDynamic`, `cal_order`, `cal_readerModule`, `cal_limit`, `cal_template`, `cal_ctemplate`, `cal_showQuantity`, `com_order`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `faq_categories`, `faq_readerModule`, `list_table`, `list_fields`, `list_where`, `list_sort`, `list_search`, `list_info`, `list_info_where`, `list_layout`, `list_info_layout`, `news_archives`, `news_featured`, `news_numberOfItems`, `news_jumpToCurrent`, `news_readerModule`, `news_metaFields`, `news_template`, `news_format`, `news_startDay`, `news_order`, `news_showQuantity`, `newsletters`, `nl_channels`, `nl_hideChannels`, `nl_subscribe`, `nl_unsubscribe`, `nl_template`, `disableCaptcha`, `reg_groups`, `reg_allowLogin`, `reg_skipName`, `reg_assignDir`, `reg_close`, `reg_homeDir`, `reg_activate`, `reg_jumpTo`, `reg_text`, `reg_password`, `rss_cache`, `rss_feed`, `rss_numberOfItems`, `rss_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(6, 1, 1367271828, 'Footer - Copyright', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'simple', '', 48, 1000, 0, 'and', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, '<p>© {{date::Y}} <a href="http://now.metamodel.me/en/about/community">MetaModels Team</a>. All rights reserved.</p>', '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', 3, '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', NULL, '', '', '', '', '', '', 0, NULL, NULL, 3600, NULL, 3, 'rss_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'event_full', 0, '', '');
INSERT INTO `tl_module` (`id`, `pid`, `tstamp`, `name`, `headline`, `type`, `levelOffset`, `showLevel`, `hardLimit`, `showProtected`, `defineRoot`, `rootPage`, `navigationTpl`, `pages`, `showHidden`, `customLabel`, `autologin`, `jumpTo`, `redirectBack`, `cols`, `editable`, `memberTpl`, `tableless`, `form`, `searchType`, `fuzzy`, `contextLength`, `totalLength`, `perPage`, `queryType`, `searchTpl`, `inColumn`, `skipFirst`, `loadFirst`, `size`, `transparent`, `flashvars`, `altContent`, `source`, `singleSRC`, `url`, `interactive`, `flashID`, `flashJS`, `imgSize`, `useCaption`, `fullsize`, `multiSRC`, `html`, `protected`, `groups`, `guests`, `cssID`, `space`, `cal_calendar`, `cal_noSpan`, `cal_startDay`, `cal_format`, `cal_ignoreDynamic`, `cal_order`, `cal_readerModule`, `cal_limit`, `cal_template`, `cal_ctemplate`, `cal_showQuantity`, `com_order`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `faq_categories`, `faq_readerModule`, `list_table`, `list_fields`, `list_where`, `list_sort`, `list_search`, `list_info`, `list_info_where`, `list_layout`, `list_info_layout`, `news_archives`, `news_featured`, `news_numberOfItems`, `news_jumpToCurrent`, `news_readerModule`, `news_metaFields`, `news_template`, `news_format`, `news_startDay`, `news_order`, `news_showQuantity`, `newsletters`, `nl_channels`, `nl_hideChannels`, `nl_subscribe`, `nl_unsubscribe`, `nl_template`, `disableCaptcha`, `reg_groups`, `reg_allowLogin`, `reg_skipName`, `reg_assignDir`, `reg_close`, `reg_homeDir`, `reg_activate`, `reg_jumpTo`, `reg_text`, `reg_password`, `rss_cache`, `rss_feed`, `rss_numberOfItems`, `rss_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(8, 1, 1367917558, 'Artikel - Filter Genre', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'metamodels_frontendfilter', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'simple', '', 48, 1000, 0, 'and', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', 3, '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', NULL, '', '', '', '', '', '', 0, NULL, NULL, 3600, NULL, 3, 'rss_default', 3, '', '', 0, 0, '', '', 5, 0, '', NULL, '1', 0x613a313a7b693a303b733a353a2267656e7265223b7d, 'mm_filter_default', 12, '', '1');
INSERT INTO `tl_module` (`id`, `pid`, `tstamp`, `name`, `headline`, `type`, `levelOffset`, `showLevel`, `hardLimit`, `showProtected`, `defineRoot`, `rootPage`, `navigationTpl`, `pages`, `showHidden`, `customLabel`, `autologin`, `jumpTo`, `redirectBack`, `cols`, `editable`, `memberTpl`, `tableless`, `form`, `searchType`, `fuzzy`, `contextLength`, `totalLength`, `perPage`, `queryType`, `searchTpl`, `inColumn`, `skipFirst`, `loadFirst`, `size`, `transparent`, `flashvars`, `altContent`, `source`, `singleSRC`, `url`, `interactive`, `flashID`, `flashJS`, `imgSize`, `useCaption`, `fullsize`, `multiSRC`, `html`, `protected`, `groups`, `guests`, `cssID`, `space`, `cal_calendar`, `cal_noSpan`, `cal_startDay`, `cal_format`, `cal_ignoreDynamic`, `cal_order`, `cal_readerModule`, `cal_limit`, `cal_template`, `cal_ctemplate`, `cal_showQuantity`, `com_order`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `faq_categories`, `faq_readerModule`, `list_table`, `list_fields`, `list_where`, `list_sort`, `list_search`, `list_info`, `list_info_where`, `list_layout`, `list_info_layout`, `news_archives`, `news_featured`, `news_numberOfItems`, `news_jumpToCurrent`, `news_readerModule`, `news_metaFields`, `news_template`, `news_format`, `news_startDay`, `news_order`, `news_showQuantity`, `newsletters`, `nl_channels`, `nl_hideChannels`, `nl_subscribe`, `nl_unsubscribe`, `nl_template`, `disableCaptcha`, `reg_groups`, `reg_allowLogin`, `reg_skipName`, `reg_assignDir`, `reg_close`, `reg_homeDir`, `reg_activate`, `reg_jumpTo`, `reg_text`, `reg_password`, `rss_cache`, `rss_feed`, `rss_numberOfItems`, `rss_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(9, 1, 1367865940, 'Artikel - Movie Details Main', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'metamodel_list', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'simple', '', 48, 1000, 0, 'and', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', 3, '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', NULL, '', '', '', '', '', '', 0, NULL, NULL, 3600, NULL, 3, 'rss_default', 3, 'mod_metamodel_list', '', 0, 0, '', 'ASC', 6, 8, '', NULL, '1', NULL, 'event_full', 0, '', '');
INSERT INTO `tl_module` (`id`, `pid`, `tstamp`, `name`, `headline`, `type`, `levelOffset`, `showLevel`, `hardLimit`, `showProtected`, `defineRoot`, `rootPage`, `navigationTpl`, `pages`, `showHidden`, `customLabel`, `autologin`, `jumpTo`, `redirectBack`, `cols`, `editable`, `memberTpl`, `tableless`, `form`, `searchType`, `fuzzy`, `contextLength`, `totalLength`, `perPage`, `queryType`, `searchTpl`, `inColumn`, `skipFirst`, `loadFirst`, `size`, `transparent`, `flashvars`, `altContent`, `source`, `singleSRC`, `url`, `interactive`, `flashID`, `flashJS`, `imgSize`, `useCaption`, `fullsize`, `multiSRC`, `html`, `protected`, `groups`, `guests`, `cssID`, `space`, `cal_calendar`, `cal_noSpan`, `cal_startDay`, `cal_format`, `cal_ignoreDynamic`, `cal_order`, `cal_readerModule`, `cal_limit`, `cal_template`, `cal_ctemplate`, `cal_showQuantity`, `com_order`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `faq_categories`, `faq_readerModule`, `list_table`, `list_fields`, `list_where`, `list_sort`, `list_search`, `list_info`, `list_info_where`, `list_layout`, `list_info_layout`, `news_archives`, `news_featured`, `news_numberOfItems`, `news_jumpToCurrent`, `news_readerModule`, `news_metaFields`, `news_template`, `news_format`, `news_startDay`, `news_order`, `news_showQuantity`, `newsletters`, `nl_channels`, `nl_hideChannels`, `nl_subscribe`, `nl_unsubscribe`, `nl_template`, `disableCaptcha`, `reg_groups`, `reg_allowLogin`, `reg_skipName`, `reg_assignDir`, `reg_close`, `reg_homeDir`, `reg_activate`, `reg_jumpTo`, `reg_text`, `reg_password`, `rss_cache`, `rss_feed`, `rss_numberOfItems`, `rss_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(10, 1, 1367865961, 'Artikel - Movie Details Sidebar', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'metamodel_list', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'simple', '', 48, 1000, 0, 'and', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', 3, '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', NULL, '', '', '', '', '', '', 0, NULL, NULL, 3600, NULL, 3, 'rss_default', 3, 'mod_metamodel_list', '', 0, 0, '', 'ASC', 6, 9, '', NULL, '1', NULL, 'event_full', 0, '', '');
INSERT INTO `tl_module` (`id`, `pid`, `tstamp`, `name`, `headline`, `type`, `levelOffset`, `showLevel`, `hardLimit`, `showProtected`, `defineRoot`, `rootPage`, `navigationTpl`, `pages`, `showHidden`, `customLabel`, `autologin`, `jumpTo`, `redirectBack`, `cols`, `editable`, `memberTpl`, `tableless`, `form`, `searchType`, `fuzzy`, `contextLength`, `totalLength`, `perPage`, `queryType`, `searchTpl`, `inColumn`, `skipFirst`, `loadFirst`, `size`, `transparent`, `flashvars`, `altContent`, `source`, `singleSRC`, `url`, `interactive`, `flashID`, `flashJS`, `imgSize`, `useCaption`, `fullsize`, `multiSRC`, `html`, `protected`, `groups`, `guests`, `cssID`, `space`, `cal_calendar`, `cal_noSpan`, `cal_startDay`, `cal_format`, `cal_ignoreDynamic`, `cal_order`, `cal_readerModule`, `cal_limit`, `cal_template`, `cal_ctemplate`, `cal_showQuantity`, `com_order`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `faq_categories`, `faq_readerModule`, `list_table`, `list_fields`, `list_where`, `list_sort`, `list_search`, `list_info`, `list_info_where`, `list_layout`, `list_info_layout`, `news_archives`, `news_featured`, `news_numberOfItems`, `news_jumpToCurrent`, `news_readerModule`, `news_metaFields`, `news_template`, `news_format`, `news_startDay`, `news_order`, `news_showQuantity`, `newsletters`, `nl_channels`, `nl_hideChannels`, `nl_subscribe`, `nl_unsubscribe`, `nl_template`, `disableCaptcha`, `reg_groups`, `reg_allowLogin`, `reg_skipName`, `reg_assignDir`, `reg_close`, `reg_homeDir`, `reg_activate`, `reg_jumpTo`, `reg_text`, `reg_password`, `rss_cache`, `rss_feed`, `rss_numberOfItems`, `rss_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(11, 1, 1367876450, 'Header - Switcher', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'simple', '', 48, 1000, 0, 'and', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, '<div id="layoutswitch">\n  <p>Switch layout</p>\n  <ul>\n    <li>Full</li>\n    <li>Small</li>\n  </ul>\n</div>', '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', 3, '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', NULL, '', '', '', '', '', '', 0, NULL, NULL, 3600, NULL, 3, 'rss_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'event_full', 0, '', '');
INSERT INTO `tl_module` (`id`, `pid`, `tstamp`, `name`, `headline`, `type`, `levelOffset`, `showLevel`, `hardLimit`, `showProtected`, `defineRoot`, `rootPage`, `navigationTpl`, `pages`, `showHidden`, `customLabel`, `autologin`, `jumpTo`, `redirectBack`, `cols`, `editable`, `memberTpl`, `tableless`, `form`, `searchType`, `fuzzy`, `contextLength`, `totalLength`, `perPage`, `queryType`, `searchTpl`, `inColumn`, `skipFirst`, `loadFirst`, `size`, `transparent`, `flashvars`, `altContent`, `source`, `singleSRC`, `url`, `interactive`, `flashID`, `flashJS`, `imgSize`, `useCaption`, `fullsize`, `multiSRC`, `html`, `protected`, `groups`, `guests`, `cssID`, `space`, `cal_calendar`, `cal_noSpan`, `cal_startDay`, `cal_format`, `cal_ignoreDynamic`, `cal_order`, `cal_readerModule`, `cal_limit`, `cal_template`, `cal_ctemplate`, `cal_showQuantity`, `com_order`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `faq_categories`, `faq_readerModule`, `list_table`, `list_fields`, `list_where`, `list_sort`, `list_search`, `list_info`, `list_info_where`, `list_layout`, `list_info_layout`, `news_archives`, `news_featured`, `news_numberOfItems`, `news_jumpToCurrent`, `news_readerModule`, `news_metaFields`, `news_template`, `news_format`, `news_startDay`, `news_order`, `news_showQuantity`, `newsletters`, `nl_channels`, `nl_hideChannels`, `nl_subscribe`, `nl_unsubscribe`, `nl_template`, `disableCaptcha`, `reg_groups`, `reg_allowLogin`, `reg_skipName`, `reg_assignDir`, `reg_close`, `reg_homeDir`, `reg_activate`, `reg_jumpTo`, `reg_text`, `reg_password`, `rss_cache`, `rss_feed`, `rss_numberOfItems`, `rss_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(12, 1, 1367939253, 'Artikel - Filter Director', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'metamodels_frontendfilter', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'simple', '', 48, 1000, 0, 'and', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', 3, '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', NULL, '', '', '', '', '', '', 0, NULL, NULL, 3600, NULL, 3, 'rss_default', 3, '', '', 0, 0, '', '', 5, 0, '', NULL, '1', 0x613a313a7b693a303b733a31313a2264697265637465642d6279223b7d, 'mm_filter_default', 12, '', '1');
INSERT INTO `tl_module` (`id`, `pid`, `tstamp`, `name`, `headline`, `type`, `levelOffset`, `showLevel`, `hardLimit`, `showProtected`, `defineRoot`, `rootPage`, `navigationTpl`, `pages`, `showHidden`, `customLabel`, `autologin`, `jumpTo`, `redirectBack`, `cols`, `editable`, `memberTpl`, `tableless`, `form`, `searchType`, `fuzzy`, `contextLength`, `totalLength`, `perPage`, `queryType`, `searchTpl`, `inColumn`, `skipFirst`, `loadFirst`, `size`, `transparent`, `flashvars`, `altContent`, `source`, `singleSRC`, `url`, `interactive`, `flashID`, `flashJS`, `imgSize`, `useCaption`, `fullsize`, `multiSRC`, `html`, `protected`, `groups`, `guests`, `cssID`, `space`, `cal_calendar`, `cal_noSpan`, `cal_startDay`, `cal_format`, `cal_ignoreDynamic`, `cal_order`, `cal_readerModule`, `cal_limit`, `cal_template`, `cal_ctemplate`, `cal_showQuantity`, `com_order`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `faq_categories`, `faq_readerModule`, `list_table`, `list_fields`, `list_where`, `list_sort`, `list_search`, `list_info`, `list_info_where`, `list_layout`, `list_info_layout`, `news_archives`, `news_featured`, `news_numberOfItems`, `news_jumpToCurrent`, `news_readerModule`, `news_metaFields`, `news_template`, `news_format`, `news_startDay`, `news_order`, `news_showQuantity`, `newsletters`, `nl_channels`, `nl_hideChannels`, `nl_subscribe`, `nl_unsubscribe`, `nl_template`, `disableCaptcha`, `reg_groups`, `reg_allowLogin`, `reg_skipName`, `reg_assignDir`, `reg_close`, `reg_homeDir`, `reg_activate`, `reg_jumpTo`, `reg_text`, `reg_password`, `rss_cache`, `rss_feed`, `rss_numberOfItems`, `rss_template`, `metamodel`, `metamodel_layout`, `metamodel_use_limit`, `metamodel_limit`, `metamodel_offset`, `metamodel_sortby`, `metamodel_sortby_direction`, `metamodel_filtering`, `metamodel_rendersettings`, `metamodel_noparsing`, `metamodel_filterparams`, `metamodel_fef_autosubmit`, `metamodel_fef_params`, `metamodel_fef_template`, `metamodel_jumpTo`, `metamodel_donotindex`, `metamodel_fef_hideclearfilter`) VALUES(14, 1, 1367964243, 'Artikel - Clear all filter', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'metamodels_frontendclearall', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'simple', '', 48, 1000, 0, 'and', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', 3, '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', NULL, '', '', '', '', '', '', 0, NULL, NULL, 3600, NULL, 3, 'rss_default', 0, '', '', 0, 0, '', '', 0, 0, '', NULL, '1', NULL, 'mm_filter_clearall', 0, '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_news`
--

CREATE TABLE IF NOT EXISTS `tl_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `alias` varbinary(128) NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `subheadline` varchar(255) NOT NULL DEFAULT '',
  `teaser` text,
  `text` mediumtext,
  `addImage` char(1) NOT NULL DEFAULT '',
  `singleSRC` varchar(255) NOT NULL DEFAULT '',
  `alt` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(255) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(32) NOT NULL DEFAULT '',
  `addEnclosure` char(1) NOT NULL DEFAULT '',
  `enclosure` blob,
  `source` varchar(32) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `articleId` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(255) NOT NULL DEFAULT '',
  `noComments` char(1) NOT NULL DEFAULT '',
  `featured` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_news`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_newsletter`
--

CREATE TABLE IF NOT EXISTS `tl_newsletter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `alias` varbinary(128) NOT NULL DEFAULT '',
  `content` text,
  `text` text,
  `addFile` char(1) NOT NULL DEFAULT '',
  `files` blob,
  `template` varchar(32) NOT NULL DEFAULT '',
  `sendText` char(1) NOT NULL DEFAULT '',
  `externalImages` char(1) NOT NULL DEFAULT '',
  `sender` varchar(128) NOT NULL DEFAULT '',
  `senderName` varchar(128) NOT NULL DEFAULT '',
  `sent` char(1) NOT NULL DEFAULT '',
  `date` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_newsletter`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_newsletter_channel`
--

CREATE TABLE IF NOT EXISTS `tl_newsletter_channel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `useSMTP` char(1) NOT NULL DEFAULT '',
  `smtpHost` varchar(64) NOT NULL DEFAULT '',
  `smtpUser` varchar(128) NOT NULL DEFAULT '',
  `smtpPass` varchar(32) NOT NULL DEFAULT '',
  `smtpPort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `smtpEnc` varchar(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_newsletter_channel`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_newsletter_recipients`
--

CREATE TABLE IF NOT EXISTS `tl_newsletter_recipients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `active` char(1) NOT NULL DEFAULT '',
  `addedOn` varchar(10) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `token` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_newsletter_recipients`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_news_archive`
--

CREATE TABLE IF NOT EXISTS `tl_news_archive` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `allowComments` char(1) NOT NULL DEFAULT '',
  `notify` varchar(32) NOT NULL DEFAULT '',
  `sortOrder` varchar(32) NOT NULL DEFAULT '',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moderate` char(1) NOT NULL DEFAULT '',
  `bbcode` char(1) NOT NULL DEFAULT '',
  `requireLogin` char(1) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `makeFeed` char(1) NOT NULL DEFAULT '',
  `format` varchar(32) NOT NULL DEFAULT '',
  `language` varchar(32) NOT NULL DEFAULT '',
  `source` varchar(32) NOT NULL DEFAULT '',
  `maxItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `feedBase` varchar(255) NOT NULL DEFAULT '',
  `alias` varbinary(128) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_news_archive`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_page`
--

CREATE TABLE IF NOT EXISTS `tl_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varbinary(128) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `pageTitle` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(2) NOT NULL DEFAULT '',
  `robots` varchar(32) NOT NULL DEFAULT '',
  `description` text,
  `redirect` varchar(32) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `fallback` char(1) NOT NULL DEFAULT '',
  `dns` varchar(255) NOT NULL DEFAULT '',
  `staticFiles` varchar(255) NOT NULL DEFAULT '',
  `staticSystem` varchar(255) NOT NULL DEFAULT '',
  `staticPlugins` varchar(255) NOT NULL DEFAULT '',
  `adminEmail` varchar(255) NOT NULL DEFAULT '',
  `dateFormat` varchar(32) NOT NULL DEFAULT '',
  `timeFormat` varchar(32) NOT NULL DEFAULT '',
  `datimFormat` varchar(32) NOT NULL DEFAULT '',
  `createSitemap` char(1) NOT NULL DEFAULT '',
  `sitemapName` varchar(32) NOT NULL DEFAULT '',
  `useSSL` char(1) NOT NULL DEFAULT '',
  `autoforward` char(1) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `includeLayout` char(1) NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `includeCache` char(1) NOT NULL DEFAULT '',
  `cache` int(10) unsigned NOT NULL DEFAULT '0',
  `includeChmod` char(1) NOT NULL DEFAULT '',
  `cuser` int(10) unsigned NOT NULL DEFAULT '0',
  `cgroup` int(10) unsigned NOT NULL DEFAULT '0',
  `chmod` varchar(255) NOT NULL DEFAULT '',
  `noSearch` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(64) NOT NULL DEFAULT '',
  `sitemap` varchar(32) NOT NULL DEFAULT '',
  `hide` char(1) NOT NULL DEFAULT '',
  `guests` char(1) NOT NULL DEFAULT '',
  `tabindex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accesskey` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `alias` (`alias`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Daten für Tabelle `tl_page`
--

INSERT INTO `tl_page` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `type`, `pageTitle`, `language`, `robots`, `description`, `redirect`, `jumpTo`, `url`, `target`, `fallback`, `dns`, `staticFiles`, `staticSystem`, `staticPlugins`, `adminEmail`, `dateFormat`, `timeFormat`, `datimFormat`, `createSitemap`, `sitemapName`, `useSSL`, `autoforward`, `protected`, `groups`, `includeLayout`, `layout`, `includeCache`, `cache`, `includeChmod`, `cuser`, `cgroup`, `chmod`, `noSearch`, `cssClass`, `sitemap`, `hide`, `guests`, `tabindex`, `accesskey`, `published`, `start`, `stop`) VALUES(1, 0, 128, 1368274150, 'MetaModels', 'metamodels', 'root', 'Movie Database - An official MetaModels Demo', 'en', '', '', 'permanent', 0, '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', '', '', '', 0, '', '1', '', '');
INSERT INTO `tl_page` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `type`, `pageTitle`, `language`, `robots`, `description`, `redirect`, `jumpTo`, `url`, `target`, `fallback`, `dns`, `staticFiles`, `staticSystem`, `staticPlugins`, `adminEmail`, `dateFormat`, `timeFormat`, `datimFormat`, `createSitemap`, `sitemapName`, `useSSL`, `autoforward`, `protected`, `groups`, `includeLayout`, `layout`, `includeCache`, `cache`, `includeChmod`, `cuser`, `cgroup`, `chmod`, `noSearch`, `cssClass`, `sitemap`, `hide`, `guests`, `tabindex`, `accesskey`, `published`, `start`, `stop`) VALUES(3, 1, 256, 1368273847, 'Index', 'index', 'regular', 'Start', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', 'start', 'map_default', '', '', 0, '', '1', '1368090900', '');
INSERT INTO `tl_page` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `type`, `pageTitle`, `language`, `robots`, `description`, `redirect`, `jumpTo`, `url`, `target`, `fallback`, `dns`, `staticFiles`, `staticSystem`, `staticPlugins`, `adminEmail`, `dateFormat`, `timeFormat`, `datimFormat`, `createSitemap`, `sitemapName`, `useSSL`, `autoforward`, `protected`, `groups`, `includeLayout`, `layout`, `includeCache`, `cache`, `includeChmod`, `cuser`, `cgroup`, `chmod`, `noSearch`, `cssClass`, `sitemap`, `hide`, `guests`, `tabindex`, `accesskey`, `published`, `start`, `stop`) VALUES(12, 1, 512, 1368056718, 'And filter me', 'and-filter-me', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '1368090900', '');
INSERT INTO `tl_page` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `type`, `pageTitle`, `language`, `robots`, `description`, `redirect`, `jumpTo`, `url`, `target`, `fallback`, `dns`, `staticFiles`, `staticSystem`, `staticPlugins`, `adminEmail`, `dateFormat`, `timeFormat`, `datimFormat`, `createSitemap`, `sitemapName`, `useSSL`, `autoforward`, `protected`, `groups`, `includeLayout`, `layout`, `includeCache`, `cache`, `includeChmod`, `cuser`, `cgroup`, `chmod`, `noSearch`, `cssClass`, `sitemap`, `hide`, `guests`, `tabindex`, `accesskey`, `published`, `start`, `stop`) VALUES(11, 1, 384, 1368056705, 'And show me', 'and-show-me', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '1368090900', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_repository_installs`
--

CREATE TABLE IF NOT EXISTS `tl_repository_installs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL DEFAULT '',
  `version` int(9) NOT NULL DEFAULT '0',
  `build` int(9) NOT NULL DEFAULT '0',
  `alpha` char(1) NOT NULL DEFAULT '',
  `beta` char(1) NOT NULL DEFAULT '',
  `rc` char(1) NOT NULL DEFAULT '',
  `stable` char(1) NOT NULL DEFAULT '1',
  `lickey` varchar(255) NOT NULL DEFAULT '',
  `delprot` char(1) NOT NULL DEFAULT '',
  `updprot` char(1) NOT NULL DEFAULT '',
  `error` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Daten für Tabelle `tl_repository_installs`
--

INSERT INTO `tl_repository_installs` (`id`, `tstamp`, `extension`, `version`, `build`, `alpha`, `beta`, `rc`, `stable`, `lickey`, `delprot`, `updprot`, `error`) VALUES(10, 1367865374, 'MultiColumnWizard', 30010009, 3, '0', '1', '1', '1', '', '', '', '');
INSERT INTO `tl_repository_installs` (`id`, `tstamp`, `extension`, `version`, `build`, `alpha`, `beta`, `rc`, `stable`, `lickey`, `delprot`, `updprot`, `error`) VALUES(15, 1367171449, 'MetaPalettes', 10030109, 1, '0', '0', '0', '1', '', '', '', '');
INSERT INTO `tl_repository_installs` (`id`, `tstamp`, `extension`, `version`, `build`, `alpha`, `beta`, `rc`, `stable`, `lickey`, `delprot`, `updprot`, `error`) VALUES(20, 1367171412, 'DC_General', 90003, 16, '0', '1', '1', '1', '', '', '', '');
INSERT INTO `tl_repository_installs` (`id`, `tstamp`, `extension`, `version`, `build`, `alpha`, `beta`, `rc`, `stable`, `lickey`, `delprot`, `updprot`, `error`) VALUES(26, 1367802229, 'simple_ajax', 10000009, 10, '0', '0', '0', '1', '', '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_repository_instfiles`
--

CREATE TABLE IF NOT EXISTS `tl_repository_instfiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filetype` char(1) NOT NULL DEFAULT 'F',
  `flag` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=727 ;

--
-- Daten für Tabelle `tl_repository_instfiles`
--

INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(573, 20, 1367171412, 'system/drivers/DC_General.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(575, 20, 1367171412, 'system/modules/generalDriver/DC_General.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(574, 20, 1367171412, 'system/modules/generalDriver/DCGE.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(319, 10, 1367865374, 'system/modules/multicolumnwizard/LICENSE.txt', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(320, 10, 1367865374, 'system/modules/multicolumnwizard/MultiColumnWizard.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(321, 10, 1367865374, 'system/modules/multicolumnwizard/config/.htaccess', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(322, 10, 1367865374, 'system/modules/multicolumnwizard/config/autoload.ini', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(323, 10, 1367865374, 'system/modules/multicolumnwizard/config/autoload.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(324, 10, 1367865374, 'system/modules/multicolumnwizard/config/config.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(325, 10, 1367865374, 'system/modules/multicolumnwizard/html/.htaccess', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(326, 10, 1367865374, 'system/modules/multicolumnwizard/html/css/multicolumnwizard.css', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(327, 10, 1367865374, 'system/modules/multicolumnwizard/html/css/multicolumnwizard_src.css', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(328, 10, 1367865374, 'system/modules/multicolumnwizard/html/img/datepicker.gif', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(329, 10, 1367865374, 'system/modules/multicolumnwizard/html/img/move.png', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(330, 10, 1367865374, 'system/modules/multicolumnwizard/html/js/multicolumnwizard_be.js', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(331, 10, 1367865374, 'system/modules/multicolumnwizard/html/js/multicolumnwizard_be_src.js', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(468, 15, 1367171449, 'system/modules/metapalettes/MetaPalettes.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(469, 15, 1367171449, 'system/modules/metapalettes/config/autoload.ini', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(470, 15, 1367171449, 'system/modules/metapalettes/config/autoload.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(471, 15, 1367171449, 'system/modules/metapalettes/config/config.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(576, 20, 1367171412, 'system/modules/generalDriver/GeneralAjax.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(577, 20, 1367171412, 'system/modules/generalDriver/GeneralCallbackDefault.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(578, 20, 1367171412, 'system/modules/generalDriver/GeneralCollectionDefault.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(579, 20, 1367171412, 'system/modules/generalDriver/GeneralControllerDefault.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(580, 20, 1367171412, 'system/modules/generalDriver/GeneralDataConfigDefault.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(581, 20, 1367171412, 'system/modules/generalDriver/GeneralDataDefault.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(582, 20, 1367171412, 'system/modules/generalDriver/GeneralDataMultiLanguageDefault.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(583, 20, 1367171412, 'system/modules/generalDriver/GeneralDataTableRowsAsRecords.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(584, 20, 1367171412, 'system/modules/generalDriver/GeneralModelDefault.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(585, 20, 1367171412, 'system/modules/generalDriver/GeneralViewDefault.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(586, 20, 1367171412, 'system/modules/generalDriver/InterfaceGeneralCallback.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(587, 20, 1367171412, 'system/modules/generalDriver/InterfaceGeneralCollection.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(588, 20, 1367171412, 'system/modules/generalDriver/InterfaceGeneralController.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(589, 20, 1367171412, 'system/modules/generalDriver/InterfaceGeneralData.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(590, 20, 1367171412, 'system/modules/generalDriver/InterfaceGeneralDataConfig.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(591, 20, 1367171412, 'system/modules/generalDriver/InterfaceGeneralDataMultiLanguage.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(592, 20, 1367171412, 'system/modules/generalDriver/InterfaceGeneralModel.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(593, 20, 1367171412, 'system/modules/generalDriver/InterfaceGeneralView.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(594, 20, 1367171412, 'system/modules/generalDriver/WidgetAccessor.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(595, 20, 1367171412, 'system/modules/generalDriver/config/.htaccess', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(596, 20, 1367171412, 'system/modules/generalDriver/config/autoload.ini', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(597, 20, 1367171412, 'system/modules/generalDriver/config/autoload.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(598, 20, 1367171412, 'system/modules/generalDriver/config/config.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(599, 20, 1367171412, 'system/modules/generalDriver/html/.htaccess', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(600, 20, 1367171412, 'system/modules/generalDriver/html/css/generalBreadcrumb.css', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(601, 20, 1367171412, 'system/modules/generalDriver/html/css/generalBreadcrumb_src.css', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(602, 20, 1367171412, 'system/modules/generalDriver/html/css/generalDriver.css', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(603, 20, 1367171412, 'system/modules/generalDriver/html/css/generalDriver_src.css', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(604, 20, 1367171412, 'system/modules/generalDriver/html/js/generalDriver.js', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(605, 20, 1367171412, 'system/modules/generalDriver/html/js/generalDriver_src.js', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(606, 20, 1367171412, 'system/modules/generalDriver/languages/de/default.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(607, 20, 1367171412, 'system/modules/generalDriver/languages/en/default.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(608, 20, 1367171412, 'system/modules/generalDriver/templates/.htaccess', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(609, 20, 1367171412, 'system/modules/generalDriver/templates/dcbe_general_breadcrumb.html5', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(610, 20, 1367171412, 'system/modules/generalDriver/templates/dcbe_general_edit.html5', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(611, 20, 1367171412, 'system/modules/generalDriver/templates/dcbe_general_field.html5', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(612, 20, 1367171412, 'system/modules/generalDriver/templates/dcbe_general_language_panel.html5', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(613, 20, 1367171412, 'system/modules/generalDriver/templates/dcbe_general_listView.html5', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(614, 20, 1367171412, 'system/modules/generalDriver/templates/dcbe_general_listView_sorting.html5', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(615, 20, 1367171412, 'system/modules/generalDriver/templates/dcbe_general_panel.html5', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(616, 20, 1367171412, 'system/modules/generalDriver/templates/dcbe_general_parentView.html5', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(617, 20, 1367171412, 'system/modules/generalDriver/templates/dcbe_general_show.html5', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(618, 20, 1367171412, 'system/modules/generalDriver/templates/dcbe_general_treeview.html5', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(619, 20, 1367171412, 'system/modules/generalDriver/templates/dcbe_general_treeview_child.html5', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(620, 20, 1367171412, 'system/modules/generalDriver/templates/dcbe_general_treeview_entry.html5', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(621, 10, 1367865374, 'system/modules/multicolumnwizard/MultiColumnWizardHelper.php', 'F', '');
INSERT INTO `tl_repository_instfiles` (`id`, `pid`, `tstamp`, `filename`, `filetype`, `flag`) VALUES(722, 26, 1367802229, 'SimpleAjax.php', 'F', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_search`
--

CREATE TABLE IF NOT EXISTS `tl_search` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `text` mediumtext,
  `filesize` double unsigned NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `language` varchar(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `url` (`url`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `tl_search`
--

INSERT INTO `tl_search` (`id`, `pid`, `tstamp`, `title`, `url`, `text`, `filesize`, `checksum`, `protected`, `groups`, `language`) VALUES(1, 3, 1368303612, 'Start', 'en/', 'Start Genre More filter About Metamodels are the replacement for the famous catalog extension for Contao Open Source CMS with focus on flexibility and extendability. More information Links Twitter Manual Github Contact Data protection Django Unchained django-unchained 9.0 2013-01-16 Details Resident Evil resident-evil 8.0 2002-03-20 Details Pirates of the Caribbean pirates-of-the-caribbean 8.0 2003-09-01 Details Matrix matrix 8.0 1999-06-16 Details The Avengers the-avengers 7.5 2012-04-25 Details Iron Man iron-man 7.5 2008-04-30 Details Pulp Fiction pulp-fiction 7.0 1994-11-02 Details The Dark Knight the-dark-knight 7.0 2007-12-31 Details Hell hell 7.0 2011-09-21 Details Drive drive 7.0 2012-01-25 Details Se7en se7en 6.5 1995-11-22 Details Jumper jumper 6.5 2008-03-26 Details The Departed the-departed 5.0 2006-12-06 Details Fast and the Furious 5 fast-and-the-furious-5 2.5 2011-04-27 Details P.S. I Love You ps-i-love-you 1.5 2008-01-16 Details © 2013 MetaModels Team. All rights reserved. More filter,', 15.3, 'b5ea062db43a5e50c97dd1bb6de7519d', '', 0x30, 'en');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_search_index`
--

CREATE TABLE IF NOT EXISTS `tl_search_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `word` varbinary(64) NOT NULL DEFAULT '',
  `relevance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `language` varchar(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `word` (`word`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

--
-- Daten für Tabelle `tl_search_index`
--

INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(1, 1, 'start', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(2, 1, 'genre', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(3, 1, 'more', 3, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(4, 1, 'filter', 2, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(5, 1, 'about', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(6, 1, 'metamodels', 2, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(7, 1, 'are', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(8, 1, 'the', 7, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(9, 1, 'replacement', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(10, 1, 'for', 2, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(11, 1, 'famous', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(12, 1, 'catalog', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(13, 1, 'extension', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(14, 1, 'contao', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(15, 1, 'open', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(16, 1, 'source', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(17, 1, 'cms', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(18, 1, 'with', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(19, 1, 'focus', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(20, 1, 'on', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(21, 1, 'flexibility', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(22, 1, 'and', 2, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(23, 1, 'extendability', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(24, 1, 'information', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(25, 1, 'links', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(26, 1, 'twitter', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(27, 1, 'manual', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(28, 1, 'github', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(29, 1, 'contact', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(30, 1, 'data', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(31, 1, 'protection', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(32, 1, 'django', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(33, 1, 'unchained', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(34, 1, 'django-unchained', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(35, 1, '9.0', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(36, 1, '2013-01-16', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(37, 1, 'details', 15, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(38, 1, 'resident', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(39, 1, 'evil', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(40, 1, 'resident-evil', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(41, 1, '8.0', 3, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(42, 1, '2002-03-20', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(43, 1, 'pirates', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(44, 1, 'of', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(45, 1, 'caribbean', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(46, 1, 'pirates-of-the-caribbean', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(47, 1, '2003-09-01', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(48, 1, 'matrix', 2, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(49, 1, '1999-06-16', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(50, 1, 'avengers', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(51, 1, 'the-avengers', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(52, 1, '7.5', 2, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(53, 1, '2012-04-25', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(54, 1, 'iron', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(55, 1, 'man', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(56, 1, 'iron-man', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(57, 1, '2008-04-30', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(58, 1, 'pulp', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(59, 1, 'fiction', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(60, 1, 'pulp-fiction', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(61, 1, '7.0', 4, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(62, 1, '1994-11-02', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(63, 1, 'dark', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(64, 1, 'knight', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(65, 1, 'the-dark-knight', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(66, 1, '2007-12-31', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(67, 1, 'hell', 2, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(68, 1, '2011-09-21', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(69, 1, 'drive', 2, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(70, 1, '2012-01-25', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(71, 1, 'se7en', 2, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(72, 1, '6.5', 2, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(73, 1, '1995-11-22', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(74, 1, 'jumper', 2, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(75, 1, '2008-03-26', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(76, 1, 'departed', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(77, 1, 'the-departed', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(78, 1, '5.0', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(79, 1, '2006-12-06', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(80, 1, 'fast', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(81, 1, 'furious', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(82, 1, '5', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(83, 1, 'fast-and-the-furious-5', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(84, 1, '2.5', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(85, 1, '2011-04-27', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(86, 1, 'p.s', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(87, 1, 'i', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(88, 1, 'love', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(89, 1, 'you', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(90, 1, 'ps-i-love-you', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(91, 1, '1.5', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(92, 1, '2008-01-16', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(93, 1, '2013', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(94, 1, 'team', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(95, 1, 'all', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(96, 1, 'rights', 1, 'en');
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES(97, 1, 'reserved', 1, 'en');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_session`
--

CREATE TABLE IF NOT EXISTS `tl_session` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `sessionID` varchar(128) NOT NULL DEFAULT '',
  `hash` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_session`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_style`
--

CREATE TABLE IF NOT EXISTS `tl_style` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `invisible` char(1) NOT NULL DEFAULT '',
  `selector` varchar(255) NOT NULL DEFAULT '',
  `category` varchar(32) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `size` char(1) NOT NULL DEFAULT '',
  `width` varchar(64) NOT NULL DEFAULT '',
  `height` varchar(64) NOT NULL DEFAULT '',
  `minwidth` varchar(64) NOT NULL DEFAULT '',
  `minheight` varchar(64) NOT NULL DEFAULT '',
  `maxwidth` varchar(64) NOT NULL DEFAULT '',
  `maxheight` varchar(64) NOT NULL DEFAULT '',
  `positioning` char(1) NOT NULL DEFAULT '',
  `trbl` varchar(128) NOT NULL DEFAULT '',
  `position` varchar(32) NOT NULL DEFAULT '',
  `floating` varchar(32) NOT NULL DEFAULT '',
  `clear` varchar(32) NOT NULL DEFAULT '',
  `overflow` varchar(32) NOT NULL DEFAULT '',
  `display` varchar(32) NOT NULL DEFAULT '',
  `alignment` char(1) NOT NULL DEFAULT '',
  `margin` varchar(128) NOT NULL DEFAULT '',
  `padding` varchar(128) NOT NULL DEFAULT '',
  `align` varchar(32) NOT NULL DEFAULT '',
  `verticalalign` varchar(32) NOT NULL DEFAULT '',
  `textalign` varchar(32) NOT NULL DEFAULT '',
  `background` char(1) NOT NULL DEFAULT '',
  `bgcolor` varchar(64) NOT NULL DEFAULT '',
  `bgimage` varchar(255) NOT NULL DEFAULT '',
  `bgposition` varchar(32) NOT NULL DEFAULT '',
  `bgrepeat` varchar(32) NOT NULL DEFAULT '',
  `gradientAngle` varchar(32) NOT NULL DEFAULT '',
  `gradientColors` varchar(128) NOT NULL DEFAULT '',
  `shadowsize` varchar(128) NOT NULL DEFAULT '',
  `shadowcolor` varchar(64) NOT NULL DEFAULT '',
  `border` char(1) NOT NULL DEFAULT '',
  `borderwidth` varchar(128) NOT NULL DEFAULT '',
  `borderstyle` varchar(32) NOT NULL DEFAULT '',
  `bordercolor` varchar(64) NOT NULL DEFAULT '',
  `borderradius` varchar(128) NOT NULL DEFAULT '',
  `bordercollapse` varchar(32) NOT NULL DEFAULT '',
  `borderspacing` varchar(64) NOT NULL DEFAULT '',
  `font` char(1) NOT NULL DEFAULT '',
  `fontfamily` varchar(255) NOT NULL DEFAULT '',
  `fontsize` varchar(64) NOT NULL DEFAULT '',
  `fontcolor` varchar(64) NOT NULL DEFAULT '',
  `lineheight` varchar(64) NOT NULL DEFAULT '',
  `fontstyle` varchar(255) NOT NULL DEFAULT '',
  `whitespace` char(1) NOT NULL DEFAULT '',
  `texttransform` varchar(32) NOT NULL DEFAULT '',
  `textindent` varchar(64) NOT NULL DEFAULT '',
  `letterspacing` varchar(64) NOT NULL DEFAULT '',
  `wordspacing` varchar(64) NOT NULL DEFAULT '',
  `list` char(1) NOT NULL DEFAULT '',
  `liststyletype` varchar(32) NOT NULL DEFAULT '',
  `liststyleimage` varchar(255) NOT NULL DEFAULT '',
  `own` text,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `selector` (`selector`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=307 ;

--
-- Daten für Tabelle `tl_style`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_style_sheet`
--

CREATE TABLE IF NOT EXISTS `tl_style_sheet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `cc` varchar(32) NOT NULL DEFAULT '',
  `media` varchar(255) NOT NULL DEFAULT '',
  `mediaQuery` varchar(255) NOT NULL DEFAULT '',
  `vars` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Daten für Tabelle `tl_style_sheet`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_task`
--

CREATE TABLE IF NOT EXISTS `tl_task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(128) NOT NULL DEFAULT '',
  `deadline` int(10) unsigned NOT NULL DEFAULT '0',
  `createdBy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_task`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_task_status`
--

CREATE TABLE IF NOT EXISTS `tl_task_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `assignedTo` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(32) NOT NULL DEFAULT '',
  `progress` smallint(5) unsigned NOT NULL DEFAULT '0',
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_task_status`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_theme`
--

CREATE TABLE IF NOT EXISTS `tl_theme` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `author` varchar(128) NOT NULL DEFAULT '',
  `folders` blob,
  `templates` varchar(255) NOT NULL DEFAULT '',
  `screenshot` varchar(255) NOT NULL DEFAULT '',
  `vars` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `tl_theme`
--

INSERT INTO `tl_theme` (`id`, `tstamp`, `name`, `author`, `folders`, `templates`, `screenshot`, `vars`) VALUES(1, 1367876306, 'A movie database', 'Team Metamodels', 0x613a313a7b693a303b733a31373a22746c5f66696c65732f7374616e64617264223b7d, '', '', 'a:0:{}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_undo`
--

CREATE TABLE IF NOT EXISTS `tl_undo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `fromTable` varchar(255) NOT NULL DEFAULT '',
  `query` text,
  `affectedRows` smallint(5) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_undo`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_user`
--

CREATE TABLE IF NOT EXISTS `tl_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(2) NOT NULL DEFAULT '',
  `backendTheme` varchar(32) NOT NULL DEFAULT '',
  `uploader` varchar(32) NOT NULL DEFAULT '',
  `showHelp` char(1) NOT NULL DEFAULT '',
  `thumbnails` char(1) NOT NULL DEFAULT '',
  `useRTE` char(1) NOT NULL DEFAULT '',
  `useCE` char(1) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `admin` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `inherit` varchar(32) NOT NULL DEFAULT '',
  `modules` blob,
  `themes` blob,
  `pagemounts` blob,
  `alpty` blob,
  `filemounts` blob,
  `fop` blob,
  `forms` blob,
  `formp` blob,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `loginCount` smallint(5) unsigned NOT NULL DEFAULT '3',
  `locked` int(10) unsigned NOT NULL DEFAULT '0',
  `session` blob,
  `dateAdded` int(10) unsigned NOT NULL DEFAULT '0',
  `currentLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `lastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `pwChange` char(1) NOT NULL DEFAULT '',
  `calendars` blob,
  `calendarp` blob,
  `faqs` blob,
  `faqp` blob,
  `news` blob,
  `newp` blob,
  `newsletters` blob,
  `newsletterp` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Daten für Tabelle `tl_user`
--

INSERT INTO `tl_user` (`id`, `tstamp`, `username`, `name`, `email`, `language`, `backendTheme`, `uploader`, `showHelp`, `thumbnails`, `useRTE`, `useCE`, `password`, `admin`, `groups`, `inherit`, `modules`, `themes`, `pagemounts`, `alpty`, `filemounts`, `fop`, `forms`, `formp`, `disable`, `start`, `stop`, `loginCount`, `locked`, `session`, `dateAdded`, `currentLogin`, `lastLogin`, `pwChange`, `calendars`, `calendarp`, `faqs`, `faqp`, `news`, `newp`, `newsletters`, `newsletterp`) VALUES(1, 1312895100, 'k.jones', 'Kevin Jones', 'k.jones@example.com', 'de', 'default', '', '1', '1', '1', '1', '48746412a364f217b61682ab6a861bcc2de37d94:991e32ffd253c3b07f550d8', '1', '', '', '', NULL, 0x613a303a7b7d, NULL, 0x613a303a7b7d, '', NULL, NULL, '', '', '', 3, 0, 0x613a333a7b733a373a2272656665726572223b613a323a7b733a343a226c617374223b733a36333a222f612d6d6f7669652d64617461626173655f636b323031332f636f6e74616f2f6d61696e2e7068703f646f3d6d6574616d6f64656c5f6d6d5f6d6f76696573223b733a373a2263757272656e74223b733a36323a222f612d6d6f7669652d64617461626173655f636b323031332f636f6e74616f2f6d61696e2e7068703f646f3d6d6574616d6f64656c5f6d6d5f67656e7265223b7d733a373a2243555252454e54223b613a313a7b733a333a22494453223b613a313a7b693a303b733a313a2231223b7d7d733a393a22434c4950424f415244223b613a303a7b7d7d, 1257428510, 1368303348, 1353675299, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_user_group`
--

CREATE TABLE IF NOT EXISTS `tl_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `modules` blob,
  `themes` blob,
  `pagemounts` blob,
  `alpty` blob,
  `filemounts` blob,
  `fop` blob,
  `forms` blob,
  `formp` blob,
  `alexf` blob,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `calendars` blob,
  `calendarp` blob,
  `faqs` blob,
  `faqp` blob,
  `news` blob,
  `newp` blob,
  `newsletters` blob,
  `newsletterp` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `tl_user_group`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_version`
--

CREATE TABLE IF NOT EXISTS `tl_version` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `version` smallint(5) unsigned NOT NULL DEFAULT '1',
  `fromTable` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `active` char(1) NOT NULL DEFAULT '',
  `data` mediumblob,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `tl_version`
--

