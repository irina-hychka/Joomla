-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Ноя 20 2012 г., 17:50
-- Версия сервера: 5.5.28
-- Версия PHP: 5.4.6-1ubuntu1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `homesite`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_assets`
--

CREATE TABLE IF NOT EXISTS `ypj7a_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=102 ;

--
-- Дамп данных таблицы `ypj7a_assets`
--

INSERT INTO `ypj7a_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 201, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 154, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 155, 156, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 157, 158, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 159, 160, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 161, 162, 1, 'com_login', 'com_login', '{}'),
(13, 1, 163, 164, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 165, 166, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 167, 168, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 169, 170, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 171, 172, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 173, 174, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 175, 178, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 179, 180, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 181, 182, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 183, 184, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 185, 186, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 187, 190, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 191, 194, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 195, 196, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 176, 177, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 192, 193, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 188, 189, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 197, 198, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 199, 200, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 8, 20, 21, 2, 'com_content.category.8', 'Grammar', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(36, 8, 22, 23, 2, 'com_content.category.9', 'Vocabulary', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(37, 8, 24, 25, 2, 'com_content.category.10', 'Phonics', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(38, 8, 26, 47, 2, 'com_content.category.11', 'НАШІ КУРСИ', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(39, 8, 48, 131, 2, 'com_content.category.12', 'Команда GeekHub', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(40, 39, 49, 50, 3, 'com_content.category.13', 'Євген “Jack” Григор’єв', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(41, 39, 51, 52, 3, 'com_content.category.14', 'Тимофій “Common” Козак ', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(42, 39, 53, 54, 3, 'com_content.category.15', 'Максим Сторчовий', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(43, 39, 55, 56, 3, 'com_content.category.16', 'Сергій Босовський', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(44, 39, 57, 58, 3, 'com_content.category.17', 'Іван Хижняк', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(45, 39, 59, 60, 3, 'com_content.category.18', 'Нік Курат', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(46, 39, 61, 62, 3, 'com_content.category.19', 'Валентин Ярмолатій', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(47, 39, 63, 64, 3, 'com_content.category.20', 'Олег Зінченко', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(48, 39, 65, 66, 3, 'com_content.category.21', 'Tim Phipps', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(49, 39, 67, 68, 3, 'com_content.category.22', 'Юрій Курат', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(50, 39, 69, 70, 3, 'com_content.category.23', 'Дмитро Луханін', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(51, 39, 71, 72, 3, 'com_content.category.24', 'Олена Перекопська ', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(52, 39, 73, 74, 3, 'com_content.category.25', 'Володимир Білоус', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(53, 39, 75, 76, 3, 'com_content.category.26', 'Валерій Олексієнко ', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(54, 39, 77, 78, 3, 'com_content.category.27', 'Богдан Халяпін', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(55, 39, 79, 80, 3, 'com_content.category.28', 'Володимир Овчаренко', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(56, 39, 81, 82, 3, 'com_content.category.29', 'Альона Лісіцина', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(57, 39, 83, 84, 3, 'com_content.category.30', 'Дмитро Таряник', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(58, 39, 85, 86, 3, 'com_content.category.31', 'Сергій Гичка', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(59, 39, 87, 88, 3, 'com_content.category.32', 'Юра Батора', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(60, 8, 132, 137, 2, 'com_content.category.33', 'Про GeekHub', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(61, 60, 133, 134, 3, 'com_content.article.1', 'Про GeekHub', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(62, 38, 27, 28, 3, 'com_content.article.2', 'Про GeekHub', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(63, 8, 138, 141, 2, 'com_content.category.34', 'news', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(64, 63, 139, 140, 3, 'com_content.article.3', 'news', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(65, 8, 142, 145, 2, 'com_content.category.35', 'geekhub', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(66, 65, 143, 144, 3, 'com_content.article.4', 'geekhub', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(67, 38, 29, 30, 3, 'com_content.article.5', 'Frontend + CMS', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(68, 38, 31, 32, 3, 'com_content.article.6', 'Advanced PHP', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(69, 38, 33, 34, 3, 'com_content.article.7', 'Java for Android', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(70, 38, 35, 36, 3, 'com_content.article.8', 'Quality Assurance', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(71, 38, 37, 38, 3, 'com_content.article.9', 'Advanced CMS', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(72, 38, 39, 40, 3, 'com_content.article.10', 'Basic Java', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(73, 38, 41, 42, 3, 'com_content.article.11', 'Project Management ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(74, 38, 43, 44, 3, 'com_content.article.12', 'Technical English', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(75, 60, 135, 136, 3, 'com_content.article.13', 'Про GeekHub', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(76, 39, 89, 90, 3, 'com_content.article.14', 'Євген “Jack” Григор’єв', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(77, 39, 91, 92, 3, 'com_content.article.15', 'Тимофій “Common” Козак ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(78, 39, 93, 94, 3, 'com_content.article.16', 'Максим Сторчовий ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(79, 39, 95, 96, 3, 'com_content.article.17', 'Сергій Босовський', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(80, 39, 97, 98, 3, 'com_content.article.18', 'Іван Хижняк', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(81, 39, 99, 100, 3, 'com_content.article.19', 'Нік Курат ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(82, 39, 101, 102, 3, 'com_content.article.20', 'Валентин Ярмолатій', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(83, 39, 103, 104, 3, 'com_content.article.21', 'Олег Зінченко', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(84, 39, 105, 106, 3, 'com_content.article.22', 'Tim Phipps', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(85, 39, 107, 108, 3, 'com_content.article.23', 'Юрій Курат', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(86, 39, 109, 110, 3, 'com_content.article.24', 'Дмитро Луханін', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(87, 39, 111, 112, 3, 'com_content.article.25', 'Олена Перекопська', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(88, 39, 113, 114, 3, 'com_content.article.26', 'Володимир Білоус', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(89, 39, 115, 116, 3, 'com_content.article.27', 'Валерій Олексієнко', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(90, 39, 117, 118, 3, 'com_content.article.28', 'Богдан Халяпін', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(91, 39, 119, 120, 3, 'com_content.article.29', 'Володимир Овчаренко ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(92, 39, 121, 122, 3, 'com_content.article.30', 'Альона Лісіцина', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(93, 39, 123, 124, 3, 'com_content.article.31', 'Дмитро Таряник', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(94, 39, 125, 126, 3, 'com_content.article.32', 'Сергій Гичка', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(95, 39, 127, 128, 3, 'com_content.article.33', 'Юра Батора', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(96, 38, 45, 46, 3, 'com_content.article.34', 'НАШІ КУРСИ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(97, 8, 146, 149, 2, 'com_content.category.36', 'certificates registry', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(98, 97, 147, 148, 3, 'com_content.article.35', 'Сертифiкованi професiонали', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(99, 39, 129, 130, 3, 'com_content.article.36', 'Команда GeekHub', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(100, 8, 150, 153, 2, 'com_content.category.37', 'Контакти', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(101, 100, 151, 152, 3, 'com_content.article.37', 'Зв’язок', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_associations`
--

CREATE TABLE IF NOT EXISTS `ypj7a_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_banners`
--

CREATE TABLE IF NOT EXISTS `ypj7a_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_banner_clients`
--

CREATE TABLE IF NOT EXISTS `ypj7a_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `ypj7a_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_categories`
--

CREATE TABLE IF NOT EXISTS `ypj7a_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Дамп данных таблицы `ypj7a_categories`
--

