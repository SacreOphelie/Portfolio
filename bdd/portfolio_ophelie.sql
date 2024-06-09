-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 09 juin 2024 à 10:00
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

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
  `fichier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `animation`
--

INSERT INTO `animation` (`id`, `nom`, `fichier`, `video`, `description`, `date`) VALUES
(10, 'Paralysis', '355975215Decor.jpg', 'https://www.youtube.com/embed/Jqtw0y1HHGA?si=nBvW1n3wSGeUq4JK', 'Une animation 2D pour ma 2 ème année en infographie', '2024-06-26'),
(9, 'Un brin d&#039;espoir', '11730711211107480273plan-dy-cors.jpg', 'https://www.youtube.com/embed/bn8oTVvfsfc?si=k4UipbwSJhF96xXp', 'Dans le but de mon jury de fin d&#039;année de ma première année d&#039;infographie, j&#039;ai réalisé ce stop-motion avec une équipe composé de 4 personnes.', '2023-06-01');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `nom`, `prenom`, `email`, `message`, `date`) VALUES
(1, 'sacré', 'ophélie', 'ophelie.sacre@outlook.fr', 'test', '2024-04-29 10:57:48'),
(2, 'Ophélie', 'Sacré', 'ophelie.sacre@outlook.fr', 'test 2', '2024-04-29 13:23:53'),
(3, 'sacré', 'ophélie', 'ophelie.sacre@outlook.fr', 'test3', '2024-04-29 13:28:06'),
(4, 'Ophélie', 'ophélie', 'ophelie.sacre@outlook.fr', 'test 4', '2024-04-29 13:50:41'),
(5, 'Sacré', 'Ophélie', 'ophelie.sacre@outlook.fr', 'Je t\'aime', '2024-04-29 17:14:41'),
(6, 'Sacré', 'Ophélie', 'ophelie.sacre@outlook.fr', 'test 5', '2024-05-01 12:11:24'),
(7, 'sacré', 'Sacré', 'ophelie.sacre@outlook.fr', 'test', '2024-05-01 12:15:25'),
(8, 'test', 'test', 'test@test.fr', 'test', '2024-05-16 13:59:19');

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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `illustration`
--

INSERT INTO `illustration` (`id`, `nom`, `categorie`, `image`, `description`, `date`) VALUES
(11, 'Glitch', 'Photoshop', '1634627065Exercice-8-nuance-de-couleurs-.jpg', 'Effet glitch avec 2 photos', '2023-06-01'),
(10, 'Vinyle', 'Photoshop', '18643292391591686733photoshop.jpg', 'à partir de la photo au centre, j\'ai recréé les alentours avec Photoshop.', '2023-06-23');

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `fichier`, `id_illustration`) VALUES
(12, '46351373glitch-2.jpg', 11),
(11, '1157923449Exercice-8-nuance-de-couleurs-.jpg', 11),
(10, '19723744511591686733photoshop.jpg', 10),
(13, '1791279814glitch-3.jpg', 11);

-- --------------------------------------------------------

--
-- Structure de la table `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `svg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `web`
--

INSERT INTO `web` (`id`, `nom`, `photo`, `url`, `figma`, `description`, `date`) VALUES
(4, 'Web', '10687662021401050764website.png', 'test.fr', 'test.fr', 'test', '2024-05-16'),
(6, 'test', '1401050764website.png', 'test', 'test', 'test', '2024-05-16');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
