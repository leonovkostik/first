-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июл 11 2017 г., 04:57
-- Версия сервера: 5.5.49-0ubuntu0.14.04.1
-- Версия PHP: 7.1.3-3+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `football`
--

-- --------------------------------------------------------

--
-- Структура таблицы `championship`
--

CREATE TABLE IF NOT EXISTS `championship` (
  `championship_id` int(11) NOT NULL AUTO_INCREMENT,
  `season_year` varchar(255) NOT NULL,
  PRIMARY KEY (`championship_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `championship`
--

INSERT INTO `championship` (`championship_id`, `season_year`) VALUES
(1, '2016/2017\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `championship_team`
--

CREATE TABLE IF NOT EXISTS `championship_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `championship_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `championship_team`
--

INSERT INTO `championship_team` (`id`, `team_id`, `championship_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 4, 1),
(4, 5, 1),
(5, 6, 1),
(6, 7, 1),
(7, 8, 1),
(8, 9, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `city`
--

INSERT INTO `city` (`city_id`, `name`) VALUES
(1, 'Киев'),
(2, 'Днепр'),
(3, 'Харьков'),
(4, 'Полтава'),
(5, 'Львов'),
(6, 'Луцк'),
(7, 'Александрия'),
(8, 'Кировоград'),
(9, 'Донецк'),
(10, 'Луганск');

-- --------------------------------------------------------

--
-- Структура таблицы `coach`
--

CREATE TABLE IF NOT EXISTS `coach` (
  `coach_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`coach_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `coach`
--

INSERT INTO `coach` (`coach_id`, `firstname`, `lastname`, `avatar`) VALUES
(1, 'Сергей', 'Ребров', 'avatar1.png'),
(2, 'Паоло', 'Фонсека', 'avatar2.png'),
(3, 'Олег', 'Дулуб', 'avatar4.png'),
(4, 'Виталий', 'Кварцяный', 'avatar5.png'),
(5, 'Дмитрий', 'Михайленко', 'ava.png'),
(6, 'Владимир', 'Шаран', 'avatar12321.png'),
(7, 'Василий', 'Сачко', '1231.png'),
(8, 'Роман', 'Монарев', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `match`
--

CREATE TABLE IF NOT EXISTS `match` (
  `match_id` int(11) NOT NULL AUTO_INCREMENT,
  `attendance` int(6) NOT NULL,
  `match_date` date NOT NULL,
  `stadium_id` int(11) NOT NULL,
  `referee_id` int(11) NOT NULL,
  `first_match_team_id` int(11) NOT NULL,
  `second_match_team_id` int(11) NOT NULL,
  PRIMARY KEY (`match_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `match`
--

INSERT INTO `match` (`match_id`, `attendance`, `match_date`, `stadium_id`, `referee_id`, `first_match_team_id`, `second_match_team_id`) VALUES
(1, 62000, '2017-07-03', 1, 3, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `match_team`
--

CREATE TABLE IF NOT EXISTS `match_team` (
  `match_team_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  PRIMARY KEY (`match_team_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `match_team`
--

INSERT INTO `match_team` (`match_team_id`, `team_id`, `match_id`, `player_id`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 3),
(3, 1, 1, 4),
(4, 1, 1, 5),
(5, 1, 1, 6),
(6, 1, 1, 10),
(7, 1, 1, 12),
(8, 1, 1, 13),
(9, 1, 1, 14),
(10, 1, 1, 21),
(11, 1, 1, 19),
(12, 2, 1, 25),
(13, 2, 1, 26),
(14, 2, 1, 27),
(15, 2, 1, 28),
(16, 2, 1, 39),
(17, 2, 1, 33),
(18, 2, 1, 35),
(19, 2, 1, 36),
(20, 2, 1, 37),
(21, 2, 1, 40),
(22, 2, 1, 41);

-- --------------------------------------------------------

--
-- Структура таблицы `player`
--

CREATE TABLE IF NOT EXISTS `player` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `position_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `is_captain` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Дамп данных таблицы `player`
--

INSERT INTO `player` (`player_id`, `firstname`, `lastname`, `avatar`, `position_id`, `team_id`, `is_captain`) VALUES
(1, 'Максим', 'Коваль', '', 1, 1, 0),
(2, 'Артур', 'Рудько', '', 1, 1, 0),
(3, 'Александар', 'Пантич', '', 2, 1, 0),
(4, 'Виторино', 'Антунеш', '', 2, 1, 0),
(5, 'Домагой', 'Вида', 'vida.png', 2, 1, 0),
(6, 'Никита', 'Бурда', '', 2, 1, 0),
(7, 'Евгений', 'Хачериди', '', 2, 1, 0),
(8, 'Александр', 'Тымчик', '', 2, 1, 0),
(9, 'Тамаш', 'Кадар', 'ava.png', 2, 1, 0),
(10, 'Владимир', 'Шепелев', 'ava1.png', 3, 1, 0),
(11, 'Николай', 'Морозюк', '', 3, 1, 0),
(12, 'Андрей', 'Ярмоленко', '', 3, 1, 1),
(13, 'Виктор', 'Цыганков', '', 3, 1, 0),
(14, 'Сергей', 'Сидорчук', '', 3, 1, 0),
(15, 'Сергей', 'Рыбалка', '', 3, 1, 0),
(16, 'Денис', 'Гармаш', '', 3, 1, 0),
(17, 'Олег', 'Гусев', 'gusev.png', 3, 1, 0),
(18, 'Виталий', 'Буяльский', '', 3, 1, 0),
(19, 'Жуниор', 'Морайес', '', 4, 1, 0),
(20, 'Дмитрий', 'Хлебас', '', 4, 1, 0),
(21, 'Артем', 'Кравец', '', 4, 1, 0),
(22, 'Артем', 'Беседин', '', 4, 1, 0),
(23, 'Дерлис', 'Гонсалес', '', 4, 1, 0),
(24, 'Никита', 'Шевченко', '', 1, 2, 0),
(25, 'Андрей', 'Пятов', '', 1, 2, 0),
(26, 'Богдан', 'Бутко', 'butko.png', 2, 2, 0),
(27, 'Сергей', 'Кривцов', '', 2, 2, 0),
(28, 'Ярослав', 'Ракицкий', '', 2, 2, 0),
(29, 'Иван', 'Ордец', '', 2, 2, 0),
(30, 'Дарио', 'Срна', '', 2, 2, 1),
(31, 'Марсио', 'Азеведо', '', 2, 2, 0),
(32, 'Дмитрий', 'Шевченко', '', 2, 2, 0),
(33, 'Тарас', 'Степаненко', '', 3, 2, 0),
(34, 'Максим', 'Малышев', '', 3, 2, 0),
(35, 'Иван', 'Петряк', '', 3, 2, 0),
(36, 'Виктор ', 'Коваленко', '', 3, 2, 0),
(37, 'Фреда', 'Тайсон', '', 3, 2, 0),
(38, 'Юрий', 'Глущук', 'ava23.png', 3, 2, 0),
(39, 'Алан', 'Патрик', '', 3, 2, 0),
(40, 'Факундо', 'Феррейра', '', 4, 2, 0),
(41, 'Густаво', 'Бланко', '', 4, 2, 0),
(42, 'Роман', 'Яловенко', '', 4, 2, 0),
(43, 'Денис', 'Арендарук', '', 4, 2, 0),
(44, 'Дмитрий', 'Рудик', '', 1, 7, 0),
(45, 'Владислав', 'Леванидов', '', 1, 7, 0),
(46, 'Андрей', 'Новак', '', 1, 7, 0),
(47, 'Иван', 'Гаврушко', '', 2, 7, 0),
(48, 'Сергей', 'Симинин', '', 2, 7, 1),
(49, 'Кирилл', 'Прокопчук', '', 2, 7, 0),
(50, 'Андрей', 'Гитченко', '', 2, 7, 0),
(51, 'Сергей', 'Чеботаев', '', 2, 7, 0),
(52, 'Сергей', 'Басов', '', 2, 7, 0),
(53, 'Антон', 'Шендрик', '', 2, 7, 0),
(54, 'Владислав', 'Огиря', '', 3, 7, 0),
(55, 'Артем', 'Полярус', '', 3, 7, 0),
(56, 'Андрей', 'Цуриков', '', 3, 7, 0),
(57, 'Павел', 'Мягков', '', 3, 7, 0),
(58, 'Андрей', 'Запорожан', '', 3, 7, 0),
(59, 'Юрий', 'Путраш', '', 3, 7, 0),
(60, 'Виталий', 'Пономарь', '', 4, 7, 0),
(61, 'Артем', 'Чорний', '', 4, 7, 0),
(62, 'Ярослав', 'Довгий', '', 4, 7, 0),
(63, 'Иван', 'Силецкий', '', 1, 6, 0),
(64, 'Роман', 'Мысак', '', 1, 6, 0),
(65, 'Владимир', 'Сеница', '', 2, 6, 1),
(66, 'Назар', 'Виздрик', '', 2, 6, 0),
(67, 'Кристиан', 'Пас', '', 2, 6, 0),
(68, 'Иван', 'Лобай', '', 2, 6, 0),
(69, 'Андрей', 'Нестеров', '', 2, 6, 0),
(70, 'Назар', 'Вербный', '', 2, 6, 0),
(71, 'Назар', 'Стасишин', '', 2, 6, 0),
(72, 'Павел', 'Ксёнз', '', 3, 6, 0),
(73, 'Олег', 'Голодюк', '', 3, 6, 0),
(74, 'Игорь', 'Богач', '', 3, 6, 0),
(75, 'Артем', 'Филимонов', '', 3, 6, 0),
(76, 'Дмитрий', 'Полюганич', '', 3, 6, 0),
(77, 'Дмитрий', 'Клёц', '', 3, 6, 0),
(78, 'Игорь', 'Худобяк', '', 3, 6, 0),
(79, 'Максим', 'Саламаха', '', 4, 6, 0),
(80, 'Александр', 'Гладкий', '', 4, 6, 0),
(81, 'Виктор', 'Хомченко', '', 4, 6, 0),
(82, 'Игорь', 'Карпенко', '', 4, 6, 0),
(83, 'Владимир', 'Войтович', '', 4, 6, 0),
(84, 'Дмитрий', 'Заикин', '', 4, 6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `position`
--

CREATE TABLE IF NOT EXISTS `position` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `short_title` varchar(255) NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `position`
--

INSERT INTO `position` (`position_id`, `title`, `short_title`) VALUES
(1, 'Вратарь', 'GK'),
(2, 'Защитник', 'DF'),
(3, 'Полузащитник', 'MF'),
(4, 'Нападающий', 'ST');

-- --------------------------------------------------------

--
-- Структура таблицы `referee`
--

CREATE TABLE IF NOT EXISTS `referee` (
  `referee_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`referee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `referee`
--

INSERT INTO `referee` (`referee_id`, `firstname`, `lastname`, `avatar`) VALUES
(1, 'Игорь', 'Пасхал', 'avatar1.png'),
(2, 'Александр', 'Головков', 'avatar2.png'),
(3, 'Юрий', 'Можаровский', 'avatar3.png'),
(4, 'Константин', 'Труханов', NULL),
(5, 'Дмитрий', 'Кутаков', 'avatar5.png'),
(6, 'Анатолий', 'Жабченко', NULL),
(7, 'Евгений', 'Арановский', 'avatar7.png'),
(8, 'Иван', 'Бондарь', NULL),
(9, 'Николай', 'Балакин', 'avatar9.png'),
(10, 'Сергей', 'Бойко', 'avatar10.png'),
(11, 'Николай', 'Кривоносов', ''),
(12, 'Виктор', 'Швецов', '');

-- --------------------------------------------------------

--
-- Структура таблицы `stadium`
--

CREATE TABLE IF NOT EXISTS `stadium` (
  `stadium_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `opacity` int(11) NOT NULL,
  PRIMARY KEY (`stadium_id`),
  KEY `city_id` (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `stadium`
--

INSERT INTO `stadium` (`stadium_id`, `city_id`, `name`, `opacity`) VALUES
(1, 1, 'Олимпийский', 67000),
(2, 1, 'Динамо', 18000),
(3, 2, 'Днепр-Арена', 37500),
(4, 2, 'Метеор', 21000),
(7, 3, 'ОСК Металлист', 42500),
(8, 4, 'Ворскла', 25000),
(9, 5, 'Львов-Арена', 38000),
(10, 6, 'Авангард', 12000),
(11, 7, 'Центральный', 19500),
(12, 8, 'Звезда', 21000),
(13, 9, 'Шахтер-Арена', 56000),
(14, 10, 'Авангард', 19000);

-- --------------------------------------------------------

--
-- Структура таблицы `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL,
  `coach_id` int(11) NOT NULL,
  `stadium_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`team_id`),
  UNIQUE KEY `team_id` (`team_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `team`
--

INSERT INTO `team` (`team_id`, `city_id`, `coach_id`, `stadium_id`, `name`, `logo`) VALUES
(1, 1, 1, 1, 'Динамо Киев', 'dynamo.png'),
(2, 9, 2, 9, 'Шахтер Донецк', 'shaktar.png'),
(4, 2, 5, 3, 'ФК Днепр', 'dnepr.png'),
(5, 6, 4, 10, 'Волынь', 'volyn.png'),
(6, 5, 3, 9, 'Карпаты', 'karpaty.png'),
(7, 7, 6, 11, 'Александрия', 'alexandria.png'),
(8, 4, 7, 8, 'Ворскла', 'vorskla.png'),
(9, 8, 8, 12, 'Зирка', 'zirka.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