INSERT INTO `ypj7a_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 73, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 35, 1, 13, 14, 1, 'grammar', 'com_content', 'Grammar', 'grammar', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-05 20:08:09', 0, '0000-00-00 00:00:00', 0, '*', 1),
(9, 36, 1, 15, 16, 1, 'vocabulary', 'com_content', 'Vocabulary', 'vocabulary', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-05 20:10:15', 0, '0000-00-00 00:00:00', 0, '*', 1),
(10, 37, 1, 17, 18, 1, 'phonics', 'com_content', 'Phonics', 'phonics', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-05 20:10:34', 0, '0000-00-00 00:00:00', 0, '*', 1),
(11, 38, 1, 19, 20, 1, 'courses', 'com_content', 'НАШІ КУРСИ', 'courses', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:18:21', 0, '0000-00-00 00:00:00', 0, '*', 1),
(12, 39, 1, 21, 62, 1, 'team', 'com_content', 'Команда GeekHub', 'team', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:20:24', 0, '0000-00-00 00:00:00', 0, '*', 1),
(13, 40, 12, 22, 23, 2, 'team/jack', 'com_content', 'Євген “Jack” Григор’єв', 'jack', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:21:30', 0, '0000-00-00 00:00:00', 0, '*', 1),
(14, 41, 12, 24, 25, 2, 'team/common', 'com_content', 'Тимофій “Common” Козак ', 'common', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:21:53', 0, '0000-00-00 00:00:00', 0, '*', 1),
(15, 42, 12, 26, 27, 2, 'team/2012-11-12-16-22-17', 'com_content', 'Максим Сторчовий', '2012-11-12-16-22-17', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:22:17', 0, '0000-00-00 00:00:00', 0, '*', 1),
(16, 43, 12, 28, 29, 2, 'team/2012-11-12-16-22-45', 'com_content', 'Сергій Босовський', '2012-11-12-16-22-45', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:22:45', 0, '0000-00-00 00:00:00', 0, '*', 1),
(17, 44, 12, 30, 31, 2, 'team/2012-11-12-16-23-15', 'com_content', 'Іван Хижняк', '2012-11-12-16-23-15', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:23:15', 0, '0000-00-00 00:00:00', 0, '*', 1),
(18, 45, 12, 32, 33, 2, 'team/2012-11-12-16-23-38', 'com_content', 'Нік Курат', '2012-11-12-16-23-38', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:23:38', 0, '0000-00-00 00:00:00', 0, '*', 1),
(19, 46, 12, 34, 35, 2, 'team/2012-11-12-16-23-59', 'com_content', 'Валентин Ярмолатій', '2012-11-12-16-23-59', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:23:59', 0, '0000-00-00 00:00:00', 0, '*', 1),
(20, 47, 12, 36, 37, 2, 'team/2012-11-12-16-24-24', 'com_content', 'Олег Зінченко', '2012-11-12-16-24-24', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:24:24', 0, '0000-00-00 00:00:00', 0, '*', 1),
(21, 48, 12, 38, 39, 2, 'team/tim-phipps', 'com_content', 'Tim Phipps', 'tim-phipps', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:24:46', 0, '0000-00-00 00:00:00', 0, '*', 1),
(22, 49, 12, 40, 41, 2, 'team/2012-11-12-16-25-12', 'com_content', 'Юрій Курат', '2012-11-12-16-25-12', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:25:12', 0, '0000-00-00 00:00:00', 0, '*', 1),
(23, 50, 12, 42, 43, 2, 'team/2012-11-12-16-25-28', 'com_content', 'Дмитро Луханін', '2012-11-12-16-25-28', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:25:28', 0, '0000-00-00 00:00:00', 0, '*', 1),
(24, 51, 12, 44, 45, 2, 'team/2012-11-12-16-25-51', 'com_content', 'Олена Перекопська ', '2012-11-12-16-25-51', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:25:51', 0, '0000-00-00 00:00:00', 0, '*', 1),
(25, 52, 12, 46, 47, 2, 'team/2012-11-12-16-26-28', 'com_content', 'Володимир Білоус', '2012-11-12-16-26-28', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:26:28', 0, '0000-00-00 00:00:00', 0, '*', 1),
(26, 53, 12, 48, 49, 2, 'team/2012-11-12-16-26-51', 'com_content', 'Валерій Олексієнко ', '2012-11-12-16-26-51', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:26:51', 0, '0000-00-00 00:00:00', 0, '*', 1),
(27, 54, 12, 50, 51, 2, 'team/2012-11-12-16-27-25', 'com_content', 'Богдан Халяпін', '2012-11-12-16-27-25', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:27:25', 0, '0000-00-00 00:00:00', 0, '*', 1),
(28, 55, 12, 52, 53, 2, 'team/2012-11-12-16-27-42', 'com_content', 'Володимир Овчаренко', '2012-11-12-16-27-42', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:27:42', 0, '0000-00-00 00:00:00', 0, '*', 1),
(29, 56, 12, 54, 55, 2, 'team/2012-11-12-16-28-02', 'com_content', 'Альона Лісіцина', '2012-11-12-16-28-02', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:28:02', 0, '0000-00-00 00:00:00', 0, '*', 1),
(30, 57, 12, 56, 57, 2, 'team/2012-11-12-16-28-18', 'com_content', 'Дмитро Таряник', '2012-11-12-16-28-18', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:28:18', 0, '0000-00-00 00:00:00', 0, '*', 1),
(31, 58, 12, 58, 59, 2, 'team/2012-11-12-16-28-46', 'com_content', 'Сергій Гичка', '2012-11-12-16-28-46', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:28:46', 0, '0000-00-00 00:00:00', 0, '*', 1),
(32, 59, 12, 60, 61, 2, 'team/2012-11-12-16-29-08', 'com_content', 'Юра Батора', '2012-11-12-16-29-08', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:29:08', 0, '0000-00-00 00:00:00', 0, '*', 1),
(33, 60, 1, 63, 64, 1, 'about-geekhub', 'com_content', 'Про GeekHub', 'about-geekhub', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 16:40:50', 0, '0000-00-00 00:00:00', 0, '*', 1),
(34, 63, 1, 65, 66, 1, 'news', 'com_content', 'news', 'news', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 18:00:19', 0, '0000-00-00 00:00:00', 0, '*', 1),
(35, 65, 1, 67, 68, 1, 'geekhub', 'com_content', 'geekhub', 'geekhub', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-12 18:03:26', 0, '0000-00-00 00:00:00', 0, '*', 1),
(36, 97, 1, 69, 70, 1, 'certificates-registry', 'com_content', 'certificates registry', 'certificates-registry', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-18 19:36:26', 0, '0000-00-00 00:00:00', 0, '*', 1),
(37, 100, 1, 71, 72, 1, 'контакти', 'com_content', 'Контакти', 'контакти', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 299, '2012-11-18 21:10:03', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_contact_details`
--

CREATE TABLE IF NOT EXISTS `ypj7a_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_content`
--

