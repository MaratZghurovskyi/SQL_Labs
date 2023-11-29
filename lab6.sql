SELECT cities.name, cities.population, regions.name
FROM cities, regions
WHERE cities.population > 350000;

SELECT cities.name
FROM cities, regions
WHERE cities.region = regions.uuid AND regions.name = "Nord";



SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_bin NOT NULL,
  `line_id` int(10) unsigned NOT NULL,
  `previous_line_id` int(10) unsigned,
  `next_line_id` int(10) unsigned,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `connections`;
CREATE TABLE `connections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `station1_id` int(10) unsigned NOT NULL,
  `station2_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `lines`;
CREATE TABLE `lines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_bin NOT NULL,
  `color` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `lines` (`id`,`name`,`color`) VALUES
(1, 'Kholodnogirska', 'red'),
(2, 'Saltivska', 'blue'),
(3, 'Oleksiivska', 'green');

INSERT INTO `stations` (`id`, `name`, `line_id`, `previous_line_id`, `next_line_id`) VALUES
(1, 'Kholodna Gora', 1, NULL, 2),
(4, 'Maidan Constitytsii', 1, 3, 5),
(14, 'Istoricheskiy Musey', 2, NULL, 15);

INSERT INTO `connections` (`id`,`station1_id`,`station2_id`) VALUES
(1, 4, 14);