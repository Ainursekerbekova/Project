-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 20, 2018 at 01:46 PM
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
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `img` text COLLATE utf8_bin NOT NULL,
  `first mention` varchar(100) COLLATE utf8_bin NOT NULL,
  `page` varchar(30) COLLATE utf8_bin NOT NULL,
  `about` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`name`, `img`, `first mention`, `page`, `about`) VALUES
('Lego Marvel Super Heroes 2', 'https://steamcdn-a.akamaihd.net/steam/apps/647830/header.jpg?t=1517483065', '14 November 2017', 'indexGame.php', 'Lego Marvel Super Heroes 2 is a Lego-themed action-adventure video game developed by Traveller\'s Tales and published by Warner Bros. Interactive Entertainment for Microsoft Windows, PlayStation 4, Nintendo Switch and Xbox One on 14 November 2017,[1][2] and by Feral Interactive for macOS on 2 August 2018.[3] It is the sequel to 2013\'s Lego Marvel Super Heroes and the third installment of the Lego Marvel franchise.'),
('Guardians of the Galaxy', 'https://hb.imgix.net/f238c9d1f5ca5aa7099246db37f095413d749a6f.jpg?auto=compress,format&fit=crop&h=353&w=616&s=5f6f8c89f7549bf4d62de6db54c21afb', 'April 18, 2017', 'indexGame.php', 'Guardians of the Galaxy: The Telltale Series is an episodic graphic adventure video game series developed and published by Telltale Games. Based on Marvel Comics\' Guardians of the Galaxy comic book series, the game\'s first episode was released in April 18, 2017.\r\n\r\nThe plot centers on the Guardians finding an artifact of great power, called the \'Eternity Forge\' that each individually covets, but must protect it from the malicious Kree Hala the Accuser who wants it for herself.'),
('Marvel Ultimate Alliance', 'https://gamerant.ru/wp-content/uploads/2018/02/Marvel-cheats-01-770x480.jpg', 'October 24, 2006', 'indexGame.php', 'Marvel: Ultimate Alliance is an action role-playing video game developed for PlayStation 2, PlayStation 3, Xbox and Xbox 360 by Raven Software and published by Activision. The game was simultaneously ported to the PlayStation Portable and Wii by Vicarious Visions, and to Microsoft Windows by Beenox. A significantly different Game Boy Advance version was also created, developed by Barking Lizards Technologies. The game was initially released on October 24, 2006 in North America for most platforms, with PlayStation 3.'),
('Marvel vs. Capcom: Infinite', 'https://hb.imgix.net/6a438281badb6c5f8e5082da236bfab08f40eb32.jpg?auto=compress,format&fit=crop&h=353&w=616&s=28cd6c6ecb66060f792e9c1c9e6a09cc', 'September 19, 2017', 'indexGame.php', 'Marvel vs. Capcom: Infinite is a fighting video game developed and published by Capcom. It is the sixth main entry in the Marvel vs. Capcom series of crossover games. Like previous installments, players control characters from both the Marvel Comics and Capcom universes to compete in tag team battles. Infinite features two-on-two fights, as opposed to the three-on-three format used in its preceding titles. The series\' character assist moves have been removed; instead, the game incorporates a tag-based combo system.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
