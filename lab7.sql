SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE ascii_bin NOT NULL,
  `category_id` int(12) NOT NULL,
  `text` longtext COLLATE ascii_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;


DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_ip` char(1) COLLATE armscii8_bin NOT NULL,
  `comment_text` int(12) NOT NULL,
  `article_id` int(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `Comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;


DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_ip` char(1) NOT NULL,
  `stars_count` int(12) NOT NULL,
  `article_id` int(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `Star_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;