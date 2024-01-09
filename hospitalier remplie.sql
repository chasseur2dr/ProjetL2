-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mar 09 Janvier 2024 à 14:34
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

--
-- Contenu de la table `créneau`
--

INSERT INTO `créneau` (`id_creneau`, `date_creneau`, `plage_horaire_debut`, `plage_horaire_fin`, `besoin`) VALUES
(1, '2024-01-02', 11, 12, ''),
(2, '2024-01-07', 10, 14, 'salle B'),
(3, '2024-05-17', 0, 6, 'bloc A'),
(4, '2024-05-17', 12, 14, ' ');

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

CREATE TABLE IF NOT EXISTS `fonction` (
  `id_fonction` int(11) NOT NULL,
  `nom_fonction` varchar(50) NOT NULL,
  PRIMARY KEY (`id_fonction`),
  UNIQUE KEY `id_fonction` (`id_fonction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fonction`
--

INSERT INTO `fonction` (`id_fonction`, `nom_fonction`) VALUES
(1, 'infirmier'),
(2, 'chirurgien'),
(3, 'aide soignant'),
(4, 'diététicien'),
(5, 'technicien de laboratoire'),
(6, 'kiné'),
(7, 'médecin généraliste');

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

--
-- Contenu de la table `personnel`
--

INSERT INTO `personnel` (`id`, `nom`, `prenom`, `date_naissance`, `temps_travail`, `id_Fonction`) VALUES
(1, 'Alex', 'Dupond', '1984-05-01', 24, 2),
(2, 'Sarah', 'Muller', '1994-12-07', 18, 3),
(3, 'castel', 'Julien', '1977-03-24', 35, 3),
(4, 'DUBOIS ', 'Theo', '1964-05-08', 40, 4),
(5, 'ROBERT', 'Emilie', '1984-05-08', 27, 7),
(6, 'THOMAS ', 'THOMAS', '1988-07-12', 23, 6),
(7, 'Aillaud', 'Alexandre', '1994-05-01', 35, 1),
(8, 'Dupuis', 'Maxime', '1974-05-01', 35, 4),
(9, 'Meyer', 'Amandine', '1999-05-01', 15, 1),
(10, 'Menier', 'Hugo', '1999-07-08', 15, 3),
(11, 'Gerard', 'Lorent', '1986-02-09', 27, 6),
(12, 'Schneider', 'Lea', '1992-08-04', 17, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
