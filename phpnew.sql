-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 18 2023 г., 15:38
-- Версия сервера: 8.0.24
-- Версия PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `phpnew`
--

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `url` varchar(255) NOT NULL,
  `size` int NOT NULL,
  `views` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `name`, `url`, `size`, `views`) VALUES
(20, '1.png', 'D:\\OpenServer\\domains\\templatesUsage/images//1.png', 179238, 1),
(21, '10.png', 'D:\\OpenServer\\domains\\templatesUsage/images//10.png', 127312, 1),
(22, '11.png', 'D:\\OpenServer\\domains\\templatesUsage/images//11.png', 115401, 1),
(23, '12.png', 'D:\\OpenServer\\domains\\templatesUsage/images//12.png', 245123, 0),
(24, '13.png', 'D:\\OpenServer\\domains\\templatesUsage/images//13.png', 139703, 0),
(25, '14.png', 'D:\\OpenServer\\domains\\templatesUsage/images//14.png', 300887, 0),
(26, '2.png', 'D:\\OpenServer\\domains\\templatesUsage/images//2.png', 267052, 0),
(27, '3.png', 'D:\\OpenServer\\domains\\templatesUsage/images//3.png', 238439, 0),
(28, '4.png', 'D:\\OpenServer\\domains\\templatesUsage/images//4.png', 245123, 0),
(29, '5.png', 'D:\\OpenServer\\domains\\templatesUsage/images//5.png', 633129, 0),
(30, '6.png', 'D:\\OpenServer\\domains\\templatesUsage/images//6.png', 502618, 0),
(31, '7.png', 'D:\\OpenServer\\domains\\templatesUsage/images//7.png', 381421, 0),
(32, '8.png', 'D:\\OpenServer\\domains\\templatesUsage/images//8.png', 420610, 0),
(33, '9.png', 'D:\\OpenServer\\domains\\templatesUsage/images//9.png', 133983, 0),
(34, 'Screenshot_5.png', 'D:\\OpenServer\\domains\\templatesUsage/images//Screenshot_5.png', 795248, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
