-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 17, 2018 at 05:15 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `name` varchar(30) NOT NULL,
  `img` text NOT NULL,
  `first mention` varchar(100) NOT NULL,
  `page` varchar(30) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`name`, `img`, `first mention`, `page`, `about`) VALUES
('Captain America', 'https://memepedia.ru/wp-content/uploads/2018/05/template-4-768x491.jpg', 'Captain America Comics #1 в марте 1941', 'index.html', 'Один из самых известных персонажей в мире комиксов. Он был создан писателем Джо Саймоном и художником Джеком Кирби и впервые появился в комиксах 1940-х, Timely Comics.'),
('Hulk', 'http://sci-fi-news.ru/wp-content/uploads/2018/07/11467362-22fd-4cce-84cf-8327e360393f-hulk-3-850x550.jpg', 'The Incredible Hulk #1 в майе 1962 года', 'index.html', 'Халк был Создан Стэном Ли и Джеком Кёрби, он впервые появился в комиксе «Невероятный Халк» #1 в майе 1962 года. С тех пор он стал одним из самых узнаваемых персонажей.'),
('Spider-Man', 'https://avatars.mds.yandex.net/get-pdb/1384286/76c06190-204c-4108-a4d4-9e51369cfe34/orig', ' Amazing Fantasy №15 в августе 1962 ', 'index.html', 'С момента своего первого появления на страницах комикса Amazing Fantasy №15 он стал одним из самых популярных супергероев. Ли и Дитко задумывали персонажа как подростка-сироту, воспитанного дядей и тётей, совмещающего жизнь обычного студента и борца с преступностью. ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`name`);
ALTER TABLE `characters` ADD FULLTEXT KEY `first mention` (`first mention`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
