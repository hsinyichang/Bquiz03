-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-08-12 03:09:21
-- 伺服器版本： 10.4.24-MariaDB
-- PHP 版本： 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `db03`
--

-- --------------------------------------------------------

--
-- 資料表結構 `movie`
--

CREATE TABLE `movie` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `length` int(10) UNSIGNED NOT NULL,
  `ondate` date NOT NULL,
  `publish` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trailer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(10) UNSIGNED NOT NULL,
  `rank` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `movie`
--

INSERT INTO `movie` (`id`, `name`, `level`, `length`, `ondate`, `publish`, `director`, `trailer`, `poster`, `intro`, `sh`, `rank`) VALUES
(1, '第一部', '限制級', 120, '2022-08-08', '123', '123', '03B01v.mp4', '03B01.png', '123165514', 1, 1),
(2, '2', '保護級', 123, '2022-09-03', '1561', '156', '03B02v.mp4', '03B02.png', 'dfadfafdsaf', 1, 2),
(4, '3', '輔導級', 90, '2022-08-07', 'dsafaf', 'adsfasdf', '03B03v.mp4', '03B03.png', 'asdfafewfa', 1, 3),
(5, '4', '限制級', 100, '2022-08-06', 'sdgasef', 'asefaesafd', '03B04v.mp4', '03B04.png', 'dafdsafaafefa', 1, 4),
(6, '5', '保護級', 90, '2022-08-10', '5sfdag', 'dgfsadvcds', '03B05v.mp4', '03B05.png', 'dgfdgadsfca', 1, 6),
(7, '6', '普遍級', 100, '2022-08-06', 'agsafe', 'afeaewsf', '03B06v.mp4', '03B06.png', 'dsfadsasfcafces', 1, 6),
(8, '7', '輔導級', 100, '2022-08-06', 'agsafe', 'afeaewsf', '03B07v.mp4', '03B07.png', 'dsfadsasfcafces', 1, 7),
(9, '8', '保護級', 100, '2022-08-06', 'agsafe', 'afeaewsf', '03B08v.mp4', '03B08.png', 'dsfadsasfcafces', 1, 8),
(10, '9', '普遍級', 100, '2022-08-06', 'agsafe', 'afeaewsf', '03B09v.mp4', '03B09.png', 'dsfadsasfcafces', 1, 9),
(11, '10', '普遍級', 100, '2022-08-06', 'agsafe', 'afeaewsf', '03B10v.mp4', '03B10.png', 'dsfadsasfcafces', 1, 10),
(12, '11', '限制級', 100, '2022-08-06', 'agsafe', 'afeaewsf', '03B11v.mp4', '03B11.png', 'dsfadsasfcafces', 1, 11),
(13, '12', '輔導級', 100, '2022-08-06', 'agsafe', 'afeaewsf', '03B12v.mp4', '03B12.png', 'dsfadsasfcafces', 1, 12);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `no` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `session` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qt` int(11) NOT NULL,
  `seats` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `poster`
--

CREATE TABLE `poster` (
  `id` int(11) UNSIGNED NOT NULL,
  `img` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` int(11) UNSIGNED NOT NULL,
  `sh` tinyint(1) UNSIGNED NOT NULL,
  `ani` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `poster`
--

INSERT INTO `poster` (`id`, `img`, `name`, `rank`, `sh`, `ani`) VALUES
(1, '03A01.jpg', '預告片1', 1, 1, 2),
(2, '03A02.jpg', '預告片2', 2, 1, 3),
(3, '03A03.jpg', '預告片3', 3, 1, 2),
(4, '03A04.jpg', '預告片4', 4, 1, 3),
(5, '03A05.jpg', '預告片5', 5, 1, 3),
(6, '03A06.jpg', '預告片6', 6, 1, 1),
(7, '03A07.jpg', '預告片7', 7, 1, 1),
(8, '03A08.jpg', '預告片8', 8, 1, 2),
(9, '03A09.jpg', '預告片9', 9, 1, 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `poster`
--
ALTER TABLE `poster`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `poster`
--
ALTER TABLE `poster`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
