-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 18, 2020 at 07:11 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'sunnygkp10@gmail.com', '123456'),
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('55892169bf6a7', '55892169d2efc'),
('5589216a3646e', '5589216a48722'),
('558922117fcef', '5589221195248'),
('55892211e44d5', '55892211f1fa7'),
('558922894c453', '558922895ea0a'),
('558922899ccaa', '55892289aa7cf'),
('5d9febb5dfab7', '5d9febb6008ef'),
('5d9febb6598c2', '5d9febb664a30'),
('5d9febb6bb76e', '5d9febb6c3631'),
('5d9febb70d2e9', '5d9febb71a2ce'),
('5d9febb75720b', '5d9febb779d03');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('5d9ff886a6c61', 'Tushar Mahalle', 'tusharmahalle0721@gmail.com', 'Regarding to Feedback of Website', 'Nice\r\n', '2019-10-11', '03:35:34am'),
('5da01a3955f50', 'Shrikant Mahalle', 'tusharmahalle0721@gmail.com', 'Regarding to Feedback of Website', 'It fine', '2019-10-11', '05:59:21am');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('tusharmahalle0721@gmail.com', '5d9feac761117', 3, 5, 4, 1, '2019-10-11 03:24:38'),
('tusharmahalle0721@gmail.com', '5589222f16b93', 1, 2, 1, 1, '2019-10-11 03:44:25'),
('tushar@gmail.com', '5d9feac761117', -1, 5, 2, 3, '2019-10-11 05:56:31'),
('admin@admin.com', '558920ff906b8', -2, 2, 0, 2, '2019-10-13 06:08:55'),
('tusharmahalle0721@gmail.com', '558920ff906b8', -2, 2, 0, 2, '2019-10-13 06:09:46'),
('shriku123mahalle@gmail.com', '5d9feac761117', 5, 5, 5, 0, '2019-10-13 06:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE IF NOT EXISTS `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('55892169bf6a7', 'usermod', '55892169d2efc'),
('55892169bf6a7', 'useradd', '55892169d2f05'),
('55892169bf6a7', 'useralter', '55892169d2f09'),
('55892169bf6a7', 'groupmod', '55892169d2f0c'),
('5589216a3646e', '751', '5589216a48713'),
('5589216a3646e', '752', '5589216a4871a'),
('5589216a3646e', '754', '5589216a4871f'),
('5589216a3646e', '755', '5589216a48722'),
('558922117fcef', 'echo', '5589221195248'),
('558922117fcef', 'print', '558922119525a'),
('558922117fcef', 'printf', '5589221195265'),
('558922117fcef', 'cout', '5589221195270'),
('55892211e44d5', 'int a', '55892211f1f97'),
('55892211e44d5', '$a', '55892211f1fa7'),
('55892211e44d5', 'long int a', '55892211f1fb4'),
('55892211e44d5', 'int a$', '55892211f1fbd'),
('558922894c453', 'cin>>a;', '558922895ea0a'),
('558922894c453', 'cin<<a;', '558922895ea26'),
('558922894c453', 'cout>>a;', '558922895ea34'),
('558922894c453', 'cout<a;', '558922895ea41'),
('558922899ccaa', 'cout', '55892289aa7cf'),
('558922899ccaa', 'cin', '55892289aa7df'),
('558922899ccaa', 'print', '55892289aa7eb'),
('558922899ccaa', 'printf', '55892289aa7f5'),
('5d9febb5dfab7', 'Domain', '5d9febb6008da'),
('5d9febb5dfab7', 'Schema', '5d9febb6008e7'),
('5d9febb5dfab7', 'Objects', '5d9febb6008eb'),
('5d9febb5dfab7', 'Attribute', '5d9febb6008ef'),
('5d9febb6598c2', 'Schema', '5d9febb664a18'),
('5d9febb6598c2', 'Model', '5d9febb664a2a'),
('5d9febb6598c2', 'Domain', '5d9febb664a30'),
('5d9febb6598c2', 'Structure', '5d9febb664a35'),
('5d9febb6bb76e', 'Connection', '5d9febb6c360f'),
('5d9febb6bb76e', 'Conceptualization', '5d9febb6c3626'),
('5d9febb6bb76e', 'Relationship', '5d9febb6c3631'),
('5d9febb6bb76e', 'Architecture', '5d9febb6c363b'),
('5d9febb70d2e9', 'Caller', '5d9febb71a2b5'),
('5d9febb70d2e9', 'Cell Node', '5d9febb71a2c7'),
('5d9febb70d2e9', 'Cellar', '5d9febb71a2ce'),
('5d9febb70d2e9', 'Cell Entity', '5d9febb71a2d4'),
('5d9febb75720b', 'Database Management Systems', '5d9febb779d03'),
('5d9febb75720b', 'Database Systems', '5d9febb779d0c'),
('5d9febb75720b', '', '5d9febb779d0f'),
('5d9febb75720b', '', '5d9febb779d12');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('558920ff906b8', '55892169bf6a7', 'what is command for changing user information??', 4, 1),
('558920ff906b8', '5589216a3646e', 'what is permission for view only for other??', 4, 2),
('558921841f1ec', '558922117fcef', 'what is command for print in php??', 4, 1),
('558921841f1ec', '55892211e44d5', 'which is a variable of php??', 4, 2),
('5589222f16b93', '558922894c453', 'what is correct statement in c++??', 4, 1),
('5589222f16b93', '558922899ccaa', 'which command is use for print the output in c++?', 4, 2),
('5d9feac761117', '5d9febb5dfab7', 'In an ER data model, properties of an entity are known to be its', 4, 1),
('5d9feac761117', '5d9febb6598c2', 'An attribute of ER data model, have a set of values known to be its', 4, 2),
('5d9feac761117', '5d9febb6bb76e', ' Logical association among entities of an ER data model is called its', 4, 3),
('5d9feac761117', '5d9febb70d2e9', 'A database consisting of just one file, is called', 4, 4),
('5d9feac761117', '5d9febb75720b', 'What is DBMS', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('558920ff906b8', 'Linux : File Managment', 2, 1, 2, 5, '', 'linux', '2015-06-23 09:03:59'),
('558921841f1ec', 'Php Coding', 2, 1, 2, 5, '', 'PHP', '2015-06-23 09:06:12'),
('5589222f16b93', 'C++ Coding', 2, 1, 2, 5, '', 'c++', '2015-06-23 09:09:03'),
('5d9feac761117', 'Database Management', 1, 1, 5, 3, 'This test is for checking database knoqledge', 'Database', '2019-10-11 02:36:55'),
('5da019e6a0296', 'Php', 1, 1, 5, 5, '', 'php', '2019-10-11 05:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
CREATE TABLE IF NOT EXISTS `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('tusharmahalle0721@gmail.com', 5, '2019-10-13 06:09:46'),
('tushar@gmail.com', -1, '2019-10-11 05:56:31'),
('shriku123mahalle@gmail.com', 5, '2019-10-13 06:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Shrikant ', 'M', 'PRMITT', 'shriku123mahalle@gmail.com', 9405437382, '08d7a54a874c9f449359efeaabd90c26'),
('Shrikant Mahalle', 'M', 'PICT', 'tushar@gmail.com', 9405437382, '827ccb0eea8a706c4c34a16891f84e7b'),
('Tushar Mahalle', 'M', 'PICT', 'tusharmahalle0721@gmail.com', 7719906992, '08d7a54a874c9f449359efeaabd90c26');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
