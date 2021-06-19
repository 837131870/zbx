-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-06-18 21:36:23
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `projectt`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123'),
(4, 'leon', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `scenics`
--

CREATE TABLE `scenics` (
  `id` int(10) NOT NULL,
  `name` char(40) DEFAULT NULL,
  `imgpath` text,
  `introduce` text,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(10) DEFAULT NULL COMMENT '库存',
  `pid` int(10) DEFAULT NULL,
  `isshowindex` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `scenics`
--

INSERT INTO `scenics` (`id`, `name`, `imgpath`, `introduce`, `price`, `stock`, `pid`, `isshowindex`) VALUES
(2, '学我所需', 'http://www.ouchn.cn/sites/default/files/2020-11/noticelist2_1.png', '无论是为岗位还是为兴趣，做美好生活的追梦人', '1.00', 10, 13, 1),
(3, '爱上大语文', 'http://www.ouchn.cn/sites/default/files/2021-03/%E5%9F%B9%E4%BC%98%E7%8F%AD%E5%B9%BF%E5%91%8A%E5%9B%BE.png', '斗神大语文，北京大语文王者，小学文基阅作提升课，帮您孩子学好语文', '1.00', 10, 13, 1),
(1, '学历国际认可', 'http://www.ouchn.cn/sites/default/files/2020-11/noticelist1_2.png', '教育部直属学校，开设71个本科专业，167个专科专业', '2.00', 10, 13, 1);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tel` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `tel`, `email`) VALUES
(22, 'zhangsan', '123456', 13590435316, 'leoncoder@163.com'),
(1, 'admin', '123456', 13590435316, 'leoncoder@163.com'),
(2, 'leon', '123456', 13590435316, 'leoncoder@163.com');

--
-- 转储表的索引
--

--
-- 表的索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `scenics`
--
ALTER TABLE `scenics`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `scenics`
--
ALTER TABLE `scenics`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
