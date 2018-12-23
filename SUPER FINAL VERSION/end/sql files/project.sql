-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 23, 2018 at 10:34 AM
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
('Captain America', 'https://memepedia.ru/wp-content/uploads/2018/05/template-4-768x491.jpg', 'Captain America Comics #1 in march of 1941', 'index.html', 'Captain America (Steve Rogers) is a fictional superhero appearing in American comic books published by Marvel Comics. Created by cartoonists Joe Simon and Jack Kirby, the character first appeared in Captain America Comics #1 (cover dated March 1941) from Timely Comics, a predecessor of Marvel Comics. '),
('Captain Marvel', 'https://static3.srcdn.com/wordpress/wp-content/uploads/2018/03/Life-of-Captain-Marvel-Origin-Comic-Art.jpg', ' Marvel Super-Heroes #12 (December 1967)', 'index.php', 'Captain Marvel (Mar-Vell) is a fictional superhero appearing in American comic books published by Marvel Comics. The character was created by writer-editor Stan Lee and designed by artist Gene Colan'),
('Groot', 'https://www.sideshowtoy.com/wp-content/uploads/2018/03/marvel-guardian-of-the-galaxy-vol2-groot-life-size-figure-hot-toys-feature-903344.jpg', 'Tales to Astonish #13 in November of 1960', 'index.html', 'Groot is a fictional superhero appearing in American comic books published by Marvel Comics. Created by Stan Lee, Larry Lieber and Jack Kirby, the character first appeared in Tales to Astonish #13 (November 1960). An extraterrestrial, sentient tree-like creature, the original Groot first appeared as an invader that intended to capture humans for experimentation.'),
('Hulk', 'http://sci-fi-news.ru/wp-content/uploads/2018/07/11467362-22fd-4cce-84cf-8327e360393f-hulk-3-850x550.jpg', 'The Incredible Hulk #1 in May of 1962', 'index.html', 'The Hulk is a fictional superhero appearing in publications by the American publisher Marvel Comics. Created by writer Stan Lee and artist Jack Kirby, the character first appeared in the debut issue of The Incredible Hulk (May 1962). In his comic book appearances, the character is both the Hulk, a green-skinned, hulking and muscular humanoid.'),
('Spider-Man', 'https://avatars.mds.yandex.net/get-pdb/1384286/76c06190-204c-4108-a4d4-9e51369cfe34/orig', ' Amazing Fantasy №15 in august of 1962 ', 'index.html', 'Spider-Man is a fictional superhero created by writer-editor Stan Lee and writer-artist Steve Ditko. He first appeared in the anthology comic book Amazing Fantasy #15 (August 1962) in the Silver Age of Comic Books. He appears in American comic books published by Marvel Comics, as well as in a number of movies, television shows, and video game adaptations set in the Marvel Universe.'),
('Thanos', 'https://www.sideshowtoy.com/wp-content/uploads/2018/04/marvel-avengers-infinity-war-thanos-sixth-scale-figure-hot-toys-feature-903429-1.jpg', 'The Invincible Iron Man #55 in February of 1973', 'index.html', 'Thanos is a fictional supervillain appearing in American comic books published by Marvel Comics. The character, created by writer/artist Jim Starlin, first appeared in The Invincible Iron Man #55 (cover dated February 1973). Thanos is one of the most powerful villains in the Marvel Universe and has clashed with many heroes including the Avengers, the Guardians of the Galaxy, the Fantastic Four, and the X-Men.');

-- --------------------------------------------------------

--
-- Table structure for table `comics`
--

