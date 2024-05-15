-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 25 avr. 2024 à 13:35
-- Version du serveur : 8.0.31
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `portfolio_ophelie`
--
CREATE DATABASE IF NOT EXISTS `portfolio_ophelie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `portfolio_ophelie`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `login`, `password`) VALUES
(1, 'admin', '$2y$10$abhe4Y2OX7RfHVTo8rK1dOhfwA73Q2Bx1ZIvCry5cxvrgeHVDyNiO');

-- --------------------------------------------------------

--
-- Structure de la table `animation`
--

DROP TABLE IF EXISTS `animation`;
CREATE TABLE IF NOT EXISTS `animation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `animation`
--

INSERT INTO `animation` (`id`, `nom`, `video`, `description`, `date`) VALUES
(5, 'test', 'test.fr', 'test', '2024-04-17'),
(2, 'test', 'test.fr', 'test', '2024-04-14'),
(4, 'test.fr', '', 'test', '2024-04-12'),
(6, 'test.fr', '', 'test', '2024-04-18');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `illustration`
--

DROP TABLE IF EXISTS `illustration`;
CREATE TABLE IF NOT EXISTS `illustration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `categorie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `illustration`
--

INSERT INTO `illustration` (`id`, `nom`, `categorie`, `image`, `description`, `date`) VALUES
(1, 'test', 'photo', '1103420699998437204415024638Alfa-Romeo-Tonale-Concept-01.jpg', 'test', '2024-04-14'),
(2, 'photoshop update', 'categorie1', '1775730431998437204415024638Alfa-Romeo-Tonale-Concept-01.jpg', 'test', '2024-04-17'),
(3, 'test update', 'categorie3', '5961174411775730431998437204415024638Alfa-Romeo-Tonale-Concept-01.jpg', 'test', '2024-04-17'),
(4, 'test', 'categorie3', '1190194752676369904998437204415024638Alfa-Romeo-Tonale-Concept-01.jpg', 'test', '2024-04-17'),
(5, 'photo', 'photo', '1016937310123998083chambre.png', 'test', '2024-04-17');

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fichier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_illustration` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `fichier`, `id_illustration`) VALUES
(1, '14362092461932453032998437204415024638Alfa-Romeo-Tonale-Concept-01.jpg', 2),
(2, '19101793531775730431998437204415024638Alfa-Romeo-Tonale-Concept-01.jpg', 3),
(3, '82461383123998083chambre.png', 1);

-- --------------------------------------------------------

--
-- Structure de la table `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `svg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `skills`
--

INSERT INTO `skills` (`id`, `svg`) VALUES
(3, '1286654628skills-an.png'),
(2, '556658999982156034skills-ai.png'),
(4, '554553850skills-au.png'),
(5, '460441786skills-id.png'),
(6, '1045754102skills-pr.png'),
(7, '481690210skills-ps.png'),
(8, '1093225007skills-vs.png'),
(9, '262917415skills-f.png');

-- --------------------------------------------------------

--
-- Structure de la table `web`
--

DROP TABLE IF EXISTS `web`;
CREATE TABLE IF NOT EXISTS `web` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `figma` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `web`
--

INSERT INTO `web` (`id`, `nom`, `photo`, `url`, `figma`, `description`, `date`) VALUES
(1, 'test', '5961174411775730431998437204415024638Alfa-Romeo-Tonale-Concept-01.jpg', 'test.fr', 'figma.fr', 'test', '2024-04-17'),
(2, 'test', '1932453032998437204415024638Alfa-Romeo-Tonale-Concept-01.jpg', 'test.fr', 'figma.fr', 'test', '2024-04-17'),
(3, 'test 2', '170730082014761602355961174411775730431998437204415024638Alfa-Romeo-Tonale-Concept-01.jpg', 'test', 'tset2.fr', 'test', '2024-04-17');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
