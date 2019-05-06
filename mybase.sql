-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 06, 2019 at 01:53 PM
-- Server version: 8.0.15
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mybase`
--

-- --------------------------------------------------------

--
-- Table structure for table `lesson_articles`
--

CREATE TABLE `lesson_articles` (
  `id` int(11) UNSIGNED NOT NULL,
  `section_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `intro_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `full_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `meta_kwrd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lesson_banners`
--

CREATE TABLE `lesson_banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lesson_banners`
--

INSERT INTO `lesson_banners` (`id`, `code`) VALUES
(1, '<p>Тут код баннера 1</p>'),
(2, '<p>Тут код баннера 2</p>');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_menu`
--

CREATE TABLE `lesson_menu` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `lesson_menu`
--

INSERT INTO `lesson_menu` (`id`, `title`, `link`) VALUES
(1, 'Главная', '/'),
(2, 'Строковые функции', '/?view=section&amp;id=1'),
(3, 'Математические функции', '/?view=section&amp;id=2'),
(4, 'Функции даты и времени', '/?view=section&amp;id=3');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_section`
--

CREATE TABLE `lesson_section` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripiton` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `meta_kwrd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lesson_section`
--

INSERT INTO `lesson_section` (`id`, `title`, `descripiton`, `meta_desc`, `meta_kwrd`) VALUES
(1, 'Строковые функции', '<p>Синтакcис шаблонов, используемых в функциях этого раздела, во многом похож на синтаксис, используемый в Perl. Выражение должно быть заключено в разделители, например, прямые слеши \'/\'. Разделителем могут выступать произвольные символы, кроме буквенно-цифровых, обратного слеша \'\\\' и нулевого байта. Если символ разделителя встречается в шаблоне, его необходимо экранировать. Начиная с PHP 4.0.4, в качестве разделителя доступны комбинации, используемые </p>', 'Синтакcис шаблонов, используемых в функциях этого раздела', '0.4, в качестве разделителя доступны'),
(2, 'Математические фунции', '<p>Передача в функции BCMath аргументов типа float, в то время как они ожидают строки могут привести к неожиданным результатам, из-за используемого PHP алгоритма преобразования float в string, например можно получить строку содержащую число в экспоненциальной нотации (что не поддерживается BCMath), или, в зависимости от локали, десятичный разделитель в виде запятой (тогда как BCMath работает только с десятичной точкой). </p>', 'ритма преобразования float в string, например можно получить строку содержащую число в экспоненциальной н', 'но получить строку содержащую'),
(3, 'Функции даты и времени', '<p>Эти функции позволяют получить дату и время с сервера, на котором запущен скрипт PHP. Их можно использовать для форматирования даты и времени различными способами. \r\n\r\nИнформация о дате и времени хранится в памяти в виде 64-разрядных чисел. Таким образом, поддерживаются все пригодные представления даты (включая отрицательные года). Диапазон составляет примерно 292 миллиарда лет в прошлое и будущее. \r\n</p>', 'нформация о дате и времени хранится в памяти в виде 64-разрядных', 'иапазон составляет примерно 292');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_users`
--

CREATE TABLE `lesson_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `regdate` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lesson_articles`
--
ALTER TABLE `lesson_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson_banners`
--
ALTER TABLE `lesson_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson_menu`
--
ALTER TABLE `lesson_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson_section`
--
ALTER TABLE `lesson_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson_users`
--
ALTER TABLE `lesson_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lesson_articles`
--
ALTER TABLE `lesson_articles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lesson_banners`
--
ALTER TABLE `lesson_banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lesson_menu`
--
ALTER TABLE `lesson_menu`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lesson_section`
--
ALTER TABLE `lesson_section`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lesson_users`
--
ALTER TABLE `lesson_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
