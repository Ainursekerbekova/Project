-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 17, 2018 at 10:21 PM
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
('Captain America', 'https://memepedia.ru/wp-content/uploads/2018/05/template-4-768x491.jpg', 'Captain America Comics #1 in march 1941', 'index.html', 'America’s World War II Super-Soldier continues his fight in the present as an Avenger and untiring sentinel of liberty.'),
('Hulk', 'http://sci-fi-news.ru/wp-content/uploads/2018/07/11467362-22fd-4cce-84cf-8327e360393f-hulk-3-850x550.jpg', 'The Incredible Hulk #1 in may 1962', 'index.html', 'Exposed to heavy doses of gamma radiation, scientist Bruce Banner transforms into the mean, green rage machine called the Hulk.\r\n'),
('Iron man', 'http://www.critique-film.fr/wp-content/uploads/2012/07/robert-downey-jr-begins-filming-iron-man-3.jpg', ' Iron Man #1 (May 1968)', 'index.html', 'Inventor Tony Stark applies his genius for high-tech solutions to problems as Iron Man, the armored Avenger\r\nGenius. Billionaire. Playboy. Philanthropist.'),
('Spider-Man', 'https://avatars.mds.yandex.net/get-pdb/1384286/76c06190-204c-4108-a4d4-9e51369cfe34/orig', ' Amazing Fantasy №15 in august 1962 ', 'index.html', 'In the alternate reality of Earth-1610, a young New York City teen was bitten by a genetically enhanced spider. When the Peter Parker of that dimension was killed, the teen—named Miles Morales—was inspired to take up the fallen mantle.');

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
(1, 1, 'Iron man', '2 may 2008', 'https://www.vokrug.tv/pic/person/c/d/1/e/cd1ec9e86366b6389159d21029bd0f5c.jpeg', ' It is the first film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Favreau, with a screenplay by the writing teams of Mark Fergus and Hawk Ostby and Art Marcum and Matt Holloway. It stars Robert Downey Jr. as Tony Stark / Iron Man, alongside Terrence Howard, Jeff Bridges, Shaun Toub, and Gwyneth Paltrow. '),
(2, 1, 'The Incredible Hulk', '13 June 2008', 'http://static.hdrezka.ac/i/2013/11/21/a33590d5339eahl88f51b.jpg', 'After being exposed to gamma radiation that causes him to transform into the monstrous Hulk, scientist Bruce Banner goes on the run and isolates himself from his love, Betty Ross. Hunted by the military, Banner seeks to cure himself and prevent his condition from being weaponized.'),
(3, 1, 'Iron Man 2', '7 may 2010', 'https://vokrug.tv/pic/product/3/2/1/9/3219cbac136e9d48d40e7c98867f43f5.jpeg', 'After Tony Stark reveals himself to be Iron Man, the U.S. government demands he hand over his technology. Meanwhile, a rival industrialist and a Russian scientist conspire to use his own technology against him.'),
(4, 1, 'Thor', '6 may 2011', 'https://st.kp.yandex.net/images/film_iphone/iphone360_258941.jpg', 'Thor, crown prince of Asgard, is banished to Earth and stripped of his powers after he reignites a dormant war. As his brother, Loki, plots to take the throne for himself, Thor must prove himself worthy and reclaim his hammer Mjölnir.'),
(5, 1, 'Captain America: The First Avenger', '22 July 2011', 'https://kinogo.by/uploads/posters/160946-kinogo-by.jpg', 'In 1942, Steve Rogers is deemed physically unfit to enlist in the U.S. Army and fight the German Reich in World War II. Recruited for a secret military operation, he is physically transformed into a super-soldier dubbed Captain America and must battle the Red Skull, head of a Nazi science division known as Hydra.'),
(6, 1, 'The Consultant', '13 сентября 2011', 'http://static.hdrezka.ac/i/2016/8/18/kd0389c9760bdng54s57n.jpg', 'Set after the events of Iron Man 2 and The Incredible Hulk,Phil Coulson informs Jasper Sitwell that the World Security Council wishes that Emil Blonsky should be released from prison to join the Avengers Initiative. '),
(7, 1, 'A Funny Thing Happened on the Way to Thor\'s Hammer', '25 October 2011', 'http://static.hdrezka.ac/i/2016/8/31/e742854eef138yu62v38z.jpg', 'Set before the events of Thor,[2] Phil Coulson stops at a gas station on his way to Albuquerque, New Mexico. While Coulson shops for snacks in the back of the station, two robbers enter and demand the money from the register.'),
(8, 1, 'Marvel\'s The Avengers', '4 may 2012', 'https://st.kp.yandex.net/images/film_iphone/iphone360_263531.jpg', 'Nick Fury, the director of S.H.I.E.L.D., gathers the superheroes Iron Man, Thor, Captain America, the Hulk, Black Widow and Hawkeye to fight Thor\'s brother Loki, who plots to subjugate the Earth.'),
(9, 1, 'Item 47', '25 september 2012', 'https://vignette.wikia.nocookie.net/marvel/images/9/9e/Item_47_poster.jpg/revision/latest?cb=20141220143208&path-prefix=ru', 'Bennie and Claire, a down-on-their-luck couple, find a discarded Chitauri gun (\"Item 47\") left over from the attack on New York City in The Avengers. The couple use it to rob a few banks, drawing the attention of S.H.I.E.L.D., which assigns agents Sitwell and Blake to retrieve the weapon and \"neutralize\" the couple. '),
(10, 2, 'Iron Man 3', '3 may 2013', 'https://www.kinonews.ru/insimgs/poster/thumbs/poster30068_3.jpg', 'Tony Stark faces a powerful enemy, the Mandarin, who attacks and destroys his mansion. Left to his own devices and battling posttraumatic stress disorder, Stark struggles to get to the bottom of a series of mysterious explosions.'),
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
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
