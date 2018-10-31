-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-10-31 05:06:41
-- 伺服器版本: 10.1.35-MariaDB
-- PHP 版本： 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `test`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cartitem`
--

DROP TABLE IF EXISTS `cartitem`;
CREATE TABLE `cartitem` (
  `serno` int(11) NOT NULL,
  `uID` int(11) NOT NULL,
  `prdID` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `enroll`
--

DROP TABLE IF EXISTS `enroll`;
CREATE TABLE `enroll` (
  `serno` int(11) NOT NULL,
  `stuID` int(11) NOT NULL,
  `courseName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `enroll`
--

INSERT INTO `enroll` (`serno`, `stuID`, `courseName`, `grade`) VALUES
(1, 10431001, '資料庫', 0),
(2, 10431001, '軟工', 0),
(3, 10431002, '資料庫', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `guestbook`
--

DROP TABLE IF EXISTS `guestbook`;
CREATE TABLE `guestbook` (
  `id` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `msg` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `likes` int(11) NOT NULL DEFAULT '0',
  `cate` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `guestbook`
--

INSERT INTO `guestbook` (`id`, `title`, `msg`, `name`, `likes`, `cate`) VALUES
(15, '2444', '2;;;;', '27777', 19, '[通知]');

-- --------------------------------------------------------

--
-- 資料表結構 `ord`
--

DROP TABLE IF EXISTS `ord`;
CREATE TABLE `ord` (
  `oID` int(11) NOT NULL,
  `uID` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `ord`
--

INSERT INTO `ord` (`oID`, `uID`, `status`) VALUES
(1, 1, 0),
(2, 1, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `serno` int(11) NOT NULL,
  `oID` int(11) NOT NULL,
  `prdID` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `orderitem`
--

INSERT INTO `orderitem` (`serno`, `oID`, `prdID`, `amount`) VALUES
(1, 2, 1, 1),
(2, 2, 3, 1),
(3, 2, 4, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `prdID` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `product`
--

INSERT INTO `product` (`prdID`, `name`, `price`) VALUES
(1, 'book', 300),
(2, 'pencil', 20),
(3, 'pen', 25),
(4, 'coke', 40);

-- --------------------------------------------------------

--
-- 資料表結構 `saleslog`
--

DROP TABLE IF EXISTS `saleslog`;
CREATE TABLE `saleslog` (
  `serno` int(11) NOT NULL,
  `saleDate` datetime NOT NULL,
  `prdID` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `saleslog`
--

INSERT INTO `saleslog` (`serno`, `saleDate`, `prdID`, `amount`) VALUES
(1, '2018-10-29 09:52:47', 1, 5),
(3, '2018-09-09 00:00:00', 2, 10),
(4, '2017-01-30 00:00:00', 7, 9),
(5, '2018-10-29 10:03:31', 1, 7);

-- --------------------------------------------------------

--
-- 資料表結構 `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `teamID` int(11) NOT NULL,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `team`
--

INSERT INTO `team` (`teamID`, `name`) VALUES
(1, 'IM'),
(2, 'CSIE'),
(3, 'IBS'),
(4, 'Hi');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `loginID` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `user`
--

INSERT INTO `user` (`uid`, `loginID`, `password`, `name`, `role`) VALUES
(1, 'test', '123', 'JH Chen', 'Guest'),
(2, 'adm', '123', 'Admin', 'Admin');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `cartitem`
--
ALTER TABLE `cartitem`
  ADD PRIMARY KEY (`serno`);

--
-- 資料表索引 `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`serno`);

--
-- 資料表索引 `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `ord`
--
ALTER TABLE `ord`
  ADD PRIMARY KEY (`oID`);

--
-- 資料表索引 `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`serno`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prdID`);

--
-- 資料表索引 `saleslog`
--
ALTER TABLE `saleslog`
  ADD PRIMARY KEY (`serno`);

--
-- 資料表索引 `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamID`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `cartitem`
--
ALTER TABLE `cartitem`
  MODIFY `serno` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `enroll`
--
ALTER TABLE `enroll`
  MODIFY `serno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表 AUTO_INCREMENT `guestbook`
--
ALTER TABLE `guestbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用資料表 AUTO_INCREMENT `ord`
--
ALTER TABLE `ord`
  MODIFY `oID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表 AUTO_INCREMENT `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `serno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表 AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `prdID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表 AUTO_INCREMENT `saleslog`
--
ALTER TABLE `saleslog`
  MODIFY `serno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表 AUTO_INCREMENT `team`
--
ALTER TABLE `team`
  MODIFY `teamID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表 AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