CREATE TABLE `comics` (
  `id` int(5) NOT NULL,
  `url` varchar(5000) NOT NULL,
  `cost` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comics`
--

INSERT INTO `comics` (`id`, `url`, `cost`) VALUES
(1, 'https://imgix.ranker.com/user_node_img/50028/1000557665/original/amazing-fantasy-15-comic-book-series-photo-u1?w=650&q=50&fm=jpg&fit=crop&crop=faces', '50'),
(2, 'https://i.stack.imgur.com/qVML6l.jpg', '80'),
(3, 'https://imgix.ranker.com/user_node_img/104/2075534/original/spider-man-photo-u76?w=650&q=50&fm=jpg&fit=crop&crop=faces', '37'),
(4, 'https://images-na.ssl-images-amazon.com/images/I/610AT-n4YYL.jpg', '39'),
(5, 'https://cdn.taschen.com/media/images/960/marvel_age_of_comics_va_gb_3d_04683_1708021648_id_1139247.png', '60');

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
('Guardians of the Galaxy', 'https://hb.imgix.net/f238c9d1f5ca5aa7099246db37f095413d749a6f.jpg?auto=compress,format&fit=crop&h=353&w=616&s=5f6f8c89f7549bf4d62de6db54c21afb', 'April 18, 2017', 'indexGame.php', 'Guardians of the Galaxy: The Telltale Series is an episodic graphic adventure video game series developed and published by Telltale Games. Based on Marvel Comics\' Guardians of the Galaxy comic book series, the game\'s first episode was released in April 18, 2017.\r\n\r\nThe plot centers on the Guardians finding an artifact of great power, called the \'Eternity Forge\' that each individually covets, but must protect it from the malicious Kree Hala the Accuser who wants it for herself.'),
('Lego Marvel Super Heroes 2', 'https://steamcdn-a.akamaihd.net/steam/apps/647830/header.jpg?t=1517483065', '14 November 2017', 'indexGame.php', 'Lego Marvel Super Heroes 2 is a Lego-themed action-adventure video game developed by Traveller\'s Tales and published by Warner Bros. Interactive Entertainment for Microsoft Windows, PlayStation 4, Nintendo Switch and Xbox One on 14 November 2017,[1][2] and by Feral Interactive for macOS on 2 August 2018.[3] It is the sequel to 2013\'s Lego Marvel Super Heroes and the third installment of the Lego Marvel franchise.'),
('MARVEL Battle Lines', 'https://i.ytimg.com/vi/U4Qh6mAm4Ng/maxresdefault.jpg', 'October 24, 2018', 'indexGame.php', 'The Cosmic Cube has been shattered, plunging the Marvel Universe into chaos! Now, you must join forces with Super Heroes and Villains, including the Avengers, the Guardians of the Galaxy, Spider-Man, and more, to collect the shards and restore the universe. Collect over 100 of your favorite Marvel character playing cards including Captain America, Thor, Daredevil, Venom, Doctor Strange and Thanos. Available on iOS and Android.'),
('Marvel Ultimate Alliance', 'https://gamerant.ru/wp-content/uploads/2018/02/Marvel-cheats-01-770x480.jpg', 'October 24, 2006', 'indexGame.php', 'Marvel: Ultimate Alliance is an action role-playing video game developed for PlayStation 2, PlayStation 3, Xbox and Xbox 360 by Raven Software and published by Activision. The game was simultaneously ported to the PlayStation Portable and Wii by Vicarious Visions, and to Microsoft Windows by Beenox. A significantly different Game Boy Advance version was also created, developed by Barking Lizards Technologies. The game was initially released on October 24, 2006 in North America for most platforms, with PlayStation 3.'),
('Marvel vs. Capcom: Infinite', 'https://hb.imgix.net/6a438281badb6c5f8e5082da236bfab08f40eb32.jpg?auto=compress,format&fit=crop&h=353&w=616&s=28cd6c6ecb66060f792e9c1c9e6a09cc', 'September 19, 2017', 'indexGame.php', 'Marvel vs. Capcom: Infinite is a fighting video game developed and published by Capcom. It is the sixth main entry in the Marvel vs. Capcom series of crossover games. Like previous installments, players control characters from both the Marvel Comics and Capcom universes to compete in tag team battles. Infinite features two-on-two fights, as opposed to the three-on-three format used in its preceding titles. The series\' character assist moves have been removed; instead, the game incorporates a tag-based combo system.');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(3) NOT NULL,
  `faze` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` varchar(30) NOT NULL,
  `img` varchar(200) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `faze`, `name`, `date`, `img`, `about`) VALUES
