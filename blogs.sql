-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 17 2015 г., 14:19
-- Версия сервера: 5.5.25
-- Версия PHP: 5.5.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `blogs`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contact_message`
--

CREATE TABLE IF NOT EXISTS `contact_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(250) NOT NULL,
  `phone` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `contact_message`
--

INSERT INTO `contact_message` (`id`, `message`, `date`, `name`, `phone`) VALUES
(1, 'dsfsdf', '2015-12-17 07:22:26', 'sfs', 3432),
(2, 'sf', '2015-12-17 11:47:13', 'dsf', 23234),
(3, 'dsfsdgsdgdfg', '2015-12-17 11:48:14', 'name', 45674);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `text` text NOT NULL,
  `text_previe` varchar(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `date`, `text`, `text_previe`, `img`) VALUES
(4, 'cvcvbcvb', '2015-12-17 09:31:23', 'cvcvbcvbcvcvbcvbcvcvbcvbcvcvbcvbcvcvbcvbcvcvbcvbcvcvbcvb\r\n', 'cvcvbcvb', '/static/images/img55a803ab8.jpg'),
(6, 'Fallout 4', '2015-12-17 09:32:08', 'И у мужчины, и у женщины будет по 13 тысяч реплик.\r\n\r\nОдин из разработчиков четвертой части легендарной серии Fallout 4 Тодд Говард из Bethesda Softworks, поделился новыми подробностями, которые позволят оценить масштабы игры.\r\n\r\nОн рассказал, что одни строки диалога для главных героев игры записывали в течение 2 лет.\r\n\r\nАктеры записывали реплики персонажей в течение 2 лет. И у мужчины, и у женщины будет по 13 тысяч реплик&quot;, &mdash; рассказал Говард.\r\n\r\nНам повезло найти отличных актеров. У актрисы есть невероятный талант читать или играть совсем по-другому, чем у актера. Поэтому каждая сцена будет уникально в зависимости от того, играете ли вы женщиной или мужчиной\r\n\r\nДля разработки четвертой части серии Bethesda Softworks выбрала Брайана Ти Делани (Brian T Delaney) и Кортни Тейлор (Courtenay Taylor). Актеры озвучили персонажей, которые, как предполагают фанаты, связаны с военными. Об этом свидетельствует целый перечень различных мелких подсказок, которые оставили разработчики в трейлерах и на скриншотах игры.\r\n\r\nВ случае, если догадки окажутся верными, значит Убежище 111, является убежищем для военных. Остается только гадать, какие передовые военные технологии оставили там разработчики.\r\n', 'Разработчик Fallout 4 раскрыл новые подробности', '/static/images/img55a80e0a9.png'),
(7, 'Fallout Shelter заработал более $5 миллионов за две недели', '2015-12-17 11:54:51', 'Июнь был хорошим месяцем для цифровых продаж. Особенно это касается Fallout Shelter от Bethesda\r\nСогласно последнему отчету SuperData, первая в истории мобильная игра Bethesda заработала&nbsp;$5.1 миллион всего за первые две недели с релиза. И это при том, что она была доступна только на iOS.</p>\r\n\r\nВ целом мобильные доходы за прошлый месяц выросли на 4% с Мая, и на 20% в сравнении с прошлым Июнем, добравшись до отметки в $367 миллионов.\r\n\r\nЦифровые консольные и PC продажи в общем составили $314 миллионов, что на 30% больше, чем годом ранее', 'Июнь был хорошим месяцем для цифровых продаж. Особенно это касается Fallout Shelter от Bethesda.  Согласно последнему отчету SuperData, первая в истории мобильная игра Bethesda заработала $5.1', '/static/images/img55ae4fca2.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usersname` varchar(100) NOT NULL,
  `userpass` varchar(250) NOT NULL,
  `role` varchar(250) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `usersname`, `userpass`, `role`) VALUES
(1, 'admin', '12345', '2'),
(2, 'alexey', '12345', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
