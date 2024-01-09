-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mar 09 Janvier 2024 à 13:21
-- Version du serveur: 5.6.13
-- Version de PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `hospitalier`
--
CREATE DATABASE IF NOT EXISTS `hospitalier` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hospitalier`;

-- --------------------------------------------------------

--
-- Structure de la table `créneau`
--

CREATE TABLE IF NOT EXISTS `créneau` (
  `id_creneau` int(11) NOT NULL,
  `date_creneau` date NOT NULL,
  `plage_horaire_debut` int(11) NOT NULL,
  `plage_horaire_fin` int(11) NOT NULL,
  `besoin` varchar(50) NOT NULL,
  PRIMARY KEY (`id_creneau`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

CREATE TABLE IF NOT EXISTS `fonction` (
  `id_fonction` int(11) NOT NULL,
  `nom_fonction` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE IF NOT EXISTS `personnel` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `temps_travail` int(11) NOT NULL,
  `id_Fonction` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
