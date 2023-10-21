-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 20 oct. 2023 à 12:24
-- Version du serveur : 5.7.40
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jacadi`
--

DROP TABLE IF EXISTS `jacadi`;
CREATE TABLE IF NOT EXISTS `jacadi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `page1` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `jacadi`
--

INSERT INTO `jacadi` (`id`, `name`, `page1`) VALUES
(1, 'Première maquette de Jacadi', 'maquette1.webp'),
(2, 'Deuxième maquette de Jacadi', 'maquette2.webp'),
(3, 'Troisième maquette de jacadi', 'maquette3.webp'),
(4, 'Quatrième maquette de Jacadi', 'maquette4.webp');

-- --------------------------------------------------------

--
-- Structure de la table `lollypop`
--

DROP TABLE IF EXISTS `lollypop`;
CREATE TABLE IF NOT EXISTS `lollypop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `lollypop`
--

INSERT INTO `lollypop` (`id`, `name`, `image`) VALUES
(1, 'Première maquette de Lolly Pop', 'lollyPop1.webp'),
(2, 'Deuxième maquette de Lolly Pop', 'lollyPop2.webp'),
(3, 'Troisième maquette de Lolly Pop', 'lollyPop3.webp'),
(4, 'Quatrième maquette de Lolly Pop', 'lollyPop4.webp'),
(5, 'Cinquième maquette de Lolly Pop', 'lollyPop5.webp'),
(6, 'Sixième maquette de Lolly Pop', 'lollyPop6.webp');

-- --------------------------------------------------------

--
-- Structure de la table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `code`, `cover`, `date`) VALUES
(2, 'Jacadi', '\"Jacadi\" est la 1ère maquette que j\'ai réalisé pour mes cours, 1ère expérimentation de photoshop.\r\nCela ne restait qu\'un exercice a réalisé  pour la taille dekstop, cela évoluera avec le temps... Pour peut-être m\'amuser aussi à créer ce site en \"réel\". Cette réalisation a été accomplie dans la cadre de mes études.', 'Photoshop', 'maquette1.webp', 'Mars 2023'),
(5, 'VillaSantorini', '\"Villa Santorini\" est la 2ème maquette que j\'ai réalisé pour mes cours, 1ère expérimentation de Figma.\r\nCela ne restait qu\'un exercice a réalisé  pour la taille dekstop, cela évoluera avec le temps peut-être aussi... Pour peut-être m\'amuser aussi à créer ce site en \"réel\". Juste un peu de temps et le tour est joué...', 'Figma', 'VillaSantorini1.webp', 'Avril 2023'),
(6, 'LollyPop', '\"Lolly Pop\" est mon projet de fin d\'étude (1ère année - juin 2023).\r\nQuelle satisfaction d\'avoir pu montrer ce dont j\'étais capable...', 'Figma', 'lollyPop.webp', 'Juin 2023'),
(7, '50 Nuances de Grey', 'Voici mon 1er site web uniquement en HTML/CSS. Bonne visite...', 'HTML/CSS', '50NuancesDeGrey.webp', '');

-- --------------------------------------------------------

--
-- Structure de la table `villasantorini`
--

DROP TABLE IF EXISTS `villasantorini`;
CREATE TABLE IF NOT EXISTS `villasantorini` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `villasantorini`
--

INSERT INTO `villasantorini` (`id`, `name`, `image`) VALUES
(1, 'Première maquette de Villa Santorini', 'villaSantorini1.webp'),
(2, 'Deuxième maquette de Villa Santorini', 'villaSantorini2.webp'),
(3, 'Troisième maquette de Villa Santorini', 'villaSantorini3.webp'),
(4, 'Quatrième maquette de Villa Santorini', 'villaSantorini4.webp'),
(5, 'Cinquième maquette de Villa Santorini', 'villaSantorini5.webp');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
