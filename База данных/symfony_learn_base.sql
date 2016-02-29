-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 29 2016 г., 11:18
-- Версия сервера: 5.5.47-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `symfony`
--
CREATE DATABASE IF NOT EXISTS `symfony` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `symfony`;

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blog` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=43 ;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `title`, `author`, `blog`, `image`, `tags`, `comments`, `created`, `updated`) VALUES
(1, 'Птица', 'Птица', 'Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица Птица ', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTybHDF7Uf6M1sTZAbb-ZHVXcQi33IydvfshK3J4Nsw1HG721Sd', '123', '', '2016-02-26 04:11:10', '2016-02-03 05:13:16'),
(2, 'Карикатура ', 'Карикатура ', 'Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура Карикатура ', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRssvMVjk7Wpuct4ZZF1o2G-4uVXLZGhIFsz9avJrzO4170peMR', '123', '', '2016-02-03 04:16:23', '2016-02-05 09:32:16'),
(3, 'Тетка ', '123', 'Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка Тетка ', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRAP8ZQOfz_xvO1jsNYqVPKSxhwpNKLsNXCFramZkElsoz0Jd1-', '123', '123', '2016-02-03 08:00:00', '2016-02-23 00:00:00'),
(4, 'Бородачь', 'ghhhhhhhhhhhhhhhhhhhhhhhhh', 'Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь Бородачь ', 'http://cs307912.vk.me/v307912194/502f/DgZksxN13h0.jpg', 'bbbbbbbbbbb', '123', '2016-02-03 08:00:00', '2016-02-23 00:00:00'),
(22, 'A day with Symfony2', 'dsyph3r', 'Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut velocity magna. Etiam vehicula nunc non leo hendrerit commodo. Vestibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque. Nulla consectetur tempus nisl vitae viverra. Cras el mauris eget erat congue dapibus imperdiet justo scelerisque. Nulla consectetur tempus nisl vitae viverra. Cras elementum molestie vestibulum. Morbi id quam nisl. Praesent hendrerit, orci sed elementum lobortis, justo mauris lacinia libero, non facilisis purus ipsum non mi. Aliquam sollicitudin, augue id vestibulum iaculis, sem lectus convallis nunc, vel scelerisque lorem tortor ac nunc. Donec pharetra eleifend enim vel porta.', 'http://www.zooclub.ru/skat/img.php?w=700&h=700&img=./attach/12000/12669.jpg', 'symfony2, php, paradise, symblog', 'dddddd', '2016-02-25 13:48:10', '2016-02-25 13:48:10'),
(23, 'The pool on the roof must have a leak', 'Zero Cool', 'Vestibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque. Na. Cras elementum molestie vestibulum. Morbi id quam nisl. Praesent hendrerit, orci sed elementum lobortis.', 'http://www.cruzo.net/user/images/k/dbb025264e7d1a35772dfa4387514de9_172.jpg', 'pool, leaky, hacked, movie, hacking, symblog', 'dddddd', '2011-07-23 06:12:33', '2011-07-23 06:12:33'),
(25, 'The grid - A digital frontier', 'Kevin Flynn', 'Lorem commodo. Vestibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque. Nulla consectetur tempus nisl vitae viverra.', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR7pFv8cNqWyfzOomYr0j10uCoZV_YN80VOgiSsShMCoqXmMlgLaA', 'grid, daftpunk, movie, symblog', 'dddddd', '2011-06-02 18:54:12', '2011-06-02 18:54:12'),
(26, 'You''re either a one or a zero. Alive or dead1111111', 'Gary Winston', 'Lorem ipsum dolor sit amet, consectetur adipiscing elittibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque.', 'http://mirgif.com/pozitiv/priroda-35.jpg', 'binary, one, zero, alive, dead, !trusting, movie, symblog', 'dddddd', '2018-04-25 15:34:18', '2011-04-25 15:34:18'),
(37, 'A day with Symfony2', 'dsyph3r', 'Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut velocity magna. Etiam vehicula nunc non leo hendrerit commodo. Vestibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque. Nulla consectetur tempus nisl vitae viverra. Cras el mauris eget erat congue dapibus imperdiet justo scelerisque. Nulla consectetur tempus nisl vitae viverra. Cras elementum molestie vestibulum. Morbi id quam nisl. Praesent hendrerit, orci sed elementum lobortis, justo mauris lacinia libero, non facilisis purus ipsum non mi. Aliquam sollicitudin, augue id vestibulum iaculis, sem lectus convallis nunc, vel scelerisque lorem tortor ac nunc. Donec pharetra eleifend enim vel porta.', 'http://100cards.ru/images/stories/cardsnew/Love-Cards/lc-1.jpg', 'symfony2, php, paradise, symblog', 'dddddd', '2016-02-25 17:57:58', '2016-02-25 17:57:58'),
(38, 'The pool on the roof must have a leak', 'Zero Cool', 'Vestibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque. Na. Cras elementum molestie vestibulum. Morbi id quam nisl. Praesent hendrerit, orci sed elementum lobortis.', 'http://www.kartinka.com.ua/images/2_mainpage.png', 'pool, leaky, hacked, movie, hacking, symblog', 'dddddd', '2011-07-23 06:12:33', '2011-07-23 06:12:33'),
(39, 'Misdirection. What the eyes see and the ears hear, the mind believes', 'Gabriel', 'Lorem ipsumvehicula nunc non leo hendrerit commodo. Vestibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque.', 'http://mirgif.com/1/koshki4.gif', 'misdirection, magic, movie, hacking, symblog', 'dddddd', '2011-07-16 16:14:06', '2011-07-16 16:14:06'),
(40, 'The grid - A digital frontier', 'Kevin Flynn', 'Lorem commodo. Vestibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque. Nulla consectetur tempus nisl vitae viverra.', 'http://www.sunhome.ru/wallpapers/512988?download', 'grid, daftpunk, movie, symblog', 'dddddd', '2011-06-02 18:54:12', '2011-06-02 18:54:12'),
(41, 'You''re either a one or a zero. Alive or dead22222222', 'Gary Winston', 'Lorem ipsum dolor sit amet, consectetur adipiscing elittibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque.', 'http://cs402630.vk.me/v402630276/8390/N8Sqna4o6mI.jpg', 'binary, one, zero, alive, dead, !trusting, movie, symblog', 'dddddd', '2017-08-25 15:34:18', '2017-04-25 15:34:18'),
(42, 'n1', 'a1', 'b1', '', 't1', 'c1', '2018-05-05 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526CDAE07E97` (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `blog_id`, `user`, `comment`, `approved`, `created`, `updated`) VALUES
(1, 42, 'errere', 'eeeeeeeeeeeeeeeeeeeeeeeeee', 1, '2016-02-27 00:00:00', '2016-02-27 00:00:00'),
(2, 42, 'wwwwwwwwwwwwwww', 'wwwwwwwwwwwwwwwwwwww', 1, '2016-02-27 00:00:00', '2016-02-27 00:00:00'),
(3, 42, 'rffffffffffffff', 'fffffffffffffffffffffff', 1, '2016-02-27 00:00:00', '2016-02-27 00:00:00'),
(4, 1, '11111111111', '22222222222222222222', 1, '2016-02-27 00:00:00', '2016-02-27 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `enquiry`
--

CREATE TABLE IF NOT EXISTS `enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `migration_versions`
--

CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526CDAE07E97` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
