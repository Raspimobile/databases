-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u9
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 11 Août 2020 à 20:59
-- Version du serveur :  5.5.62-0+deb8u1
-- Version de PHP :  5.6.40-0+deb8u12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

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
`ID` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=342445 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `BatterieP`
--

CREATE TABLE IF NOT EXISTS `BatterieP` (
`ID` int(11) NOT NULL,
  `tension` float NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=115425 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Choix_libre`
--

CREATE TABLE IF NOT EXISTS `Choix_libre` (
`ID` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Sonde_1` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_2` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_3` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_4` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_5` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_6` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_7` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_8` text COLLATE utf8_unicode_ci NOT NULL,
  `lieu` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Choix_libre2`
--

CREATE TABLE IF NOT EXISTS `Choix_libre2` (
`ID` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Sonde_1` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_2` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_3` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_4` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_5` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_6` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_7` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_8` text COLLATE utf8_unicode_ci NOT NULL,
  `lieu` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Choix_libre3`
--

CREATE TABLE IF NOT EXISTS `Choix_libre3` (
`ID` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Sonde_1` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_2` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_3` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_4` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_5` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_6` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_7` text COLLATE utf8_unicode_ci NOT NULL,
  `Sonde_8` text COLLATE utf8_unicode_ci NOT NULL,
  `lieu` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `config_emplacement`
--

CREATE TABLE IF NOT EXISTS `config_emplacement` (
`ID` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `n1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `n2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `n3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `n4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `n5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `n6` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `n7` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `n8` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `n9` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Conso`
--

CREATE TABLE IF NOT EXISTS `Conso` (
`ID` int(11) NOT NULL,
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
  `P_max_hier` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=174582 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Eau`
--

CREATE TABLE IF NOT EXISTS `Eau` (
`ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `eau` float NOT NULL,
  `grise` float NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=417964 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `GPS`
--

CREATE TABLE IF NOT EXISTS `GPS` (
`ID` int(11) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `altitude` float NOT NULL,
  `vitesse` float NOT NULL,
  `time` datetime NOT NULL,
  `adresse` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15997 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Lanterneaux`
--

CREATE TABLE IF NOT EXISTS `Lanterneaux` (
`ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `lantAv` tinyint(1) NOT NULL,
  `lantArr` tinyint(1) NOT NULL,
  `pluie` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Pieces_Maisons`
--

CREATE TABLE IF NOT EXISTS `Pieces_Maisons` (
`ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `CH_K` text COLLATE utf8_unicode_ci NOT NULL,
  `CH_F` text COLLATE utf8_unicode_ci NOT NULL,
  `CH_L` text COLLATE utf8_unicode_ci NOT NULL,
  `CH_P` text COLLATE utf8_unicode_ci NOT NULL,
  `Hall` text COLLATE utf8_unicode_ci NOT NULL,
  `Salon` text COLLATE utf8_unicode_ci NOT NULL,
  `Cellier` text COLLATE utf8_unicode_ci NOT NULL,
  `Garage` text COLLATE utf8_unicode_ci NOT NULL,
  `libre` text COLLATE utf8_unicode_ci NOT NULL,
  `libre2` text COLLATE utf8_unicode_ci NOT NULL,
  `libre3` text COLLATE utf8_unicode_ci NOT NULL,
  `librenom` text COLLATE utf8_unicode_ci NOT NULL,
  `libre2nom` text COLLATE utf8_unicode_ci NOT NULL,
  `libre3nom` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=498 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Pluie`
--

CREATE TABLE IF NOT EXISTS `Pluie` (
`ID` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pluie` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Pression`
--

CREATE TABLE IF NOT EXISTS `Pression` (
`ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `Pression` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3001 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Sonde_5`
--

CREATE TABLE IF NOT EXISTS `Sonde_5` (
`ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `Temp` float NOT NULL,
  `Pression` int(11) NOT NULL,
  `Lieu` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `Temps` tinytext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1501 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
`ID` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=342478 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Temperatures`
--

CREATE TABLE IF NOT EXISTS `Temperatures` (
`ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `CH_K` float DEFAULT NULL,
  `CH_F` float DEFAULT NULL,
  `CH_L` float DEFAULT NULL,
  `CH_P` float DEFAULT NULL,
  `Hall` float DEFAULT NULL,
  `Salon` float DEFAULT NULL,
  `Garage` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `temp_maison`
--

CREATE TABLE IF NOT EXISTS `temp_maison` (
  `time` datetime NOT NULL,
`ID` int(11) NOT NULL,
  `S1` float NOT NULL,
  `piece` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3945 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `temp_maison2`
--

CREATE TABLE IF NOT EXISTS `temp_maison2` (
`ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `S2` float NOT NULL,
  `piece` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29182 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `temp_maison3`
--

CREATE TABLE IF NOT EXISTS `temp_maison3` (
`ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `S3` float DEFAULT NULL,
  `humidite` float DEFAULT NULL,
  `piece` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3273 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `temp_maison4`
--

CREATE TABLE IF NOT EXISTS `temp_maison4` (
`ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `S4` float NOT NULL,
  `humidite` float NOT NULL,
  `piece` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12236 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `temp_maison5`
--

CREATE TABLE IF NOT EXISTS `temp_maison5` (
`ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `S5` float NOT NULL,
  `piece` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2501 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `temp_maison6`
--

CREATE TABLE IF NOT EXISTS `temp_maison6` (
`ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `S6` float NOT NULL,
  `piece` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `temp_maison7`
--

CREATE TABLE IF NOT EXISTS `temp_maison7` (
`ID` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `S7` float NOT NULL,
  `piece` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `temp_maison8`
--

CREATE TABLE IF NOT EXISTS `temp_maison8` (
`ID` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `S8` float NOT NULL,
  `piece` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Batterie`
--
ALTER TABLE `Batterie`
 ADD PRIMARY KEY (`ID`,`time`);

--
-- Index pour la table `BatterieP`
--
ALTER TABLE `BatterieP`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Choix_libre`
--
ALTER TABLE `Choix_libre`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Choix_libre2`
--
ALTER TABLE `Choix_libre2`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Choix_libre3`
--
ALTER TABLE `Choix_libre3`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `config_emplacement`
--
ALTER TABLE `config_emplacement`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Conso`
--
ALTER TABLE `Conso`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Eau`
--
ALTER TABLE `Eau`
 ADD PRIMARY KEY (`time`), ADD KEY `ID` (`ID`);

--
-- Index pour la table `GPS`
--
ALTER TABLE `GPS`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Lanterneaux`
--
ALTER TABLE `Lanterneaux`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Pieces_Maisons`
--
ALTER TABLE `Pieces_Maisons`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Pluie`
--
ALTER TABLE `Pluie`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Pression`
--
ALTER TABLE `Pression`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Sonde_5`
--
ALTER TABLE `Sonde_5`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Temp`
--
ALTER TABLE `Temp`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Temperatures`
--
ALTER TABLE `Temperatures`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `temp_maison`
--
ALTER TABLE `temp_maison`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `temp_maison2`
--
ALTER TABLE `temp_maison2`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `temp_maison3`
--
ALTER TABLE `temp_maison3`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `temp_maison4`
--
ALTER TABLE `temp_maison4`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `temp_maison5`
--
ALTER TABLE `temp_maison5`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `temp_maison6`
--
ALTER TABLE `temp_maison6`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `temp_maison7`
--
ALTER TABLE `temp_maison7`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `temp_maison8`
--
ALTER TABLE `temp_maison8`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Batterie`
--
ALTER TABLE `Batterie`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=342445;
--
-- AUTO_INCREMENT pour la table `BatterieP`
--
ALTER TABLE `BatterieP`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=115425;
--
-- AUTO_INCREMENT pour la table `Choix_libre`
--
ALTER TABLE `Choix_libre`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=181;
--
-- AUTO_INCREMENT pour la table `Choix_libre2`
--
ALTER TABLE `Choix_libre2`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT pour la table `Choix_libre3`
--
ALTER TABLE `Choix_libre3`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT pour la table `config_emplacement`
--
ALTER TABLE `config_emplacement`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `Conso`
--
ALTER TABLE `Conso`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=174582;
--
-- AUTO_INCREMENT pour la table `Eau`
--
ALTER TABLE `Eau`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=417964;
--
-- AUTO_INCREMENT pour la table `GPS`
--
ALTER TABLE `GPS`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15997;
--
-- AUTO_INCREMENT pour la table `Lanterneaux`
--
ALTER TABLE `Lanterneaux`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `Pieces_Maisons`
--
ALTER TABLE `Pieces_Maisons`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=498;
--
-- AUTO_INCREMENT pour la table `Pluie`
--
ALTER TABLE `Pluie`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `Pression`
--
ALTER TABLE `Pression`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3001;
--
-- AUTO_INCREMENT pour la table `Sonde_5`
--
ALTER TABLE `Sonde_5`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1501;
--
-- AUTO_INCREMENT pour la table `Temp`
--
ALTER TABLE `Temp`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=342478;
--
-- AUTO_INCREMENT pour la table `Temperatures`
--
ALTER TABLE `Temperatures`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `temp_maison`
--
ALTER TABLE `temp_maison`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3945;
--
-- AUTO_INCREMENT pour la table `temp_maison2`
--
ALTER TABLE `temp_maison2`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29182;
--
-- AUTO_INCREMENT pour la table `temp_maison3`
--
ALTER TABLE `temp_maison3`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3273;
--
-- AUTO_INCREMENT pour la table `temp_maison4`
--
ALTER TABLE `temp_maison4`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12236;
--
-- AUTO_INCREMENT pour la table `temp_maison5`
--
ALTER TABLE `temp_maison5`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2501;
--
-- AUTO_INCREMENT pour la table `temp_maison6`
--
ALTER TABLE `temp_maison6`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `temp_maison7`
--
ALTER TABLE `temp_maison7`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `temp_maison8`
--
ALTER TABLE `temp_maison8`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

