-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14.12.2022 klo 13:23
-- Palvelimen versio: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameclips`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `clips`
--

CREATE TABLE `clips` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `url` varchar(400) NOT NULL,
  `userId` int(11) NOT NULL,
  `gameId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Rakenne taululle `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(400) NOT NULL,
  `userId` int(11) NOT NULL,
  `clipId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Rakenne taululle `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `clipId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Rakenne taululle `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vedos taulusta `games`
--

INSERT INTO `games` (`id`, `name`) VALUES
(10, 'Counter-Strike'),
(20, 'Team Fortress Classic'),
(30, 'Day of Defeat'),
(40, 'Deathmatch Classic'),
(50, 'Half-Life: Opposing Force'),
(60, 'Ricochet'),
(70, 'Half-Life'),
(80, 'Counter-Strike: Condition Zero'),
(92, 'Codename Gordon'),
(100, 'Counter-Strike: Condition Zero Deleted Scenes'),
(130, 'Half-Life: Blue Shift'),
(220, 'Half-Life 2'),
(240, 'Counter-Strike: Source'),
(280, 'Half-Life: Source'),
(300, 'Day of Defeat: Source'),
(304, 'Day of Defeat: Source Press Review'),
(320, 'Half-Life 2: Deathmatch'),
(340, 'Half-Life 2: Lost Coast'),
(360, 'Half-Life Deathmatch: Source'),
(364, 'HL1:MP Linux client'),
(380, 'Half-Life 2: Episode One'),
(400, 'Portal'),
(410, 'Portal: First Slice'),
(420, 'Half-Life 2: Episode Two'),
(440, 'Team Fortress 2'),
(480, 'Spacewar'),
(500, 'Left 4 Dead'),
(550, 'Left 4 Dead 2'),
(564, 'Left 4 Dead 2 Add-on Support'),
(570, 'Dota 2'),
(581, 'Dota 2 - Murrissey the Smeevil'),
(582, 'Dota 2 - Lockjaw the Boxhound'),
(583, 'Dota 2 - Drodo the Druffin'),
(584, 'Dota 2 - Inflatable Donkey Courier'),
(585, 'Dota 2 - Plush Donkey Courier'),
(586, 'Dota 2 - International Axe'),
(620, 'Portal 2'),
(630, 'Alien Swarm'),
(659, 'Portal 2 - Pre-order'),
(669, 'Portal 2 - Sixense Motion Preorder'),
(730, 'Counter-Strike: Global Offensive'),
(765, 'Greenlight'),
(900, 'Zombie Movie'),
(901, 'Day of Defeat: Prelude to Victory'),
(919, 'Dark Messiah: Warrior'),
(920, 'Dark Messiah: Assassin'),
(921, 'Dark Messiah: Wizard'),
(924, 'Red Orchestra Infantry Tutorial'),
(925, 'Red Orchestra Vehicle Tutorial'),
(960, 'Team Fortress 2: Meet the Heavy'),
(963, 'TrackMania United Webisode 1: Coppers'),
(964, 'TrackMania United Webisode 2: Manialinks'),
(965, 'TrackMania United Webisode 3: Maniazones'),
(966, 'TrackMania United Webisode 4: Singleplayer'),
(967, 'TrackMania United Webisode 5: Multiplayer'),
(970, 'Sam & Max 103: The Mole, the Mob and the Meatball '),
(985, 'Team Fortress 2: Meet The Soldier'),
(987, 'Team Fortress 2: Meet The Engineer'),
(992, 'Company of Heroes: Opposing Fronts'),
(995, 'The Orange Box Commercial'),
(1002, 'Rag Doll Kung Fu'),
(1200, 'Red Orchestra: Ostfront 41-45'),
(1213, 'Red Orchestra: Ostfront 41-45'),
(1230, 'Mare Nostrum'),
(1250, 'Killing Floor'),
(1259, 'Killing Floor'),
(1280, 'Darkest Hour: Europe \'44-\'45'),
(1300, 'SiN Episodes: Emergence'),
(1313, 'SiN Gold'),
(1320, 'SiN Episodes: Emergence'),
(1500, 'Darwinia'),
(1504, 'Darwinia Press Review'),
(1510, 'Uplink'),
(1520, 'DEFCON'),
(1530, 'Multiwinia'),
(1600, 'Dangerous Waters'),
(1610, 'Space Empires IV Deluxe'),
(1620, 'Jagged Alliance 2'),
(1630, 'Disciples II: Rise of the Elves'),
(1640, 'Disciples II: Gallean\'s Return'),
(1670, 'Iron Warriors: T-72 Tank Command'),
(1690, 'Space Empires V'),
(1700, 'Arx Fatalis'),
(1840, 'Source Filmmaker'),
(1900, 'Earth 2160'),
(1920, 'Two Worlds'),
(1930, 'Two Worlds: Epic Edition'),
(2100, 'Dark Messiah of Might & Magic Single Player'),
(2114, 'Dark Messiah of Might & Magic Multi-Player'),
(2115, 'Dark Messiah of Might & Magic Single Player'),
(2130, 'Dark Messiah of Might & Magic Multi-Player'),
(2200, 'Quake III Arena'),
(2210, 'Quake 4'),
(2270, 'Wolfenstein 3D'),
(2280, 'DOOM (1993)'),
(2300, 'DOOM II'),
(2310, 'Quake'),
(2320, 'Quake II'),
(2350, 'Quake III: Team Arena'),
(2360, 'Hexen: Beyond Heretic'),
(2370, 'Hexen: Deathkings of the Dark Citadel'),
(2390, 'Heretic: Shadow of the Serpent Riders'),
(2400, 'The Ship'),
(2420, 'The Ship Single Player'),
(2430, 'The Ship Tutorial'),
(2450, 'Bloody Good Time'),
(2500, 'Shadowgrounds'),
(2520, 'Gumboy: Crazy Adventures'),
(2525, 'Gumboy Crazy Features'),
(2540, 'RIP'),
(2545, 'RIP 2: Strike Back'),
(2550, 'RIP 3: The Last Hero'),
(2570, 'Vigil: Blood Bitterness'),
(2590, 'Alpha Prime'),
(2600, 'Vampire: The Masquerade - Bloodlines'),
(2610, 'GUN'),
(2620, 'Call of Duty'),
(2625, 'Call of Duty Singleplayer'),
(2630, 'Call of Duty 2'),
(2635, 'Call of Duty 2 Singleplayer'),
(2640, 'Call of Duty: United Offensive'),
(2645, 'Call of Duty: United Offensive Singleplayer'),
(2680, 'The History Channel: Civil War'),
(2690, 'Empires: Dawn of the Modern World'),
(2700, 'RollerCoaster Tycoon 3: Platinum!'),
(2710, 'Act of War: Direct Action'),
(2720, 'ThreadSpace: Hyperbol'),
(2724, 'ThreadSpace: Hyperbol (dont use)'),
(2760, 'Neverwinter Nights 2: Platinum'),
(2780, 'Arma: Combat Operations'),
(2790, 'Atari: 80 Classic Games in One!'),
(2800, 'X2: The Threat'),
(2810, 'X3: Reunion'),
(2820, 'X3: Terran Conflict'),
(2826, 'X3: Terran Conflict'),
(2827, 'X3: A Sunny Place'),
(2840, 'X: Beyond the Frontier'),
(2850, 'X-Tension'),
(2860, 'X-SuperBox Bonus Material'),
(2870, 'X Rebirth'),
(2900, '688(I) Hunter/Killer'),
(2910, 'Fleet Command'),
(2920, 'Sub Command'),
(2930, 'Birth Of America'),
(2950, 'Jagged Alliance 2: Unfinished Business'),
(2990, 'FlatOut 2'),
(3000, 'GTI Racing'),
(3010, 'Xpand Rally'),
(3020, 'Call of Juarez'),
(3030, 'Call of Juarez - DirectX 10'),
(3040, 'FIM Speedway GP3'),
(3050, 'Xpand Rally Xtreme'),
(3130, 'Men of War: Red Tide'),
(3150, 'GM Rally'),
(3160, 'A Farewell to Dragons'),
(3170, 'King\'s Bounty: Armored Princess'),
(3200, 'Painkiller: Gold Edition'),
(3220, 'SpaceForce: Rogue Universe'),
(3230, 'Genesis Rising'),
(3260, 'Safecracker: The Ultimate Puzzle Adventure'),
(3270, 'Painkiller Overdose'),
(3300, 'Bejeweled 2 Deluxe'),
(3310, 'Chuzzle Deluxe'),
(3320, 'Insaniquarium! Deluxe'),
(3330, 'Zuma Deluxe'),
(3340, 'AstroPop Deluxe'),
(3350, 'Bejeweled Deluxe'),
(3360, 'Big Money! Deluxe'),
(3370, 'BookWorm Deluxe'),
(3380, 'Dynomite! Deluxe'),
(3390, 'Feeding Frenzy 2: Shipwreck Showdown Deluxe'),
(3400, 'Hammer Heads Deluxe'),
(3410, 'Heavy Weapon Deluxe'),
(3420, 'Iggle Pop! Deluxe'),
(3430, 'Pizza Frenzy'),
(3450, 'Typer Shark! Deluxe'),
(3460, 'Talismania Deluxe'),
(3470, 'Bookworm Adventures Deluxe'),
(3480, 'Peggle Deluxe'),
(3483, 'Peggle Extreme'),
(3490, 'Venice'),
(3500, 'Mystery P.I.: The Lottery Ticket'),
(3510, 'Amazing Adventures: The Lost Tomb'),
(3520, 'Mystery PI: The Vegas Heist'),
(3530, 'Amazing Adventures Around the World'),
(3540, 'Peggle Nights'),
(3560, 'Bejeweled Twist'),
(3570, 'Mystery P.I.: The New York Fortune'),
(3580, 'The Wizard\'s Pen'),
(3590, 'Plants vs. Zombies: Game of the Year'),
(3599, 'Plants vs. Zombies'),
(3600, 'Escape Rosecliff Island'),
(3610, 'Mystery P.I.: Lost in Los Angeles'),
(3620, 'Zuma\'s Revenge'),
(3629, 'Zuma\'s Revenge'),
(3630, 'BookWorm Adventures Volume 2'),
(3640, 'Bookworm (TM) Adventures - Fractured Fairytales'),
(3650, 'Zuma\'s Revenge! - Adventure'),
(3700, 'Sniper Elite'),
(3710, 'Judge Dredd: Dredd vs Death'),
(3720, 'Evil Genius'),
(3730, 'Aliens versus Predator Classic 2000'),
(3800, 'Advent Rising'),
(3810, 'BloodRayne'),
(3820, 'BloodRayne 2'),
(3830, 'Psychonauts'),
(3839, 'Psychonauts Original Cinematic Score'),
(3900, 'Sid Meier\'s Civilization IV'),
(3910, 'Sid Meier\'s Civilization III: Complete'),
(3920, 'Sid Meier\'s Pirates!'),
(3960, 'Shattered Union'),
(3970, 'Prey'),
(3980, 'CivCity: Rome'),
(3990, 'Sid Meier\'s Civilization IV: Warlords'),
(4000, 'Garry\'s Mod');

-- --------------------------------------------------------

--
-- Rakenne taululle `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `clipId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Rakenne taululle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vedos taulusta `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(10, 'TomiJumppanen', 'tomi.jumppanen@hotmail.com', '$2a$10$SeNLrJpLvAAaqg7rW9pFhOqK8Hj2gWP8DOsLQQseZhWUWbI9EbE7y', 0),
(11, 'user123554323432', 'tomi.jumppanen2@hotmail.com', '$2a$10$SeNLrJpLvAAaqg7rW9pFhOqK8Hj2gWP8DOsLQQseZhWUWbI9EbE7y', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clips`
--
ALTER TABLE `clips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `gameId` (`gameId`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `clipId` (`clipId`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clipId` (`clipId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clipId` (`clipId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clips`
--
ALTER TABLE `clips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Rajoitteet vedostauluille
--

--
-- Rajoitteet taululle `clips`
--
ALTER TABLE `clips`
  ADD CONSTRAINT `clips_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `clips_ibfk_2` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`);

--
-- Rajoitteet taululle `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`clipId`) REFERENCES `clips` (`id`);

--
-- Rajoitteet taululle `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`clipId`) REFERENCES `clips` (`id`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Rajoitteet taululle `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`clipId`) REFERENCES `clips` (`id`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