(2, 1, 'The Incredible Hulk', '13 June 2008', 'http://static.hdrezka.ac/i/2013/11/21/a33590d5339eahl88f51b.jpg', 'After being exposed to gamma radiation that causes him to transform into the monstrous Hulk, scientist Bruce Banner goes on the run and isolates himself from his love, Betty Ross. Hunted by the military, Banner seeks to cure himself and prevent his condition from being weaponized.'),
(3, 1, 'Iron Man 2', '7 may 2010', 'https://vokrug.tv/pic/product/3/2/1/9/3219cbac136e9d48d40e7c98867f43f5.jpeg', 'After Tony Stark reveals himself to be Iron Man, the U.S. government demands he hand over his technology. Meanwhile, a rival industrialist and a Russian scientist conspire to use his own technology against him.'),
(4, 1, 'Thor', '6 may 2011', 'https://st.kp.yandex.net/images/film_iphone/iphone360_258941.jpg', 'Thor, crown prince of Asgard, is banished to Earth and stripped of his powers after he reignites a dormant war. As his brother, Loki, plots to take the throne for himself, Thor must prove himself worthy and reclaim his hammer Mjölnir.'),
(5, 1, 'Captain America: The First Avenger', '22 July 2011', 'https://kinogo.by/uploads/posters/160946-kinogo-by.jpg', 'In 1942, Steve Rogers is deemed physically unfit to enlist in the U.S. Army and fight the German Reich in World War II. Recruited for a secret military operation, he is physically transformed into a super-soldier dubbed Captain America and must battle the Red Skull, head of a Nazi science division known as Hydra.'),
(6, 1, 'The Consultant', '13 сентября 2011', 'http://static.hdrezka.ac/i/2016/8/18/kd0389c9760bdng54s57n.jpg', 'Set after the events of Iron Man 2 and The Incredible Hulk,Phil Coulson informs Jasper Sitwell that the World Security Council wishes that Emil Blonsky should be released from prison to join the Avengers Initiative. '),
(7, 1, 'A Funny Thing Happened on the Way to Thor\'s Hammer', '25 October 2011', 'http://static.hdrezka.ac/i/2016/8/31/e742854eef138yu62v38z.jpg', 'Set before the events of Thor,[2] Phil Coulson stops at a gas station on his way to Albuquerque, New Mexico. While Coulson shops for snacks in the back of the station, two robbers enter and demand the money from the register.'),
(8, 1, 'Marvel\'s The Avengers', '4 may 2012', 'https://st.kp.yandex.net/images/film_iphone/iphone360_263531.jpg', 'Nick Fury, the director of S.H.I.E.L.D., gathers the superheroes Iron Man, Thor, Captain America, the Hulk, Black Widow and Hawkeye to fight Thor\'s brother Loki, who plots to subjugate the Earth.'),
(9, 1, 'Item 47', '25 september 2012', 'https://vignette.wikia.nocookie.net/marvel/images/9/9e/Item_47_poster.jpg/revision/latest?cb=20141220143208&path-prefix=ru', 'Bennie and Claire, a down-on-their-luck couple, find a discarded Chitauri gun (\"Item 47\") left over from the attack on New York City in The Avengers. The couple use it to rob a few banks, drawing the attention of S.H.I.E.L.D., which assigns agents Sitwell and Blake to retrieve the weapon and \"neutralize\" the couple. '),
(11, 2, 'Agent Carter ', '24  September 2013', 'https://st.kp.yandex.net/images/film_iphone/iphone360_820722.jpg', 'One year after the events of Captain America: The First Avenger,[10] Agent Peggy Carter, now a member of the Strategic Scientific Reserve, is stuck compiling data instead of working field cases. One night while alone in the office, the case line rings, informing Carter of the location of the mysterious Zodiac.'),
(12, 2, 'Agents of S.H.I.E.L.D.', '24 September 2013', 'https://st.kp.yandex.net/images/film_iphone/iphone360_701756.jpg', 'First season series 1 - 7!\r\nAgent Phil Coulson assembles a small team of S.H.I.E.L.D. (Strategic Homeland Intervention, Enforcement and Logistics Division) agents to handle strange new cases.'),
(13, 2, 'Thor: The Dark World', '8 November 2013', 'https://upload.wikimedia.org/wikipedia/ru/thumb/0/04/Thor_The_Dark_World.jpg/210px-Thor_The_Dark_World.jpg', 'Thor reunites with astrophysicist Jane Foster as a series of portals, linking worlds at random, begin to appear. He discovers that Malekith and his army of Dark Elves have returned after thousands of years, and they seek a powerful weapon known as the Aether. Thor must join forces with his now-imprisoned brother Loki to stop them.'),
(14, 2, 'Agents of S.H.I.E.L.D.', '24 September 2013', 'https://st.kp.yandex.net/images/film_iphone/iphone360_701756.jpg', 'The first season series 8-12!\r\nThe first season aired episodes that directly relate to events in the films Thor: The Dark World and Captain America: The Winter Soldier.'),
(15, 2, 'All Hail the King', '4 February 2014', 'http://kinoluvr.net/uploads/posts/2015-02/1424023317_66e21d54c97a300930ef52ede5dd67a9.jpg', 'Trevor Slattery, having been captured at the end of Iron Man 3, is now being held in Seagate Prison. At the prison, he is living luxuriously, having his own personal \"butler\", Herman, as well as other inmates who act as his fan club and protection from other inmates.'),
(16, 2, 'Agents of S.H.I.E.L.D.', '24 September 2013', 'https://st.kp.yandex.net/images/film_iphone/iphone360_701756.jpg', 'The first season, series 13-16.\r\n13 episode is the greatest!\r\n'),
(17, 2, 'Captain America: The Winter Soldier', '4 April 2014', 'https://kinogo.by/uploads/posters/676266-kinogo-by.jpg', 'Steve Rogers, now working with S.H.I.E.L.D., teams up with Natasha Romanoff / Black Widow and Sam Wilson / Falcon to expose a deep conspiracy which involves a mysterious assassin known only as the Winter Soldier.'),
(18, 2, 'Agents of S.H.I.E.L.D.', '24 September 2013', 'https://st.kp.yandex.net/images/film_iphone/iphone360_701756.jpg', 'The first season,  series 17-22.\r\n'),
(19, 2, 'Guardians of the Galaxy', '1 August 2014', 'https://upload.wikimedia.org/wikipedia/ru/thumb/c/cc/Guardians_of_the_Galaxy.jpg/204px-Guardians_of_the_Galaxy.jpg', 'Peter Quill / Star-Lord and a group of misfits, including Gamora, Rocket, Drax the Destroyer and Groot, fight to keep a powerful orb from the clutches of the villainous Ronan.'),
(20, 2, 'Agents of S.H.I.E.L.D.', '23 September 2014', 'https://vokrug.tv/pic/product/c/a/4/1/ca41fdfd1d0ac8cb1027e43a77eb8486.jpeg', 'Second season series 1-10.\r\nIn July 2014, Clark Gregg stated that the season resumes months after the end of season one, and \"the monumental nature of [rebuilding S.H.I.E.L.D.] is made very clear almost immediately, because you realize everyone—US government, US military and other wise—wants to arrest us. S.H.I.E.L.D.\'s illegal.'),
(21, 2, 'Agent Carter', '6 January 2015', 'https://vignette.wikia.nocookie.net/marvel/images/d/d5/Y1lONqKBIWY.jpg/revision/latest?cb=20150926085151&path-prefix=ru', 'In 1946, Peggy Carter must balance the routine office work she does for the Strategic Scientific Reserve while secretly assisting Howard Stark, who finds himself framed for supplying deadly weapons to enemies of the United States. Carter is assisted by Stark\'s butler, Edwin Jarvis, to find those responsible and dispose of the weapons.'),
(22, 2, 'Agents of S.H.I.E.L.D.', '23 September 2014', 'https://vokrug.tv/pic/product/c/a/4/1/ca41fdfd1d0ac8cb1027e43a77eb8486.jpeg', 'Second season, series 11-19.'),
(23, 2, 'Avengers: Age of Ultron ', '1 May 2015', 'http://static.hdrezka.ac/i/2015/5/20/nda1b915066a9pm69h27y.jpg', 'Captain America, Iron Man, Thor, the Hulk, Black Widow, and Hawkeye must work together as the Avengers to defeat Ultron, a technological enemy bent on human extinction, while encountering the powerful twins Pietro and Wanda Maximoff, as well as the new entity Vision.'),
(24, 2, 'Agents of S.H.I.E.L.D.', '23 September 2014', 'https://vokrug.tv/pic/product/c/a/4/1/ca41fdfd1d0ac8cb1027e43a77eb8486.jpeg', 'Second season series 20-22.'),
(25, 2, 'Ant-Man', '17 July 2015', 'https://thumbs.dfs.ivi.ru/storage28/contents/5/9/c672a429be9b9b6711da7b6649c1b2.jpg/234x360/', 'Thief Scott Lang must aid his mentor Dr. Hank Pym in safeguarding the mystery of the Ant-Man technology, which allows its user to decrease in size but increase in strength, from various menaces and plot a heist to defend the Earth.'),
(26, 2, 'Agents of S.H.I.E.L.D.', '29 September 2015', 'https://serials.one/thumb.php?src=https://serials.one/uploads/posts/2016-06/1464779072_agenty-schit-3-sezon-na-sezonvar.jpg&w=180&h=255&zc=1', 'All 22 series of the third season'),
(27, 2, 'Agent Carter', '19 January 2016', 'https://vignette.wikia.nocookie.net/marvel/images/d/d5/Y1lONqKBIWY.jpg/revision/latest?cb=20150926085151&path-prefix=ru', 'The second season, 10 series'),
(28, 3, 'Captain America: Civil War', '6 May 2016', 'https://i.pinimg.com/originals/34/0a/58/340a58ebf4c575b9a2a560b79a9baa23.jpg', 'The Avengers become fractured into two opposing teams, one led by Captain America and another by Iron Man, after extensive collateral damage prompts politicians to pass an act regulating superhuman activity with government oversight and accountability for the Avengers while also facing against a new enemy, Helmut Zemo, who seeks revenge upon the Avengers.'),
(29, 3, 'Agents of S.H.I.E.L.D.', '20 сентября 2016', 'http://serialbox.org/uploads/posts/2016-09/1474455180_shch.i.t.-agenty-shchita-4-sezon.jpg', 'All 22 series of the forth season'),
(30, 3, 'Doctor Strange', '4 November 2016', 'https://st.kp.yandex.net/images/film_iphone/iphone360_409600.jpg', 'After Stephen Strange, the world\'s top neurosurgeon, is involved in a car accident that ruins his career, he sets out on a journey of healing, where he encounters the Ancient One, who teaches Strange the use of Mystic Arts and to defend the Earth from mystical threats.'),
(31, 3, 'Guardians of the Galaxy Vol. 2', '5 May 2017', 'https://filmix.co/uploads/posters/big/strazhi-galaktiki2-2017_113114_0.jpg', 'The Guardians of the Galaxy travel throughout the cosmos and struggle to keep their newfound family together while helping Peter Quill learn more about his true parentage and facing against new enemies.'),
(32, 3, 'Spider-Man: Homecoming ', '7 July 2017', 'https://st.kp.yandex.net/images/film_iphone/iphone360_690593.jpg', 'Peter Parker tries to balance being the hero Spider-Man with his high school life under guidance of Tony Stark as he deals with the threat of the Vulture.'),
(33, 3, 'hor: Ragnarok', '3 November 2017', 'https://media.kg-portal.ru/movies/t/tor3ragnarek/posters/tor3ragnarek_2.jpg', 'Thor, trapped on another world without Mjölnir, must survive a gladiatorial duel against the Hulk and return to Asgard in time to stop the villainous Hela and the impending Ragnarök.'),
(34, 3, 'Agents of S.H.I.E.L.D.', '1 December 2017', 'http://kinodoza.tv/uploads/posts/2017-12/1512227039_6df9a3cf63.jpg', 'Season 5\r\nThe first pod of the season was informally referred to by the production team as S.H.I.E.L.D. in Space.[50] Ahead of the season premiere, executive producer Maurissa Tancharoen said that \"every year we reset the series, and this year we definitely knew that it would be the most giant reset to date [with the characters going to space].'),
(35, 3, 'Black Panther', '16 February 2018', 'https://vignette.wikia.nocookie.net/marvel/images/3/36/Black_Panther_Poster.jpg/revision/latest?cb=20170609141434&path-prefix=ru', 'T\'Challa returns home as sovereign of the nation of Wakanda only to find his dual role of king and protector challenged by a long-time adversary in a conflict that has global consequences.'),
(36, 3, 'Avengers: Infinity War', '3 May 2018', 'http://image.kinokrad.co/p/f/1523039818_mstiteli-voyna-beskonechnosti.jpeg', 'The Avengers join forces with the Guardians of the Galaxy to try to stop Thanos from collecting all of the Infinity Stones.'),
(37, 3, 'Ant-Man and the Wasp', '29 June 2018 ', 'http://image.kinokrad.co/p/f/1527100575_chelovek-muravey-i-osa.jpeg', 'Scott Lang tries to balance his home life with his responsibilities as Ant-Man, when Hope van Dyne and Hank Pym present him with a new mission, requiring him to team up with Van Dyne as the Wasp.'),
(38, 3, 'Captain Marvel', '7 March 2019 ', 'https://www.kino-teatr.ru/movie/poster/129673/90757.jpg', 'Carol Danvers becomes Captain Marvel, one of the galaxy\'s strongest heroes, after the Earth is caught in the center of an intergalactic conflict between two alien worlds.'),
(39, 3, 'Avengers: Endgame', '2 May 2019 ', 'http://download.loveradio.ru/pub/1475193.jpg', 'The film was announced in October 2014 as Avengers: Infinity War – Part 2.[225] In April 2015, it was revealed that Anthony and Joe Russo would direct the film and in May, that Christopher Markus and Stephen McFeely would write the screenplay.'),
(40, 4, 'Spider-Man: Far From Home', 'July 5, 2019', 'https://m.media-amazon.com/images/M/MV5BZDljOGNhOWUtNmIzNC00ZjRkLWI1YTQtNjliMTJkMzhlODUxXkEyXkFqcGdeQXVyODQzNTE3ODc@._V1_UY268_CR6,0,182,268_AL_.jpg', 'The film is set after Avengers: Endgame.[512] Jackson and Cobie Smulders reprise their roles as Nick Fury and Maria Hill, respectively, from previous MCU films.');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'Lego Marvel Super Heroes 2', 'Release: November 14, 2017', 'product-images/LegoMarvelSuperHeroes.jpg', 1500.00),
(2, 'Marvel Guardians of the Galaxy: The Telltale Series', 'Release: April 18, 2017', 'product-images/game.jpg', 1200.00),
(3, 'Marvel Ultimate Alliance', 'Release: October 24, 2006', 'product-images/MarvelUltimateAlliance.jpg', 1100.00),
(4, 'Marvel vs. Capcom: Infinite', 'Release: September 19, 2017', 'product-images/marvelbattlelines.jpg', 1500.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `login` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`login`, `password`, `admin`) VALUES
('asdf', '11', 0),
('baikadamova', 'baikadamova', 1),
('ggnet123', 'ggnet123', 1),
('madden', 'madina07', 0),
('madina', '070400', 0),
('seker', '070400', 0),
('sekerbekova', 'sekerbekova', 1),
('user01', 'parol', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`name`);
ALTER TABLE `characters` ADD FULLTEXT KEY `first mention` (`first mention`);

--
-- Indexes for table `comics`
--
ALTER TABLE `comics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
