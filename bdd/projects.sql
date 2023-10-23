-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 21 oct. 2023 à 21:14
-- Version du serveur : 5.7.40
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
/*SET time_zone = "+00:00";*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `portfolio`
--

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
(2, 'Jacadi', '\"Jacadi\" est la 1ère maquette que j\'ai réalisé pour mes cours, 1ère expérimentation de photoshop.\r\nCela ne restait qu\'un exercice a réalisé  pour la taille dekstop, cela évoluera avec le temps... \r\nPour peut-être m\'amuser aussi à créer ce site en \"réel\". \r\nCette réalisation a été accomplie dans la cadre de mes études.', 'Photoshop', 'maquette1.webp', 'Mars 2023'),
(5, 'VillaSantorini', '\"Villa Santorini\" est la 2ème maquette que j\'ai réalisé pour mes cours, 1ère expérimentation de Figma.\r\nCela ne restait qu\'un exercice a réalisé  pour la taille dekstop, cela évoluera avec le temps peut-être aussi... Pour peut-être m\'amuser aussi à créer ce site en \"réel\". Juste un peu de temps et le tour est joué...', 'Figma', 'villaSantorini1.webp', 'Avril 2023'),
(6, 'LollyPop', '\"Lolly Pop\" est mon projet de fin d\'étude (1ère année - juin 2023).\r\nQuelle satisfaction d\'avoir pu montrer ce dont j\'étais capable...', 'Figma', 'lollyPop.webp', 'Juin 2023'),
(7, '50 Nuances de Grey', 'Voici mon 1er site web uniquement en HTML/CSS. Bonne visite...', 'HTML/CSS', '50NuancesDeGrey.webp', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
