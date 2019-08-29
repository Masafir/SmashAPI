-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 29 Août 2019 à 15:33
-- Version du serveur :  5.7.27-0ubuntu0.18.04.1
-- Version de PHP :  7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `smash`
--

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL,
  `game_id` int(10) UNSIGNED NOT NULL,
  `range` char(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `characters`
--

INSERT INTO `characters` (`id`, `name`, `game_id`, `range`, `created_at`, `updated_at`) VALUES
(1, 'Mario', 1, 'B', '2019-02-03 16:29:16', NULL),
(2, 'Donkey Kong', 2, 'A', '2019-02-03 16:29:16', NULL),
(3, 'Link', 3, 'A', '2019-02-03 16:29:16', NULL),
(4, 'Samus', 4, 'C', '2019-02-03 16:29:16', NULL),
(5, 'Dark Samus', 4, 'C', '2019-02-03 16:29:16', NULL),
(6, 'Yoshi', 5, 'A', '2019-02-03 16:29:16', NULL),
(7, 'Kirby', 6, 'D', '2019-02-03 16:29:16', NULL),
(8, 'Fox', 7, 'A', '2019-02-03 16:29:16', NULL),
(9, 'Pikachu', 8, 'S', '2019-02-03 16:29:16', NULL),
(10, 'Luigi', 1, 'B', '2019-02-03 16:29:16', NULL),
(11, 'Ness', 9, 'B', '2019-02-03 16:29:16', NULL),
(12, 'Captain Falcon', 10, 'B', '2019-02-03 16:29:16', NULL),
(13, 'Rondoudou', 8, 'B', '2019-02-03 16:29:16', NULL),
(14, 'Peach', 1, 'S', '2019-02-03 16:29:16', NULL),
(15, 'Daisy', 1, 'S', '2019-02-03 16:29:16', NULL),
(16, 'Bowser', 1, 'B', '2019-02-03 16:29:16', NULL),
(17, 'Ice Climbers', 11, 'C', '2019-02-03 16:29:16', NULL),
(18, 'Sheik', 3, 'B', '2019-02-03 16:29:16', NULL),
(19, 'Zelda', 3, 'C', '2019-02-03 16:29:16', NULL),
(20, 'Dr. Mario', 1, 'B', '2019-02-03 16:29:16', NULL),
(21, 'Pichu', 8, 'S', '2019-02-03 16:29:16', NULL),
(22, 'Falco', 7, 'B', '2019-02-03 16:29:16', NULL),
(23, 'Marth', 12, 'S', '2019-02-03 16:29:16', NULL),
(24, 'Lucina', 12, 'S', '2019-02-03 16:29:16', NULL),
(25, 'Young Link', 3, 'A', '2019-02-03 16:29:16', NULL),
(26, 'Ganondorf', 3, 'D', '2019-02-03 16:29:16', NULL),
(27, 'Mewtwo', 8, 'S', '2019-02-03 16:29:16', NULL),
(28, 'Roy', 12, 'A', '2019-02-03 16:29:16', NULL),
(29, 'Chrom', 12, 'S', '2019-02-03 16:29:16', NULL),
(30, 'Mr. Game & Watch', 13, 'B', '2019-02-03 16:29:16', NULL),
(31, 'Meta Knight', 6, 'A', '2019-02-03 16:29:16', NULL),
(32, 'Pit', 14, 'C', '2019-02-03 16:29:16', NULL),
(33, 'Dark Pit', 14, 'C', '2019-02-03 16:29:16', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `game`
--

CREATE TABLE `game` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `game`
--

INSERT INTO `game` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Super Mario', '2019-02-03 16:00:05', NULL),
(2, 'Donkey Kong', '2019-02-03 16:00:05', NULL),
(3, 'The Legend of Zelda', '2019-02-03 16:00:05', NULL),
(4, 'Metroid', '2019-02-03 16:00:05', NULL),
(5, 'Yoshi', '2019-02-03 16:00:05', NULL),
(6, 'Kirby', '2019-02-03 16:00:05', NULL),
(7, 'StarFox', '2019-02-03 16:00:05', NULL),
(8, 'Pokemon', '2019-02-03 16:00:05', NULL),
(9, 'EarthBound', '2019-02-03 16:00:05', NULL),
(10, 'F-zero', '2019-02-03 16:00:05', NULL),
(11, 'Ice Climber', '2019-02-03 16:00:05', NULL),
(12, 'Fire Emblem', '2019-02-03 16:00:05', NULL),
(13, 'Game & Watch', '2019-02-03 16:00:05', NULL),
(14, 'Kid Icarus', '2019-02-03 16:00:05', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game` (`game_id`);

--
-- Index pour la table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `characters`
--
ALTER TABLE `characters`
  ADD CONSTRAINT `characters_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
