-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 11 Août 2020 à 21:06
-- Version du serveur :  10.3.23-MariaDB-0+deb10u1
-- Version de PHP :  7.3.19-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `CCC`
--
CREATE DATABASE IF NOT EXISTS `CCC` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `CCC`;

-- --------------------------------------------------------

--
-- Structure de la table `Batterie`
--

CREATE TABLE IF NOT EXISTS `Batterie` (
  `tension` float NOT NULL,
  `Sol1` float NOT NULL,
  `Sol2` float NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`,`time`)
) ENGINE=MyISAM AUTO_INCREMENT=342445 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `BatterieP`
--

CREATE TABLE IF NOT EXISTS `BatterieP` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tension` float NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=115425 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Conso`
--

CREATE TABLE IF NOT EXISTS `Conso` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `U_bat` float NOT NULL,
  `U_panns` float NOT NULL,
  `U_pann1` float NOT NULL,
  `U_pann2` float NOT NULL,
  `I_bat` float NOT NULL,
  `I_sort` float NOT NULL,
  `P_panns` int(11) NOT NULL,
  `Etat_charge` decimal(10,0) NOT NULL,
  `Chargeur` int(11) NOT NULL,
  `Rend_total` float NOT NULL,
  `P_max_jour` int(11) NOT NULL,
  `Rend_jour` float NOT NULL,
  `Rend_hier` float NOT NULL,
  `P_max_hier` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=174582 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Eau`
--

CREATE TABLE IF NOT EXISTS `Eau` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `eau` float NOT NULL,
  `grise` float NOT NULL,
  PRIMARY KEY (`time`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=417964 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `GPS`
--

CREATE TABLE IF NOT EXISTS `GPS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `altitude` float NOT NULL,
  `vitesse` float NOT NULL,
  `time` datetime NOT NULL,
  `adresse` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15997 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Lanterneaux`
--

CREATE TABLE IF NOT EXISTS `Lanterneaux` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `lantAv` tinyint(1) NOT NULL,
  `lantArr` tinyint(1) NOT NULL,
  `pluie` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Pluie`
--

CREATE TABLE IF NOT EXISTS `Pluie` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `pluie` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Temp`
--

CREATE TABLE IF NOT EXISTS `Temp` (
  `tempExt` float NOT NULL,
  `tempInt` float NOT NULL,
  `tempFrig` float NOT NULL,
  `tempCong` float NOT NULL,
  `time` datetime NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=342478 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
