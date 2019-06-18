-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 08, 2019 at 07:49 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sriram`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `cid` tinyint(3) NOT NULL,
  `company_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`cid`, `company_name`) VALUES
(3, 'EA sports'),
(7, 'Epic games'),
(8, 'Gameloft'),
(10, 'Infinity ward'),
(6, 'Mojang'),
(1, 'Nintendo'),
(2, 'Rockstar games'),
(5, 'Sega games'),
(4, 'Ubisoft'),
(9, 'Zynga');

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE `developer` (
  `did` tinyint(3) NOT NULL,
  `dev_name` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `cid` tinyint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`did`, `dev_name`, `department`, `cid`) VALUES
(1, 'Tencent games', 'Updation', 7),
(2, 'Sonic team', 'Coding', 5),
(3, 'EA vancouver', 'Testing', 3),
(4, 'Rockstar North', 'Development', 2),
(5, 'BANDAI Entertainment', 'Updation', 1),
(6, 'MassiveEntertainment', 'Testing', 4),
(7, 'Microsoft Studios', 'Coding', 6),
(8, 'Gameloft', 'Development', 8),
(9, 'Zynga', 'Updation', 9),
(10, 'Raven Software', 'Testing', 10);

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `gameid` tinyint(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `category` varchar(10) NOT NULL DEFAULT 'Arcade',
  `cid` tinyint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`gameid`, `name`, `category`, `cid`) VALUES
(1, 'PUBG', 'Arcade', 7),
(2, 'Fortnite', 'Arcade', 7),
(3, 'Cricket07', 'Sports', 3),
(4, 'FIFA19', 'Sports', 3),
(5, 'The Legend of Zelda', 'Action', 1),
(6, 'GTA5', 'Adventure', 2),
(7, 'Far Cry 5', 'Action', 2),
(8, 'Super sonic', 'Action', 5),
(9, 'Minecraft', 'Adventure', 6),
(10, 'Asphalt 9', 'Sports', 8),
(11, 'Farmville', 'Adventure', 9),
(12, 'Call of Duty', 'Arcade', 10);

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `photoid` tinyint(3) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `gameid` tinyint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`photoid`, `folder`, `gameid`) VALUES
(1, 'desktop', 10),
(2, 'desktop', 11),
(3, 'images', 2),
(4, 'images', 5),
(5, 'desktop', 3),
(6, 'desktop', 7),
(7, 'images', 4),
(8, 'images', 9),
(9, 'desktop', 12),
(10, 'desktop', 1),
(11, 'desktop', 6),
(12, 'images', 8);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `gameid` tinyint(3) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `rdate` date NOT NULL,
  `rtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`gameid`, `username`, `rdate`, `rtime`) VALUES
(12, 'Yatinmanchal', '2017-12-12', '19:42:43'),
(4, 'SushmaG', '2017-12-21', '21:45:32'),
(10, 'ManideepBingi', '2018-11-02', '11:15:23'),
(2, 'SowmyaB', '2018-04-21', '23:25:34'),
(2, 'Rampavan', '2017-11-24', '14:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `phoneno` bigint(10) NOT NULL,
  `mailid` varchar(50) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `gender` enum('M','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `fname`, `lname`, `phoneno`, `mailid`, `age`, `gender`) VALUES
('ManideepBingi', 'ab123df', 'Manideep', 'Bingi', 7348802468, 'manideep@gmail.com', 20, 'M'),
('Rampavan', 'dajk3', 'Rampavan', 's', 8374024690, 'rampavan@gmail.com', 20, 'M'),
('SowmyaB', 'Sowmya', 'Sowmya', 'B', 8609879832, 'sowmya@gmail.com', 20, 'F'),
('SriramKaluva', 'abcd1234', 'Sriram', 'Kaluva', 9972232405, 'kaluvasriram@gmail.com', 21, 'M'),
('SushmaG', 'kjnacliu', 'Sushma', 'Gowda', 8901732987, 'sushma@gmail.com', 21, 'F'),
('Yatinmanchal', 'kljacj', 'Yatin', 'Manchal', 9078870848, 'yatinmanchal@gmail.com', 21, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `videoid` tinyint(3) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `gameid` tinyint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`videoid`, `folder`, `gameid`) VALUES
(1, 'desktop', 10),
(2, 'desktop', 11),
(3, 'images', 2),
(4, 'images', 5),
(5, 'desktop', 3),
(6, 'desktop', 7),
(7, 'images', 4),
(8, 'images', 9),
(9, 'desktop', 12),
(10, 'desktop', 1),
(11, 'desktop', 6),
(12, 'images', 8);

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE `view` (
  `gameid` tinyint(3) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `vdate` date NOT NULL,
  `vtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `view`
--

INSERT INTO `view` (`gameid`, `username`, `vdate`, `vtime`) VALUES
(1, 'SriramKaluva', '2018-08-11', '10:20:35'),
(2, 'Rampavan', '2017-11-24', '14:43:23'),
(2, 'SowmyaB', '2018-04-21', '23:23:43'),
(10, 'ManideepBingi', '2018-11-02', '11:14:54'),
(4, 'SushmaG', '2017-12-21', '21:45:32'),
(12, 'Yatinmanchal', '2017-12-12', '19:42:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `company_name` (`company_name`);

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `dev_name` (`dev_name`),
  ADD KEY `fk2` (`cid`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`gameid`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fk1` (`cid`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`photoid`),
  ADD KEY `fk3` (`gameid`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD KEY `fk7` (`gameid`),
  ADD KEY `fk8` (`username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `phoneno` (`phoneno`),
  ADD UNIQUE KEY `mailid` (`mailid`),
  ADD UNIQUE KEY `phoneno_2` (`phoneno`),
  ADD UNIQUE KEY `phoneno_3` (`phoneno`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`videoid`),
  ADD KEY `fk4` (`gameid`);

--
-- Indexes for table `view`
--
ALTER TABLE `view`
  ADD KEY `fk5` (`gameid`),
  ADD KEY `fk6` (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `developer`
--
ALTER TABLE `developer`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`cid`) REFERENCES `company` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`cid`) REFERENCES `company` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `fk3` FOREIGN KEY (`gameid`) REFERENCES `game` (`gameid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk7` FOREIGN KEY (`gameid`) REFERENCES `game` (`gameid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk8` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `fk4` FOREIGN KEY (`gameid`) REFERENCES `game` (`gameid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `view`
--
ALTER TABLE `view`
  ADD CONSTRAINT `fk5` FOREIGN KEY (`gameid`) REFERENCES `game` (`gameid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk6` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