CREATE TABLE IF NOT EXISTS `ypj7a_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Дамп данных таблицы `ypj7a_content`
--

INSERT INTO `ypj7a_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 61, 'Про GeekHub', 'geekhub', '<p> </p>\r\n<p>GeekHub - це проект, що надає можливість талановитій молоді отримати практичні знання та навички в сфері розробки програмного забезпечення та IT вцілому. Команда Geekhub — це группа професіоналів в інформаційних технологіях, які готують слухачів курсів до успішної кар’єри в індустрії. Всі члени команди Geekhub працюють у провідних софтверних компаніях, кожного дня оновлюючи свої знання та навички інноваціями в інформаційних технологіях. Саме це дає змогу викладати виключно потрібний матеріал, що знадобиться при роботі в реальних виробничих умовах.</p>\r\n<p>Ми шука<img src="http://geekhub.ck.ua/images/about.png" alt="img" />ємо мотивованих учнів та студентів, які мріють отримати професію в інформаційних технологіях, для інтенсивного практичного навчання з розробки веб та мобільних додатків. Ми хочемо щоб молоді таланти теж змогли приєднатись до спільноти професіоналів інформаційних технологій і створювали унікальні інтегровані продукти для поліпшення умов праці і життя людей навколо нас.<br /> Ми називаємо Geekhub “Open Source”, тому що саме ця ідеологія керує всією програмою. Все що ми робимо обертається навколо взаємовідносин між людьми. Курси Geekhub не коштують грошей, все що вимагається — це внутрішня мотивація та багато самостійної роботи. <br /> <br />Якщо ви зацікавлені у співробітництві з GeekHub, або у вас є ідеї щодо того, як зробити GeekHub краще - будь-ласка, <a href="http://geekhub.ck.ua/contacts.html">зв''яжіться з нами</a> будь яким зручним для вас шляхом.</p>', '', -2, 33, '2012-11-12 16:51:22', 299, '', '2012-11-12 16:51:58', 299, 0, '0000-00-00 00:00:00', '2012-11-12 16:51:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"right","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 62, 'Про GeekHub', 'geekhub', '<p> </p>\r\n<p>Про GeekHub</p>\r\n<p><img src="images/about.png" alt="" style="float: left;" />GeekHub - це проект, що надає можливість талановитій молоді отримати практичні знання та навички в сфері розробки програмного забезпечення та IT вцілому. Команда Geekhub — це группа професіоналів в інформаційних технологіях, які готують слухачів курсів до успішної кар’єри в індустрії. Всі члени команди Geekhub працюють у провідних софтверних компаніях, кожного дня оновлюючи свої знання та навички інноваціями в інформаційних технологіях. Саме це дає змогу викладати виключно потрібний матеріал, що знадобиться при роботі в реальних виробничих умовах.</p>\r\n<p> </p>\r\n<p>Ми шукаємо мотивованих учнів та студентів, які мріють отримати професію в інформаційних технологіях, для інтенсивного практичного навчання з розробки веб та мобільних додатків. Ми хочемо щоб молоді таланти теж змогли приєднатись до спільноти професіоналів інформаційних технологій і створювали унікальні інтегровані продукти для поліпшення умов праці і життя людей навколо нас.</p>\r\n<p> </p>\r\n<p>Ми називаємо Geekhub “Open Source”, тому що саме ця ідеологія керує всією програмою. Все що ми робимо обертається навколо взаємовідносин між людьми. Курси Geekhub не коштують грошей, все що вимагається — це внутрішня мотивація та багато самостійної роботи.</p>\r\n<p>Якщо ви зацікавлені у співробітництві з GeekHub, або у вас є ідеї щодо того, як зробити GeekHub краще - будь-ласка, <a href="http://geekhub.ck.ua/contacts.html">зв''яжіться з нами</a> будь яким зручним для вас шляхом.</p>', '', -2, 11, '2012-11-12 17:54:14', 299, '', '2012-11-12 17:54:49', 299, 0, '0000-00-00 00:00:00', '2012-11-12 17:54:14', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 64, 'news', 'news', '<p class="registration">Нажаль, реєстрацію на другий сезон вже зачинено. Чекаємо на Вас наступного року!</p>', '', 1, 34, '2012-11-12 18:01:42', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 18:01:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 66, 'geekhub', 'geekhub', '<p><strong>GeekHub</strong> — це проект, що надає можливість отримати практичні знання та навички в сфері розробки програмного забезпечення. На відміну від традиційної освіти, викладачі GeekHub працюють з новітніми технологіями у провідних софтверних компаніях, тому слухачі GeekHub отримують тільки актуальні знання. Якщо ти зацікавлений — запрошуємо ознайомитись з <a href="http://geekhub.ck.ua/about.html">деталями проекту</a>.</p>', '', 1, 35, '2012-11-12 18:03:57', 299, '', '2012-11-12 18:04:36', 299, 0, '0000-00-00 00:00:00', '2012-11-12 18:03:57', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 67, 'Frontend + CMS', 'frontend-cms', '<h3><img src="images/icon_front.png" alt="" style="float: left;" />Frontend + CMS</h3>\r\n<p>Цей курс допоможе вам навчитися створювати веб сайти на основі системи керування контентом. Все, від скінування дизайну до підключення CMS. Цей курс дасть вам чудовий старт для фріланса або роботи в компанії.</p>', '', -2, 11, '2012-11-12 18:06:40', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 18:06:40', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 68, 'Advanced PHP', 'advanced-php', '<h3>Advanced PHP</h3>\r\n<p><img src="images/icon_adv_php.png" alt="" style="float: left;" />Для тих хто хоче розвити свої базові навички в PHP. Курс заглиблюється в вивчення ООП, MVC та фреймворку Symfony.</p>', '', -2, 11, '2012-11-12 18:09:50', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 18:09:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 69, 'Java for Android', 'java-for-android', '<h3>Java for Android</h3>\r\n<p><img src="images/icon_android.png" alt="" style="float: left;" />Розробка під мобільні технології все більше набирає популярності. GeekHub починає із найпопулярнішої відкритої платформи Android.</p>', '', -2, 11, '2012-11-12 18:10:38', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 18:10:38', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 70, 'Quality Assurance', 'quality-assurance', '<h3>Quality Assurance</h3>\r\n<p><img src="images/icon_qa.png" alt="" style="float: left;" />Контроль якості проектів -- важлива частина процесу розробки. Цей курс навчить вас систематизувати та автоматизувати процес тестування, підвищити якість та швидкість виконання проектів в компанії.</p>', '', -2, 11, '2012-11-12 18:11:18', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 18:11:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 71, 'Advanced CMS', 'advanced-cms', '<h3>Advanced CMS</h3>\r\n<p><img src="images/icon_cms.png" alt="" style="float: left;" />Необхідні та поглибленні знання в системах керування контентом. Якщо ви хочете робити вебсайти як професіонал, цей курс для вас. Особливості різних CMS, використання та написання плагінів та компонентів, інтеграція із соціальними мережами та третьосторонніми сервісами.</p>', '', -2, 11, '2012-11-12 18:12:17', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 18:12:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 72, 'Basic Java', 'basic-java', '<h3>Basic Java</h3>\r\n<p><img src="images/icon_java.png" alt="" style="float: left;" />Java -- це основа ентерпрайз технологій. Ви ознайомитесь із мовою, базовою структурю SDK основами технологій на Java. Курс вимагає підвищеного рівня самостійної роботи але отриманні знання приносять особливу винагороду в роботі.</p>', '', -2, 11, '2012-11-12 18:13:03', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 18:13:03', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 73, 'Project Management ', 'project-management', '<h3>Project Management</h3>\r\n<p><img src="images/icon_pm.png" alt="" style="float: left;" />Щоб стати досвідченим менеджером проектів потрібні роки спроб та помилок. Geekhub дає вам можливість набути практичних навичок та уникнути неприємних ситуацій в реальній роботі. Ми навчимо вас розуміти бізнес, відносини із клієнтами і девелоперами і звичайно методології ведення проектів.</p>', '', -2, 11, '2012-11-12 18:13:45', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 18:13:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 74, 'Technical English', 'technical-english', '<h3>Technical English</h3>\r\n<p><img src="images/icon_english.png" alt="" style="float: left;" />Нинішні ринкові умови вимагають робочого знання англійської мови і вільним використанням технічних термінів. Немає кращого місця щоб підтягнути ці навички, ніж курс Techical English на GeekHub! Курс викладає Tim Phipps, англієць із науковим ступенем у англійскій літературі.</p>', '', -2, 11, '2012-11-12 18:14:24', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 18:14:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 75, 'Про GeekHub', '2012-11-12-18-23-07', '<ul class="about">\r\n<li class="imgs"><img src="images/about.png" alt="img" /></li>\r\n<li>\r\n<p>GeekHub - це проект, що надає можливість талановитій молоді отримати практичні знання та навички в сфері розробки програмного забезпечення та IT вцілому. Команда Geekhub — це группа професіоналів в інформаційних технологіях, які готують слухачів курсів до успішної кар’єри в індустрії. Всі члени команди Geekhub працюють у провідних софтверних компаніях, кожного дня оновлюючи свої знання та навички інноваціями в інформаційних технологіях. Саме це дає змогу викладати виключно потрібний матеріал, що знадобиться при роботі в реальних виробничих умовах.</p>\r\n</li>\r\n<li>\r\n<p>Ми шукаємо мотивованих учнів та студентів, які мріють отримати професію в інформаційних технологіях, для інтенсивного практичного навчання з розробки веб та мобільних додатків. Ми хочемо щоб молоді таланти теж змогли приєднатись до спільноти професіоналів інформаційних технологій і створювали унікальні інтегровані продукти для поліпшення умов праці і життя людей навколо нас.</p>\r\n<p>Ми називаємо Geekhub “Open Source”, тому що саме ця ідеологія керує всією програмою. Все що ми робимо обертається навколо взаємовідносин між людьми. Курси Geekhub не коштують грошей, все що вимагається — це внутрішня мотивація та багато самостійної роботи.</p>\r\n</li>\r\n<li>\r\n<p>Якщо ви зацікавлені у співробітництві з GeekHub, або у вас є ідеї щодо того, як зробити GeekHub краще - будь-ласка, <a href="contact.html">зв''яжіться з нами</a> будь яким зручним для вас шляхом.</p>\r\n</li>\r\n</ul>', '', 1, 33, '2012-11-12 18:23:07', 299, '', '2012-11-18 21:03:19', 299, 0, '0000-00-00 00:00:00', '2012-11-12 18:23:07', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 0, '', '', 1, 94, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 76, 'Євген “Jack” Григор’єв', 'jack', '<h3><span>Старший девелопер PHP <br />в Мaster of Code</span></h3>\r\n<p><img src="images/jack.png" alt="" /><br />Працює з рядом технологій, включаючи Symfony, Drupal, jQuery, Compass CSS, HAML, etc. Майстерність Євгена стоїть за такими проектами як <a href="http://www.belvilla.nl/">Belvilla</a>, <a href="http://yesorno.ch/">Yes or No</a>, <a href="http://www.webshop.jongenvrij.nl/">Jongenvrij webshop</a>, <a href="http://usgovernmentauctions.net/">USGA</a> та багато інших. У Geekhub Євген викладає Advanced CMS.</p>', '', -2, 12, '2012-11-12 19:22:00', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:22:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 19, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 77, 'Тимофій “Common” Козак ', 'common', '<h3><span>iPhone developer в Master of Code. </span></h3>\r\n<p><img src="images/cmn.png" alt="" /><br />Тимофій розвиває індустрію мобільних додатків. На його рахунку такі проекти як KandleFly, SecondChance, Yak Messenger, <a href="http://geekhub.ck.ua/">GeekHub</a>, <a href="http://www.maximsoftware.com/">MaximSoftware</a>, <a href="http://mclean-design.com/">MClean-design</a>, <a href="http://m2m.org.ua">M2M</a> та інші. В Geekhub Тимофій викладає Frontend + CMS.</p>', '', -2, 12, '2012-11-12 19:23:20', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:23:20', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 18, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 78, 'Максим Сторчовий ', '2012-11-12-19-24-34', '<h3><span>Старший девелопер PHP в Master of Code. </span></h3>\r\n<p><img src="images/user.png" alt="" /><br />У GeekHub викладає Advanced PHP.</p>', '', -2, 12, '2012-11-12 19:24:34', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:24:34', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 17, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 79, 'Сергій Босовський', '2012-11-12-19-25-37', '<h3><span>Старший Android developer в Master of Code. </span></h3>\r\n<p><img src="images/boss.png" alt="" /><br />Сергій займається питаннями інтерфейсів і обробки контенту, кастомними компонентами UI та інтеграцією андроїд аппів із зовнішніми сервісами. Сергій працював над такими проектами як <a href="https://market.android.com/details?id=com.sandsmedia.apps.mobile.android.jtj">Java Tech Journal</a>, <a href="https://market.android.com/details?id=com.sirma.mobile.bible.android">LifeChurch Android app</a> та <a href="https://market.android.com/details?id=com.masterofcode.android.yakchat">Yak messenger</a>. У GeekHub Сергій викладає Java for Android.</p>', '', -2, 12, '2012-11-12 19:25:37', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:25:37', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 16, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 80, 'Іван Хижняк', '2012-11-12-19-27-01', '<h3><span>Старший девелопер PHP. </span></h3>\r\n<p><img src="images/user.png" alt="" /><br />У GeekHub викладає Advanced PHP.</p>', '', -2, 12, '2012-11-12 19:27:01', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:27:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 15, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 81, 'Нік Курат ', '2012-11-12-19-28-17', '<h3><span>Управляючий партнер в Master of Code</span></h3>\r\n<p><img src="images/neek.png" alt="" /><br />Нік займається розвитком бізнесу компанії Master of Code LLC. У складі Geekhub Нік викладає Project Management та працює над брендінгом та маркетингом проекту.</p>', '', -2, 12, '2012-11-12 19:28:17', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:28:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 14, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 82, 'Валентин Ярмолатій', '2012-11-12-19-29-49', '<h3><span>Логістичний менеджер в Master of Code</span></h3>\r\n<p><img src="images/val.png" alt="" /><br />Валентин займається питаннями технічного забезпечення Geekhub.</p>', '', -2, 12, '2012-11-12 19:29:49', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:29:49', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 13, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 83, 'Олег Зінченко', '2012-11-12-19-30-48', '<h3><span>TeamLead в <a href="http://exercise.com">Exercise.com</a>, Inc. </span></h3>\r\n<p><img src="images/oleg_zinchenko.png" alt="" /><br />Олег професiйно займаеться розробкою веб додаткiв на PHP з використанням сучасних фреймфоркiв. Адепт Symfony2. У GeekHub Олег викладає Advanced PHP.</p>', '', -2, 12, '2012-11-12 19:30:48', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:30:48', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 12, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(22, 84, 'Tim Phipps', 'tim-phipps', '<h3><span>English Language Tutor</span></h3>\r\n<p><img src="images/tim_phipps.png" alt="" /><br />Since gaining his CELTA teaching qualification, Tim has specialised in private English lessons, meeting a wide range of student needs. He now teaches at the ''Yazlingo'' language school. At Geekhub Tim leads the Technical English course.</p>', '', -2, 12, '2012-11-12 19:32:22', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:32:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 11, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 85, 'Юрій Курат', '2012-11-12-19-33-14', '<h3><span>CTO в Martell Marketing Group</span></h3>\r\n<p><img src="images/jurii_kurat.png" alt="" /><br />Юрій працює із командою розробників веб та кросс-платформових мобільних технологій. Його нещодавні проекти включають у себе <a href="http://stickyalbums.com">stickyalbums.com</a>, <a href="http://chewy.com">chewy.com</a>. У GeekHub Юрій займається організацією та розвитком проекту.</p>', '', -2, 12, '2012-11-12 19:33:14', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:33:14', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 10, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 86, 'Дмитро Луханін', '2012-11-12-19-34-16', '<h3><span>Менеджер проектів в Master of Code.</span></h3>\r\n<p><img src="images/user.png" alt="" /><br />В Geekhub Дмитро викладає Frontend + CMS.</p>', '', -2, 12, '2012-11-12 19:34:16', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:34:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 9, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(25, 87, 'Олена Перекопська', '2012-11-12-19-35-17', '<h3><span>Менеджер проектів в Master of Code. </span></h3>\r\n<p><img src="images/olena_perekopska.png" alt="" /><br />У GeekHub викладає Quality Assurance.</p>', '', -2, 12, '2012-11-12 19:35:17', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:35:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(26, 88, 'Володимир Білоус', '2012-11-12-19-36-23', '<h3><span>Java EE/ Android developer в SPD Ukraine.</span></h3>\r\n<p><img src="images/volodymyr_bilous.png" alt="" /><br />Володимир є Java та Android розробником у SPD Ukraine. Його основний проект -- <a href="http://nimblecommerce.com">nimblecommerce.com</a> У GeekHub Володимир викладає Java for Web.</p>', '', -2, 12, '2012-11-12 19:36:23', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:36:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `ypj7a_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(27, 89, 'Валерій Олексієнко', '2012-11-12-19-37-32', '<h3><span>Веб-розробник в SPD-Ukraine.</span></h3>\r\n<p><img src="images/valerii_oleksienko.png" alt="" /><br />Back-end та front-end веб-розробник. Основні технології, з якими працює: Spring (MVC, Security), Hibernate, mySql, MongoDB, jQuery, Ext.js Хоббі включають сноуборд, музика, mobile development. У GeekHub Валерій викладає Java for Web.</p>', '', -2, 12, '2012-11-12 19:37:32', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:37:32', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 90, 'Богдан Халяпін', '2012-11-12-19-38-54', '<h3><span>Директор в SPD-Ukraine.</span></h3>\r\n<p><img src="images/bogdan_haliapin.png" alt="" /><br />Богдан керує компанією SPD-Ukraine та займається її розвитком. Має більше ніж 10 років досвіду з Java. У складі GeekHub Богдан є викладачем та координатором групи Basic Java / Java for Web.</p>', '', -2, 12, '2012-11-12 19:38:54', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:38:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(29, 91, 'Володимир Овчаренко ', '2012-11-12-19-40-01', '<h3><span>PHP and Ruby Програміст в Master of Code. </span></h3>\r\n<p><img src="images/volodymyr_ovcharenko.png" alt="" /><br />Володимир є старшим front-end та CMS розробником. Наразі працює із проектом <a href="http://sellanapp.com">SellanApp</a>. У GeekHub викладає Advanced CMS.</p>', '', -2, 12, '2012-11-12 19:40:01', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:40:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(30, 92, 'Альона Лісіцина', '2012-11-12-19-41-06', '<h3><span>Менеджер проектів в Master of Code.</span></h3>\r\n<p><img src="images/alona_lisicina.png" alt="" /><br />Альона працює менеджером проектів у компанії Master of Code LLC. У Geekhub Альона викладає Project Management.</p>', '', -2, 12, '2012-11-12 19:41:06', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:41:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 93, 'Дмитро Таряник', '2012-11-12-19-42-03', '<h3><span>Android developer в Master of Code. </span></h3>\r\n<p><img src="images/dmytro_tarianyk.png" alt="" /><br />Дмитро працює над проектом <a href="https://market.android.com/details?id=com.sirma.mobile.bible.android">LifeChurch Android app</a>. У GeekHub викладає Java for Android.</p>', '', -2, 12, '2012-11-12 19:42:03', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:42:03', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 94, 'Сергій Гичка', '2012-11-12-19-42-55', '<h3><span>Back-end developer в Master of Code. </span></h3>\r\n<p><img src="images/sergii_gychka.png" alt="" /><br />Сергій працює з такими технологіями як Symfony, Drupal, JS, Zend Framework, CodeIgniter. Його проекти включають InnoLaunch Platform, <a href="http://www.thevx.com/">The VX</a>, <a href="http://fundforgenderequality.unwomen.org/">Fund for Gender Equality</a>, <a href="http://untf.unwomen.org/">UN Trust Fund to End Violence Against Women</a>. У GeekHub Сергій викладає Advanced CMS.</p>', '', -2, 12, '2012-11-12 19:42:55', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:42:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(33, 95, 'Юра Батора', '2012-11-12-19-43-56', '<h3><span>Team Leader в SPD-Ukraine. </span></h3>\r\n<p><img src="images/jura_batora.png" alt="" /><br />Юра займається розробкою комерційних проектів на Java зі складною клієнт-серверною архітектурою. У GeekHub викладає Java for Web.</p>', '', -2, 12, '2012-11-12 19:43:56', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-12 19:43:56', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(34, 96, 'НАШІ КУРСИ', '2012-11-17-17-00-39', '<ul class="types">\r\n<li class="left-col"><img src="http://geekhub.ck.ua/images/icon_front.png" />\r\n<h3>Frontend + CMS</h3>\r\n<p>Цей курс допоможе вам навчитися створювати веб сайти на основі системи керування контентом. Все, від скінування дизайну до підключення CMS. Цей курс дасть вам чудовий старт для фріланса або роботи в компанії.</p>\r\n</li>\r\n<li><img src="http://geekhub.ck.ua/images/icon_cms.png" />\r\n<h3>Advanced CMS</h3>\r\n<p>Необхідні та поглибленні знання в системах керування контентом. Якщо ви хочете робити вебсайти як професіонал, цей курс для вас. Особливості різних CMS, використання та написання плагінів та компонентів, інтеграція із соціальними мережами та третьосторонніми сервісами.</p>\r\n</li>\r\n<li class="left-col"><img src="http://geekhub.ck.ua/images/icon_adv_php.png" />\r\n<h3>Advanced PHP</h3>\r\n<p>Для тих хто хоче розвити свої базові навички в PHP. Курс заглиблюється в вивчення ООП, MVC та фреймворку Symfony.</p>\r\n</li>\r\n<li><img src="http://geekhub.ck.ua/images/icon_java.png" />\r\n<h3>Basic Java</h3>\r\n<p>Java -- це основа ентерпрайз технологій. Ви ознайомитесь із мовою, базовою структурю SDK основами технологій на Java. Курс вимагає підвищеного рівня самостійної роботи але отриманні знання приносять особливу винагороду в роботі.</p>\r\n</li>\r\n<li class="left-col"><img src="http://geekhub.ck.ua/images/icon_android.png" />\r\n<h3>Java for Android</h3>\r\n<p>Розробка під мобільні технології все більше набирає популярності. GeekHub починає із найпопулярнішої відкритої платформи Android.</p>\r\n</li>\r\n<li><img src="http://geekhub.ck.ua/images/icon_pm.png" />\r\n<h3>Project Management</h3>\r\n<p>Щоб стати досвідченим менеджером проектів потрібні роки спроб та помилок. Geekhub дає вам можливість набути практичних навичок та уникнути неприємних ситуацій в реальній роботі. Ми навчимо вас розуміти бізнес, відносини із клієнтами і девелоперами і звичайно методології ведення проектів.</p>\r\n</li>\r\n<li class="left-col"><img src="http://geekhub.ck.ua/images/icon_qa.png" />\r\n<h3>Quality Assurance</h3>\r\n<p>Контроль якості проектів -- важлива частина процесу розробки. Цей курс навчить вас систематизувати та автоматизувати процес тестування, підвищити якість та швидкість виконання проектів в компанії.</p>\r\n</li>\r\n<li><img src="http://geekhub.ck.ua/images/icon_english.png" />\r\n<h3>Technical English</h3>\r\n<p>Нинішні ринкові умови вимагають робочого знання англійської мови і вільним використанням технічних термінів. Немає кращого місця щоб підтягнути ці навички, ніж курс Techical English на GeekHub! Курс викладає Tim Phipps, англієць із науковим ступенем у англійскій літературі.</p>\r\n</li>\r\n</ul>', '', 1, 11, '2012-11-17 17:00:39', 299, '', '2012-11-17 17:03:10', 299, 0, '0000-00-00 00:00:00', '2012-11-17 17:00:39', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_vote":"0","show_hits":"0","show_noauth":"0","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 95, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(35, 98, 'Сертифiкованi професiонали', 'сертифiкованi-професiонали', '<h3>Junior backend developer (PHP)</h3>\r\n<table style="margin: 0 0 15px;">\r\n<tbody>\r\n<tr>\r\n<td style="width: 300px;"><strong>Name</strong></td>\r\n<td style="width: 100px;"><strong>Serial number</strong></td>\r\n<td style="text-align: right; width: 100px;"><strong>Awarded on</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Vladislav Chornobay</td>\r\n<td style="text-align: right;">3892523758</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Mykola Zenkov</td>\r\n<td style="text-align: right;">8556244656</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Sergiy Bulgacov</td>\r\n<td style="text-align: right;">7643245634</td>\r\n<td style="text-align: right;"> 06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Sergiy Vlasov</td>\r\n<td style="text-align: right;">2567852574</td>\r\n<td style="text-align: right;"> 06/15/2012</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Junior frontend developer (HTML, CSS)</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td style="width: 300px;"><strong>Name</strong></td>\r\n<td style="width: 100px;"><strong>Serial number</strong></td>\r\n<td style="text-align: right; width: 100px;"><strong>Awarded on</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Petro Kiryshkin</td>\r\n<td style="text-align: right;">5935398234</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Olexiy Procenko</td>\r\n<td style="text-align: right;">9474728922</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Vadym Tyshchenko</td>\r\n<td style="text-align: right;">6236536827</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Roman Rudakov</td>\r\n<td style="text-align: right;">6222982267</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Iryna Bakum</td>\r\n<td style="text-align: right;">2552423964</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Maryna Bakum</td>\r\n<td style="text-align: right;">8462892626</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Dmytro Bevz</td>\r\n<td style="text-align: right;">4822529579</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Oleksiy Ilchenko</td>\r\n<td style="text-align: right;">8927342865</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Alexandr Tinyayev</td>\r\n<td style="text-align: right;">5443255438</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Aleksandra Lytvynenko</td>\r\n<td style="text-align: right;">2472742642</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Oleksiy Magurov</td>\r\n<td style="text-align: right;">4872657364</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Yevhenii Lutsiuk</td>\r\n<td style="text-align: right;">6379228837</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Katerina Khomenko</td>\r\n<td style="text-align: right;">9362325659</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Oleg Nikulin</td>\r\n<td style="text-align: right;">2369277425</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Oksana Garbuz</td>\r\n<td style="text-align: right;">7867643678</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Oksana Kocherga</td>\r\n<td style="text-align: right;">6566575332</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Oleg Kulik</td>\r\n<td style="text-align: right;">7492773424</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Tanya Kozlova</td>\r\n<td style="text-align: right;">3384299393</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Victor Ovsyanik</td>\r\n<td style="text-align: right;">4387853948</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Anton Kotlyarenko</td>\r\n<td style="text-align: right;">6469982686</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Viktor Urbanas</td>\r\n<td style="text-align: right;">9437765523</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Stanislav Gurin</td>\r\n<td style="text-align: right;">4334337865</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Andrii Sirenko</td>\r\n<td style="text-align: right;">3242584772</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Iryna Hychka</td>\r\n<td style="text-align: right;">8734567965</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Ruslan Ischuk</td>\r\n<td style="text-align: right;">9488828863</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n<tr>\r\n<td>Oleg Sotulenko</td>\r\n<td style="text-align: right;">2992538956</td>\r\n<td style="text-align: right;">06/15/2012</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 36, '2012-11-18 19:38:31', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-18 19:38:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(36, 99, 'Команда GeekHub', 'команда-geekhub', '<ul>\r\n<li class="odd">\r\n<h3>Євген “Jack” Григор’єв <span>Старший девелопер PHP <br />в Мaster of Code</span></h3>\r\n<img src="images/jack.png" />\r\n<p>Працює з рядом технологій, включаючи Symfony, Drupal, jQuery, Compass CSS, HAML, etc. Майстерність Євгена стоїть за такими проектами як <a href="http://www.belvilla.nl/">Belvilla</a>, <a href="http://yesorno.ch/">Yes or No</a>, <a href="http://www.webshop.jongenvrij.nl/">Jongenvrij webshop</a>, <a href="http://usgovernmentauctions.net/">USGA</a> та багато інших. У Geekhub Євген викладає Advanced CMS.</p>\r\n</li>\r\n<li>\r\n<h3>Тимофій “Common” Козак <span>iPhone developer <br />в Master of Code. </span></h3>\r\n<img src="images/cmn.png" />\r\n<p>Тимофій розвиває індустрію мобільних додатків. На його рахунку такі проекти як KandleFly, SecondChance, Yak Messenger, <a href="http://geekhub.ck.ua/">GeekHub</a>, <a href="http://www.maximsoftware.com/">MaximSoftware</a>, <a href="http://mclean-design.com/">MClean-design</a>, <a href="http://m2m.org.ua">M2M</a> та інші. В Geekhub Тимофій викладає Frontend + CMS.</p>\r\n</li>\r\n<li class="odd">\r\n<h3>Максим Сторчовий <span>Старший девелопер PHP <br />в Master of Code. </span></h3>\r\n<img src="images/user.png" />\r\n<p>У GeekHub викладає Advanced PHP.</p>\r\n</li>\r\n<li>\r\n<h3>Сергій Босовський <span>Старший Android developer <br />в Master of Code. </span></h3>\r\n<img src="images/boss.png" />\r\n<p>Сергій займається питаннями інтерфейсів і обробки контенту, кастомними компонентами UI та інтеграцією андроїд аппів із зовнішніми сервісами. Сергій працював над такими проектами як <a href="https://market.android.com/details?id=com.sandsmedia.apps.mobile.android.jtj">Java Tech Journal</a>, <a href="https://market.android.com/details?id=com.sirma.mobile.bible.android">LifeChurch Android app</a> та <a href="https://market.android.com/details?id=com.masterofcode.android.yakchat">Yak messenger</a>. У GeekHub Сергій викладає Java for Android.</p>\r\n</li>\r\n<li class="odd">\r\n<h3>Іван Хижняк <span>Старший девелопер PHP. </span></h3>\r\n<img src="images/user.png" />\r\n<p>У GeekHub викладає Advanced PHP.</p>\r\n</li>\r\n<li>\r\n<h3>Нік Курат <span>Управляючий партнер<br />в Master of Code</span></h3>\r\n<img src="images/neek.png" />\r\n<p>Нік займається розвитком бізнесу компанії Master of Code LLC. У складі Geekhub Нік викладає Project Management та працює над брендінгом та маркетингом проекту.</p>\r\n</li>\r\n<li class="odd">\r\n<h3>Валентин Ярмолатій <span>Логістичний менеджер <br />в Master of Code</span></h3>\r\n<img src="images/val.png" />\r\n<p>Валентин займається питаннями технічного забезпечення Geekhub.</p>\r\n</li>\r\n<li>\r\n<h3>Олег Зінченко <span>TeamLead <br />в <a href="http://exercise.com">Exercise.com</a>, Inc. </span></h3>\r\n<img src="images/oleg_zinchenko.png" />\r\n<p>Олег професiйно займаеться розробкою веб додаткiв на PHP з використанням сучасних фреймфоркiв. Адепт Symfony2. У GeekHub Олег викладає Advanced PHP.</p>\r\n</li>\r\n<li class="odd">\r\n<h3>Tim Phipps <span>English Language Tutor</span></h3>\r\n<img src="images/tim_phipps.png" />\r\n<p>Since gaining his CELTA teaching qualification, Tim has specialised in private English lessons, meeting a wide range of student needs. He now teaches at the ''Yazlingo'' language school. At Geekhub Tim leads the Technical English course.</p>\r\n</li>\r\n<li>\r\n<h3>Юрій Курат <span>CTO в Martell <br />Marketing Group</span></h3>\r\n<img src="images/jurii_kurat.png" />\r\n<p>Юрій працює із командою розробників веб та кросс-платформових мобільних технологій. Його нещодавні проекти включають у себе <a href="http://stickyalbums.com">stickyalbums.com</a>, <a href="http://chewy.com">chewy.com</a>. У GeekHub Юрій займається організацією та розвитком проекту.</p>\r\n</li>\r\n<li class="odd">\r\n<h3>Дмитро Луханін <span>Менеджер проектів <br />в Master of Code. </span></h3>\r\n<img src="images/user.png" />\r\n<p>В Geekhub Дмитро викладає Frontend + CMS.</p>\r\n</li>\r\n<li>\r\n<h3>Олена Перекопська <span>Менеджер проектів <br />в Master of Code. </span></h3>\r\n<img src="images/olena_perekopska.png" />\r\n<p>У GeekHub викладає Quality Assurance.</p>\r\n</li>\r\n<li class="odd">\r\n<h3>Володимир Білоус <span>Java EE/ Android developer <br />в SPD Ukraine.</span></h3>\r\n<img src="images/volodymyr_bilous.png" />\r\n<p>Володимир є Java та Android розробником у SPD Ukraine. Його основний проект -- <a href="http://nimblecommerce.com">nimblecommerce.com</a> У GeekHub Володимир викладає Java for Web.</p>\r\n</li>\r\n<li>\r\n<h3>Валерій Олексієнко <span>Веб-розробник <br />в SPD-Ukraine.</span></h3>\r\n<img src="images/valerii_oleksienko.png" />\r\n<p>Back-end та front-end веб-розробник. Основні технології, з якими працює: Spring (MVC, Security), Hibernate, mySql, MongoDB, jQuery, Ext.js Хоббі включають сноуборд, музика, mobile development. У GeekHub Валерій викладає Java for Web.</p>\r\n</li>\r\n<li class="odd">\r\n<h3>Богдан Халяпін <span>Директор <br />в SPD-Ukraine. </span></h3>\r\n<img src="images/bogdan_haliapin.png" />\r\n<p>Богдан керує компанією SPD-Ukraine та займається її розвитком. Має більше ніж 10 років досвіду з Java. У складі GeekHub Богдан є викладачем та координатором групи Basic Java / Java for Web.</p>\r\n</li>\r\n<li>\r\n<h3>Володимир Овчаренко <span>PHP and Ruby Програміст <br />в Master of Code. </span></h3>\r\n<img src="images/volodymyr_ovcharenko.png" />\r\n<p>Володимир є старшим front-end та CMS розробником. Наразі працює із проектом <a href="http://sellanapp.com">SellanApp</a>. У GeekHub викладає Advanced CMS.</p>\r\n</li>\r\n<li class="odd">\r\n<h3>Альона Лісіцина <span>Менеджер проектів <br />в Master of Code. </span></h3>\r\n<img src="images/alona_lisicina.png" />\r\n<p>Альона працює менеджером проектів у компанії Master of Code LLC. У Geekhub Альона викладає Project Management.</p>\r\n</li>\r\n<li>\r\n<h3>Дмитро Таряник <span>Android developer <br />в Master of Code. </span></h3>\r\n<img src="images/dmytro_tarianyk.png" />\r\n<p>Дмитро працює над проектом <a href="https://market.android.com/details?id=com.sirma.mobile.bible.android">LifeChurch Android app</a>. У GeekHub викладає Java for Android.</p>\r\n</li>\r\n<li class="odd">\r\n<h3>Сергій Гичка <span>Back-end developer <br />в Master of Code. </span></h3>\r\n<img src="images/sergii_gychka.png" />\r\n<p>Сергій працює з такими технологіями як Symfony, Drupal, JS, Zend Framework, CodeIgniter. Його проекти включають InnoLaunch Platform, <a href="http://www.thevx.com/">The VX</a>, <a href="http://fundforgenderequality.unwomen.org/">Fund for Gender Equality</a>, <a href="http://untf.unwomen.org/">UN Trust Fund to End Violence Against Women</a>. У GeekHub Сергій викладає Advanced CMS.</p>\r\n</li>\r\n<li>\r\n<h3>Юра Батора <span>Team Leader <br />в SPD-Ukraine. </span></h3>\r\n<img src="images/jura_batora.png" />\r\n<p>Юра займається розробкою комерційних проектів на Java зі складною клієнт-серверною архітектурою. У GeekHub викладає Java for Web.</p>\r\n</li>\r\n</ul>', '', 1, 12, '2012-11-18 21:05:37', 299, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-18 21:05:37', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(37, 101, 'Зв’язок', 'зв’язок', '<dl><dt class="map"><span class="title">Заходьте</span></dt><dd class="map">\r\n<div id="map" style="width: 382px; height: 287px;">{mosmap width=''382''|height=''273''|zoom=''15''}</div>\r\n</dd><dt><span class="title">Звоніть</span></dt><dd><img src="images/phone.png" alt="phone" /></dd><dt><span class="title">Пишіть</span></dt><dd><img src="images/email.png" alt="email" /></dd><dt><span class="title">Слідкуйте</span></dt><dd>\r\n<ul>\r\n<li class="fb"><a href="http://www.facebook.com/pages/GeekHub/158983477520070">facebook</a></li>\r\n<li class="vk"><a href="http://vkontakte.ru/geekhub">vkontakte</a></li>\r\n<li class="tw"><a href="http://twitter.com/#!/geek_hub">twitter</a></li>\r\n</ul>\r\n</dd></dl>', '', 1, 37, '2012-11-18 21:11:11', 299, '', '2012-11-18 21:42:45', 299, 0, '0000-00-00 00:00:00', '2012-11-18 21:11:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, '', '', 1, 23, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `ypj7a_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_content_rating`
--

CREATE TABLE IF NOT EXISTS `ypj7a_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `ypj7a_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_extensions`
--

CREATE TABLE IF NOT EXISTS `ypj7a_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=707 ;

--
-- Дамп данных таблицы `ypj7a_extensions`
--

INSERT INTO `ypj7a_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2012, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2.1","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"12.2","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"3.0.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2012","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.6","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0);
INSERT INTO `ypj7a_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.0.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"October 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(701, 'geekhub', 'template', 'geekhub', '', 0, 1, 1, 0, '{"name":"geekhub","type":"template","creationDate":"11 November 2012","author":"Irina Gichka","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.0.0","description":"TPL_GEEKHUB_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature","backgroundcolor":"#eee"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(702, 'PLG_SYSTEM_SOURCERER', 'plugin', 'sourcerer', 'system', 0, 1, 1, 0, '{"name":"PLG_SYSTEM_SOURCERER","type":"plugin","creationDate":"November 2012","author":"NoNumber (Peter van Westen)","copyright":"Copyright \\u00a9 2012 NoNumber All Rights Reserved","authorEmail":"peter@nonumber.nl","authorUrl":"http:\\/\\/www.nonumber.nl","version":"4.0.2FREE","description":"PLG_SYSTEM_SOURCERER_DESC","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(703, 'Button - Sourcerer', 'plugin', 'sourcerer', 'editors-xtd', 0, 1, 1, 0, '{"name":"Button - Sourcerer","type":"plugin","creationDate":"November 2012","author":"NoNumber (Peter van Westen)","copyright":"Copyright \\u00a9 2012 NoNumber All Rights Reserved","authorEmail":"peter@nonumber.nl","authorUrl":"http:\\/\\/www.nonumber.nl","version":"4.0.2FREE","description":"PLG_EDITORS-XTD_SOURCERER_DESC","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(705, 'Google Maps', 'plugin', 'plugin_googlemap2', 'system', 0, 1, 1, 0, '{"name":"Google Maps","type":"plugin","creationDate":"June 2012","author":"Mike Reumer","copyright":"(C) 2012 Reumer","authorEmail":"tech@reumer.net","authorUrl":"tech.reumer.net","version":"2.18","description":"PLUGIN_GOOGLE_MAPS_INSTALLATION","group":""}', '{"publ":"1","debug":"0","plugincode":"mosmap","brackets":"{","Google_API_version":"3.x","show":"1","mapclass":"","mapcss":"\\/* For img in the map remove borders, shadow, no margin and no max-width\\r\\n*\\/\\r\\n.map img {\\r\\n    border: 0px;\\r\\n    box-shadow: 0px;\\r\\n    margin: 0px;\\r\\n    max-width: none !important;\\r\\n}\\r\\n\\r\\n\\/* Make sure the directions are below the map\\r\\n*\\/\\r\\n.directions {\\r\\n    clear: left;\\r\\n}\\r\\n\\r\\n\\/* Solve problems in chrome with the show of the direction steps in full width\\r\\n*\\/\\r\\n.adp-placemark {\\r\\n    width : 100%\\r\\n}","loadmootools":"1","timeinterval":"500","Google_API_key":"AIzaSyAprCCGmsSuRDAgE6qxqPyrCZXXY1-ojGk","Google_Multi_API_key":"","urlsetting":"http_host","googlewebsite":"maps.google.com","googleindexing":"1","styledmap":"","align":"center","langtype":"site","lang":"","width":"500","height":"400","effect":"none","lat":"49.42608363349172","lon":"32.09461569786072","centerlat":"","centerlon":"","address":"","latitudeid":"","latitudedesc":"1","latitudecoord":"0","latitudeform":"0","controltype":"UI","zoomType":"3D-large","svcontrol":"0","zoom":"10","corzoom":"0","minzoom":"0","maxzoom":"19","rotation":"1","zoomnew":"0","zoomWheel":"0","keyboard":"0","mapType":"Normal","showmaptype":"1","showNormalMaptype":"1","showSatelliteMaptype":"1","showHybridMaptype":"1","showTerrainMaptype":"1","showEarthMaptype":"1","showscale":"0","overview":"0","ovzoom":"-3","navlabel":"0","dragging":"1","marker":"1","icon":"","iconwidth":"","iconheight":"","iconanchorx":"","iconanchory":"","iconshadow":"","iconshadowwidth":"","iconshadowheight":"","iconinfoanchorx":"","iconinfoanchory":"","icontransparent":"","iconimagemap":"","traffic":"0","transit":"0","bicycle":"0","panoramio":"none","panotype":"none","panoorder":"popularity","panomax":"50","youtube":"none","wiki":"none","adsmanager":"0","maxads":"3","localsearch":"0","adsense":"","channel":"","googlebar":"0","searchlist":"inline","searchtarget":"_blank","searchzoompan":"1","weather":"0","weathercloud":"0","weatherinfo":"1","weathertempunit":"celsius","weatherwindunit":"km","dir":"0","dirtype":"D","avoidhighways":"0","diroptimize":"0","diralternatives":"0","showdir":"1","animdir":"0","animspeed":"1","animautostart":"0","animunit":"kilometers","formspeed":"0","formdirtype":"0","formaddress":"0","formdir":"0","autocompl":"both","langanim":"en;The requested panorama could not be displayed|Could not generate a route for the current start and end addresses|Street View coverage is not available for this route|You have reached your destination|miles|miles|ft|kilometers|kilometer|meters|In|You will reach your destination|Stop|Drive|Press Drive to follow your route|Route|Speed|Fast|Medium|Slow","txtdir":"Directions: ","txtgetdir":"Get Directions","txtfrom":"From here","txtto":"To here","txtdiraddr":"Address: ","txt_driving":"","txt_avhighways":"","txt_walking":"","txt_bicycle":"","txt_transit":"","txt_optimize":"","txt_alternatives":"","dirdefault":"0","gotoaddr":"0","gotoaddrzoom":"0","txtaddr":"Address: ##","erraddr":"Address ## not found!","clientgeotype":"google","lightbox":"0","txtlightbox":"Open lightbox","lbxcaption":"","lbxwidth":"500","lbxheight":"700","lbxcenterlat":"","lbxcenterlon":"","lbxzoom":"","sv":"none","svwidth":"100%","svheight":"300","svyaw":"0","svpitch":"0","svzoom":"","svautorotate":"0","svaddress":"1","earthtimeout":"100","earthborders":"1","earthbuildings":"0","earthroads":"0","earthterrain":"0","kmlrenderer":"google","kmlsidebar":"none","kmlsbwidth":"200","kmlfoldersopen":"0","kmlhide":"0","kmlscale":"0","kmlopenmethod":"click","kmlsbsort":"none","kmllightbox":"0","kmlmessshow":"0","kmlclickablemarkers":"1","kmlzoommarkers":"0","kmlopendivmarkers":"","kmlcontentlinkmarkers":"0","kmllinkablemarkers":"0","kmllinktarget":"_self","kmllinkmethod":"dblclick","kmlmarkerlabel":"100","kmlmarkerlabelclass":"","kmlpolylabel":"100","kmlpolylabelclass":"","proxy":"1","maxcluster":"","gridsize":"","minmarkerscluster":"","maxlinesinfocluster":"","clusterinfowindow":"click","clusterzoom":"dblclick","clustermarkerzoom":"16","tilelayer":"","tilemethod":"","tileopacity":"1","tilebounds":"","tileminzoom":"0","tilemaxzoom":"19","imageurl":"","imagex":"","imagey":"","imagexyunits":"pixels","imagewidth":"","imageheight":"","imageanchorx":"","imageanchory":"","imageanchorunits":"pixels","twittername":"","twittertweets":"15","twittericon":"\\/media\\/plugin_googlemap2\\/site\\/Twitter\\/twitter_map_icon.png","twitterline":"#ff0000ff","twitterlinewidth":"4","twitterstartloc":"0,0,0"}', '', '', 299, '2012-11-18 21:46:12', 0, 0),
(706, 'plg_system_nnframework', 'plugin', 'nnframework', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_filters`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `ypj7a_finder_taxonomy`
--

INSERT INTO `ypj7a_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_terms`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ypj7a_finder_terms_common`
--

INSERT INTO `ypj7a_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_finder_types`
--

CREATE TABLE IF NOT EXISTS `ypj7a_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_languages`
--

CREATE TABLE IF NOT EXISTS `ypj7a_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `ypj7a_languages`
--

INSERT INTO `ypj7a_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_menu`
--

CREATE TABLE IF NOT EXISTS `ypj7a_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=119 ;

--
-- Дамп данных таблицы `ypj7a_menu`
--

INSERT INTO `ypj7a_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 77, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 33, 34, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 35, 40, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 36, 37, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 38, 39, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(101, 'mainmenu', 'ГОЛОВНА', 'home', '', 'home', 'index.php?option=com_content&view=article&id=34', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"0","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 1, '*', 0),
(102, 'mainmenu', 'ПРО GEEKHUB', 'about-geekhub', '', 'about-geekhub', 'index.php?option=com_content&view=article&id=13', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"about","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 44, 0, '*', 0),
(103, 'mainmenu', 'КОМАНДА', 'team', '', 'team', 'index.php?option=com_content&view=article&id=36', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"_team","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 0, '*', 0),
(107, 'mainmenu', 'ЗВ''ЯЗОК', 'contact', '', 'contact', 'index.php?option=com_content&view=article&id=37', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"_contact","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 0, '*', 0),
(108, 'links', 'facebook', 'facebook', '', 'facebook', 'http://www.facebook.com/pages/GeekHub/158983477520070', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"fb","menu_image":"","menu_text":1}', 55, 56, 0, '*', 0),
(109, 'links', 'вконтакте', 'vkontakte', '', 'vkontakte', 'http://vkontakte.ru/geekhub', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"vk","menu_image":"","menu_text":1}', 57, 58, 0, '*', 0),
(110, 'links', 'twitter', 'twitter', '', 'twitter', 'http://twitter.com/#!/geek_hub', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"tw","menu_image":"","menu_text":1}', 59, 60, 0, '*', 0),
(111, 'links', 'you-tube', 'you-tube', '', 'you-tube', 'http://www.youtube.com/user/GeekHubchannel', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"yb","menu_image":"","menu_text":1}', 61, 62, 0, '*', 0),
(112, 'links', 'vimeo', 'vimeo', '', 'vimeo', 'http://vimeo.com/user8452244', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"v","menu_image":"","menu_text":1}', 63, 64, 0, '*', 0),
(113, 'sponsor-s-links', 'Дім Євангелія', '2012-11-18-00-02-34', '', '2012-11-18-00-02-34', 'http://povnahata.com', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"de","menu_image":"","menu_text":1}', 65, 66, 0, '*', 0),
(114, 'sponsor-s-links', 'Masterofcode ltd', '2012-11-18-00-03-43', '', '2012-11-18-00-03-43', 'http://masterofcode.com', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"moc","menu_image":"","menu_text":1}', 67, 68, 0, '*', 0),
(115, 'sponsor-s-links', 'SerGium.net', '2012-11-18-00-04-52', '', '2012-11-18-00-04-52', 'http://sergium.net', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"sergium","menu_image":"","menu_text":1}', 69, 70, 0, '*', 0),
(116, 'sponsor-s-links', 'val.co.ua', '2012-11-18-00-06-18', '', '2012-11-18-00-06-18', 'http://val.co.ua/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"clear left stuff","menu_image":"","menu_text":1}', 71, 72, 0, '*', 0),
(117, 'sponsor-s-links', 'Youthog.com', '2012-11-18-00-07-03', '', '2012-11-18-00-07-03', 'http://yothog.com', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"youthog","menu_image":"","menu_text":1}', 73, 74, 0, '*', 0),
(118, 'certificates', 'certificates registry', 'certificates', '', 'certificates', 'index.php?option=com_content&view=article&id=35', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"about","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 75, 76, 0, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_menu_types`
--

CREATE TABLE IF NOT EXISTS `ypj7a_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `ypj7a_menu_types`
--

INSERT INTO `ypj7a_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(3, 'links', 'social links', ''),
(5, 'sponsor-s-links', 'sponsors', ''),
(6, 'certificates', 'certificates registry', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_messages`
--

CREATE TABLE IF NOT EXISTS `ypj7a_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `ypj7a_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_modules`
--

CREATE TABLE IF NOT EXISTS `ypj7a_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=95 ;

--
-- Дамп данных таблицы `ypj7a_modules`
--

INSERT INTO `ypj7a_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","active":"","startLevel":"1","endLevel":"3","showAllChildren":"0","tag_id":"","class_sfx":"nav","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'registration_splash', '', '<h4 class="registration">Нажаль, реєстрацію на другий сезон вже зачинено. Чекаємо на Вас наступного року!</h4>\r\n<p><img src="images/splash.png" alt="splash" style="display: block; margin-left: auto; margin-right: auto;" /></p>', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 'social links', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"links","active":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"3","class_sfx":"links","window_open":"2","layout":"_:default","moduleclass_sfx":"links","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 'news', '', '<p><strong>GeekHub</strong> — це проект, що надає можливість отримати практичні знання та навички в сфері розробки програмного забезпечення. На відміну від традиційної освіти, викладачі GeekHub працюють з новітніми технологіями у провідних софтверних компаніях, тому слухачі GeekHub отримують тільки актуальні знання. Якщо ти зацікавлений — запрошуємо ознайомитись з <a href="about-geekhub">деталями проекту</a>.</p>', 1, 'position-12', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"description","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 'Наші Спонсори', '', '', 2, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"sponsor-s-links","active":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"our_sponsors","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 'aaaaaaa', '', '', 0, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","active":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 'VK_block', '', '<p>{source}<span style="font-family: courier new, courier, monospace;"><br />&lt;!-- You can place html anywhere within the source tags --&gt;<br /><br /><br /><span>&lt;</span>script language="javascript" type="text/javascript"<span>&gt;</span><br />    // You can place JavaScript like this<br />    VK.Widgets.Group("vk", {mode: 0, width: "276", height: "240"}, 30111409);<br />&lt;/script<span>&gt;</span><br />&lt;?php<br />    // You can place PHP like this<br />    <br />?&gt;<br /></span>{/source}</p>', 0, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 'ссылка на сертификаты', '', '<h4><a href="certificates.html">Сертифiкованi професiонали</a></h4>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_modules_menu`
--

CREATE TABLE IF NOT EXISTS `ypj7a_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ypj7a_modules_menu`
--

INSERT INTO `ypj7a_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 101),
(88, 0),
(90, 101),
(91, 101),
(92, 0),
(93, 101),
(94, 101);

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `ypj7a_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_overrider`
--

CREATE TABLE IF NOT EXISTS `ypj7a_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_redirect_links`
--

CREATE TABLE IF NOT EXISTS `ypj7a_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `ypj7a_redirect_links`
--

INSERT INTO `ypj7a_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://irish.home/certified-professionals.html', '', 'http://irish.home/', '', 1, 0, '2012-11-18 18:02:55', '0000-00-00 00:00:00'),
(2, 'http://irish.home/about.html', '', 'http://irish.home/', '', 1, 0, '2012-11-18 18:03:57', '0000-00-00 00:00:00'),
(3, 'http://irish.home/contacts.html', '', 'http://irish.home/about-geekhub.html', '', 1, 0, '2012-11-18 21:02:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_schemas`
--

CREATE TABLE IF NOT EXISTS `ypj7a_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ypj7a_schemas`
--

INSERT INTO `ypj7a_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_session`
--

CREATE TABLE IF NOT EXISTS `ypj7a_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ypj7a_session`
--

INSERT INTO `ypj7a_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('1ludbt128i8huj3vr8l5f5aak6', 0, 1, '1353433807', '__default|a:7:{s:15:"session.counter";i:5;s:19:"session.timer.start";i:1353433535;s:18:"session.timer.last";i:1353433561;s:17:"session.timer.now";i:1353433807;s:22:"session.client.browser";s:74:"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:16.0) Gecko/20100101 Firefox/16.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, ''),
('4rdcm0r5itg85d82r7ikopikb5', 1, 0, '1353433798', '__default|a:8:{s:15:"session.counter";i:21;s:19:"session.timer.start";i:1353433189;s:18:"session.timer.last";i:1353433798;s:17:"session.timer.now";i:1353433798;s:22:"session.client.browser";s:74:"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:16.0) Gecko/20100101 Firefox/16.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":4:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_installer";O:8:"stdClass":2:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";}s:11:"com_content";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}}s:9:"com_menus";O:8:"stdClass":2:{s:5:"items";O:8:"stdClass":2:{s:6:"filter";O:8:"stdClass":1:{s:8:"menutype";s:12:"certificates";}s:10:"limitstart";i:0;}s:4:"edit";O:8:"stdClass":1:{s:4:"item";O:8:"stdClass":4:{s:2:"id";a:1:{i:0;i:118;}s:4:"data";N;s:4:"type";N;s:4:"link";N;}}}}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"299";s:4:"name";s:10:"Super User";s:8:"username";s:5:"Irina";s:5:"email";s:20:"irishchest@gmail.com";s:8:"password";s:65:"805eaacba3ee9cfeea7a2fc972b638de:OczqrGKiCPzprX5PbQYImch2oO9T4QSr";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2012-11-04 14:45:07";s:13:"lastvisitDate";s:19:"2012-11-20 14:32:38";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"2770fafaece2649b933469190a5073b5";}', 299, 'Irina');

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_template_styles`
--

CREATE TABLE IF NOT EXISTS `ypj7a_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `ypj7a_template_styles`
--

INSERT INTO `ypj7a_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'geekhub', 0, '1', 'geekhub - Default', '{"wrapperSmall":53,"wrapperLarge":72,"logo":"","sitetitle":"","sitedescription":"","navposition":"center","bootstrap":"","templatecolor":"nature","headerImage":"","backgroundcolor":"#eee"}');

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_updates`
--

CREATE TABLE IF NOT EXISTS `ypj7a_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=807 ;

--
-- Дамп данных таблицы `ypj7a_updates`
--

INSERT INTO `ypj7a_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.0.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(2, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(3, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(4, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', ''),
(5, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(6, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(7, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.0.0.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', ''),
(8, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.1.2', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(9, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(10, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.1.2', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(11, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(12, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(13, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(14, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(15, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(16, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(17, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(18, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.0.3', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(19, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(20, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(21, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(22, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.0.0.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', ''),
(23, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(24, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.0.1.2', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', ''),
(25, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.1.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(26, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(27, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(28, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(29, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(30, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(31, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.1.2', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(32, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(33, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.0.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(34, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(35, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(36, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(37, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.1.2', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(38, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(39, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(40, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(41, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(42, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(43, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(44, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(45, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(46, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(47, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(48, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(49, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(50, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.1.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(51, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(52, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(53, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(54, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(55, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(56, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(57, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(58, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(59, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(60, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(61, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(62, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(63, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(64, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(65, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(66, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(67, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(68, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(69, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(70, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(71, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(72, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(73, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(74, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(75, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(76, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(77, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(78, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(79, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(80, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(81, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(82, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(83, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(84, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(85, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(86, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(87, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(88, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(89, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(90, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(91, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(92, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(93, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(94, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(95, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(96, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(97, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(98, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(99, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(100, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(101, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(102, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(103, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(104, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(105, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(106, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(107, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(108, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(109, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(110, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(111, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(112, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(113, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(114, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(115, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(116, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(117, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(118, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(119, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(120, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(121, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(122, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(123, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(124, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(125, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(126, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(127, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(128, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(129, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(130, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(131, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(132, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(133, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(134, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(135, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(136, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(137, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(138, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(139, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(140, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(141, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(142, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(143, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(144, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(145, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(146, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(147, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(148, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(149, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(150, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(151, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(152, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(153, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(154, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(155, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(156, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(157, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(158, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(159, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(160, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(161, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(162, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(163, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(164, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(165, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(166, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(167, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(168, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(169, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(170, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(171, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(172, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(173, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(174, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(175, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(176, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(177, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(178, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(179, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(180, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(181, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(182, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(183, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(184, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(185, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(186, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(187, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(188, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(189, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(190, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(191, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(192, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(193, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(194, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(195, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(196, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(197, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(198, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(199, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(200, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(201, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(202, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(203, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(204, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(205, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(206, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(207, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(208, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(209, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(210, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(211, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(212, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(213, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(214, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(215, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(216, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(217, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(218, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(219, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(220, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(221, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(222, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(223, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(224, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(225, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(226, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(227, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(228, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(229, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(230, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(231, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(232, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(233, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(234, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(235, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(236, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(237, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(238, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(239, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(240, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(241, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(242, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(243, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(244, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(245, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(246, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(247, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(248, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(249, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(250, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(251, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(252, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(253, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(254, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(255, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(256, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(257, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(258, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(259, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(260, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(261, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(262, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(263, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(264, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(265, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(266, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(267, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(268, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(269, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(270, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(271, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(272, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(273, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(274, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(275, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(276, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(277, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(278, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(279, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(280, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(281, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(282, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(283, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(284, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(285, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(286, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(287, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(288, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(289, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(290, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(291, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(292, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(293, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(294, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(295, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(296, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(297, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(298, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(299, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(300, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(301, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(302, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(303, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(304, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(305, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(306, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(307, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(308, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(309, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(310, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(311, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(312, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(313, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(314, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(315, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(316, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(317, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(318, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(319, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(320, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(321, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(322, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(323, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(324, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(325, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(326, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(327, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(328, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(329, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(330, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(331, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(332, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(333, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(334, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(335, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(336, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(337, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(338, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(339, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(340, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(341, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(342, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(343, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(344, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(345, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(346, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(347, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(348, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(349, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(350, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(351, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', '');
INSERT INTO `ypj7a_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(352, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(353, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(354, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(355, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(356, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(357, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(358, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(359, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(360, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(361, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(362, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(363, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(364, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(365, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(366, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(367, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(368, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(369, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(370, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(371, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(372, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(373, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(374, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(375, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(376, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(377, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(378, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(379, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(380, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(381, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(382, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(383, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(384, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(385, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(386, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(387, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(388, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(389, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(390, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(391, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(392, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(393, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(394, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(395, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(396, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(397, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(398, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(399, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(400, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(401, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(402, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(403, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(404, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(405, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(406, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(407, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(408, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(409, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(410, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(411, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(412, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(413, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(414, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(415, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(416, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(417, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(418, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(419, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(420, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(421, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(422, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(423, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(424, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(425, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(426, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(427, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(428, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(429, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(430, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(431, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(432, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(433, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(434, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(435, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(436, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(437, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(438, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(439, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(440, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(441, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(442, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(443, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(444, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(445, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(446, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(447, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(448, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(449, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(450, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(451, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(452, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(453, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', ''),
(454, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(455, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(456, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(457, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(458, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(459, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(460, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(461, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(462, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(463, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(464, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(465, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(466, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(467, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(468, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(469, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(470, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(471, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(472, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(473, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(474, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(475, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(476, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(477, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(478, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(479, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(480, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(481, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(482, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(483, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(484, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(485, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(486, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(487, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(488, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(489, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(490, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(491, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(492, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(493, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(494, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(495, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(496, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(497, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(498, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(499, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(500, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(501, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(502, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(503, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(504, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(505, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(506, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(507, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(508, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(509, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(510, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(511, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(512, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(513, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(514, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(515, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(516, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(517, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(518, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(519, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(520, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(521, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(522, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(523, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(524, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(525, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(526, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(527, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(528, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(529, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(530, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(531, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(532, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(533, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(534, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(535, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(536, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(537, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(538, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(539, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(540, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(541, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(542, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(543, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(544, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(545, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(546, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(547, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(548, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(549, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(550, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(551, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(552, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(553, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(554, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(555, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(556, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(557, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(558, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(559, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(560, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(561, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(562, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(563, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(564, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(565, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(566, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(567, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(568, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(569, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(570, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(571, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(572, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(573, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(574, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(575, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(576, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(577, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(578, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(579, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(580, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(581, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(582, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(583, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(584, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(585, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(586, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(587, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(588, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(589, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(590, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(591, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(592, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(593, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(594, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(595, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(596, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(597, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(598, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(599, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(600, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(601, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(602, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(603, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(604, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(605, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(606, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(607, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(608, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(609, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(610, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(611, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(612, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(613, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(614, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(615, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(616, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(617, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(618, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(619, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(620, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(621, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(622, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(623, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(624, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(625, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(626, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(627, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(628, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(629, 5, 0, 'Google Maps', 'Plugin Googlemap for showing Google Maps in your Joomla website', 'plugin_googlemap2', 'plugin', 'system', 1, '2.18', '', 'http://tech.reumer.net/update/plugin_googlemap2/extension.xml', 'http://tech.reumer.net'),
(630, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(631, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(632, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(633, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(634, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(635, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(636, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(637, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(638, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(639, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(640, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(641, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(642, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(643, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(644, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(645, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(646, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(647, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(648, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(649, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(650, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(651, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(652, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(653, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(654, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(655, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(656, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(657, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(658, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(659, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(660, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(661, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(662, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(663, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(664, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(665, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(666, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(667, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(668, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(669, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(670, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(671, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(672, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(673, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(674, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(675, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(676, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(677, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(678, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(679, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(680, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(681, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(682, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(683, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(684, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(685, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(686, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(687, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(688, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(689, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(690, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(691, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(692, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(693, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(694, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(695, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(696, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(697, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(698, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(699, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(700, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', '');
INSERT INTO `ypj7a_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(701, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(702, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/gl-ES_details.xml', ''),
(703, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(704, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(705, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(706, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(707, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(708, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(709, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(710, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(711, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(712, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(713, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(714, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(715, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(716, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(717, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(718, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(719, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(720, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(721, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(722, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(723, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(724, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(725, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(726, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(727, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(728, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(729, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(730, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(731, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(732, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(733, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(734, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(735, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(736, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(737, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(738, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(739, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(740, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(741, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(742, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(743, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(744, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(745, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(746, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(747, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(748, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(749, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(750, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(751, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(752, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(753, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(754, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(755, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(756, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(757, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(758, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(759, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(760, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(761, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(762, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(763, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(764, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(765, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(766, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(767, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(768, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(769, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(770, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(771, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(772, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(773, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/gl-ES_details.xml', ''),
(774, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(775, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(776, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(777, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(778, 3, 0, 'Chinese-Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(779, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(780, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(781, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(782, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(783, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(784, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(785, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(786, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(787, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(788, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(789, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(790, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(791, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(792, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(793, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(794, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(795, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(796, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(797, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.0.2.3', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(798, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(799, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(800, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(801, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(802, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(803, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(804, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(805, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(806, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_update_sites`
--

CREATE TABLE IF NOT EXISTS `ypj7a_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `ypj7a_update_sites`
--

INSERT INTO `ypj7a_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1353433196),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1353433196),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1353433196),
(4, 'Sourcerer', 'extension', 'http://download.nonumber.nl/updates.php?e=sourcerer&', 1, 1353433196),
(5, 'Plugin Googlemap Update Site', 'extension', 'http://tech.reumer.net/update/plugin_googlemap2/extension.xml', 1, 1353433196);

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `ypj7a_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `ypj7a_update_sites_extensions`
--

INSERT INTO `ypj7a_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 702),
(4, 703),
(5, 705);

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_usergroups`
--

CREATE TABLE IF NOT EXISTS `ypj7a_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `ypj7a_usergroups`
--

INSERT INTO `ypj7a_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_users`
--

CREATE TABLE IF NOT EXISTS `ypj7a_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=300 ;

--
-- Дамп данных таблицы `ypj7a_users`
--

INSERT INTO `ypj7a_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(299, 'Super User', 'Irina', 'irishchest@gmail.com', '805eaacba3ee9cfeea7a2fc972b638de:OczqrGKiCPzprX5PbQYImch2oO9T4QSr', 0, 1, '2012-11-04 14:45:07', '2012-11-20 17:39:53', '0', '', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_user_notes`
--

CREATE TABLE IF NOT EXISTS `ypj7a_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_user_profiles`
--

CREATE TABLE IF NOT EXISTS `ypj7a_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `ypj7a_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ypj7a_user_usergroup_map`
--

INSERT INTO `ypj7a_user_usergroup_map` (`user_id`, `group_id`) VALUES
(299, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_viewlevels`
--

CREATE TABLE IF NOT EXISTS `ypj7a_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `ypj7a_viewlevels`
--

INSERT INTO `ypj7a_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]');

-- --------------------------------------------------------

--
-- Структура таблицы `ypj7a_weblinks`
--

CREATE TABLE IF NOT EXISTS `ypj7a_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
