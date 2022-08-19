-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-08-19 09:32:58
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
(2, '電路', '保護級', 123, '2022-09-03', '1561', '156', '03B02v.mp4', '03B02.png', 'dfadfafdsaf', 1, 2),
(4, '花朵', '輔導級', 90, '2022-08-19', 'dsafaf', 'adsfasdf', '03B03v.mp4', '03B03.png', 'asdfafewfa', 1, 3),
(5, '廚藝', '限制級', 100, '2022-08-19', 'sdgasef', 'asefaesafd', '03B04v.mp4', '03B04.png', 'dafdsafaafefa', 1, 4),
(6, '花物語', '保護級', 90, '2022-08-12', '5sfdag', 'dgfsadvcds', '03B05v.mp4', '03B05.png', 'dgfdgadsfca', 1, 6),
(7, '外太空', '普遍級', 100, '2022-08-13', 'agsafe', 'afeaewsf', '03B06v.mp4', '03B06.png', 'dsfadsasfcafces', 1, 6),
(8, '怪奇物語', '輔導級', 100, '2022-08-12', 'agsafe', 'afeaewsf', '03B07v.mp4', '03B07.png', 'dsfadsasfcafces', 1, 7),
(9, '大冒險', '保護級', 100, '2022-08-16', 'agsafe', 'afeaewsf', '03B08v.mp4', '03B08.png', 'dsfadsasfcafces', 1, 8),
(10, '魔法大師', '普遍級', 100, '2022-08-19', 'agsafe', 'afeaewsf', '03B09v.mp4', '03B09.png', 'dsfadsasfcafces', 1, 9),
(11, '水果大餐', '普遍級', 100, '2022-08-15', 'agsafe', 'afeaewsf', '03B10v.mp4', '03B10.png', 'dsfadsasfcafces', 1, 10),
(12, '11', '限制級', 100, '2022-08-19', 'agsafe', 'afeaewsf', '03B11v.mp4', '03B11.png', 'dsfadsasfcafces', 1, 11),
(13, '12', '輔導級', 100, '2022-08-19', 'agsafe', 'afeaewsf', '03B12v.mp4', '03B12.png', 'dsfadsasfcafces', 1, 12);

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

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`id`, `no`, `movie`, `date`, `session`, `qt`, `seats`) VALUES
(1, '202208120001', '院線片01', '2022-08-15', '22:00~24:00', 4, 'a:4:{i:0;i:6;i:1;i:1;i:2;i:15;i:3;i:5;}'),
(2, '202208120002', '院線片04', '2022-08-12', '16:00~18:00', 3, 'a:3:{i:0;i:9;i:1;i:10;i:2;i:7;}'),
(3, '202208120003', '院線片01', '2022-08-15', '20:00~22:00', 3, 'a:3:{i:0;i:16;i:1;i:1;i:2;i:3;}'),
(4, '202208120004', '院線片01', '2022-08-12', '14:00~16:00', 3, 'a:3:{i:0;i:16;i:1;i:4;i:2;i:13;}'),
(5, '202208120005', '院線片04', '2022-08-14', '14:00~16:00', 1, 'a:1:{i:0;i:0;}'),
(6, '202208120006', '院線片01', '2022-08-14', '16:00~18:00', 4, 'a:4:{i:0;i:12;i:1;i:8;i:2;i:1;i:3;i:3;}'),
(7, '202208120007', '院線片02', '2022-08-14', '20:00~22:00', 2, 'a:2:{i:0;i:1;i:1;i:13;}'),
(8, '202208120008', '院線片01', '2022-08-12', '22:00~24:00', 4, 'a:4:{i:0;i:19;i:1;i:2;i:2;i:18;i:3;i:5;}'),
(9, '202208120009', '院線片03', '2022-08-13', '16:00~18:00', 3, 'a:3:{i:0;i:0;i:1;i:10;i:2;i:16;}'),
(11, '202208190011', '花朵', '2022-08-19', '16:00~18:00', 4, 'a:4:{i:0;s:1:\"6\";i:1;s:1:\"7\";i:2;s:2:\"12\";i:3;s:2:\"13\";}'),
(12, '202208190012', '花朵', '2022-08-21', '20:00~22:00', 2, 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}'),
(13, '202208190013', '廚藝', '2022-08-20', '22:00~24:00', 1, 'a:1:{i:0;s:2:\"17\";}'),
(15, '202208190015', '魔法大師', '2022-08-20', '20:00~22:00', 4, 'a:4:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"7\";i:3;s:1:\"8\";}'),
(16, '202208190016', '11', '2022-08-20', '20:00~22:00', 4, 'a:4:{i:0;s:2:\"16\";i:1;s:2:\"17\";i:2;s:2:\"18\";i:3;s:2:\"19\";}');

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `poster`
--
ALTER TABLE `poster`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
