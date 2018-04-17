-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 16 Avril 2018 à 22:44
-- Version du serveur :  5.6.20-log
-- Version de PHP :  5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `school1.0`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE IF NOT EXISTS `administrateur` (
`id_administrateur` int(11) NOT NULL,
  `nom_administrateur` int(11) NOT NULL,
  `prenom_administrateur` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `directeur`
--

CREATE TABLE IF NOT EXISTS `directeur` (
`id_directeur` int(10) NOT NULL,
  `nom_directeur` varchar(15) COLLATE utf8_bin NOT NULL,
  `prenom_directeur` varchar(15) COLLATE utf8_bin NOT NULL,
  `id_utilisateur` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE IF NOT EXISTS `enseignant` (
`id_enseignant` int(10) NOT NULL,
  `nom_enseignant` varchar(10) COLLATE utf8_bin NOT NULL,
  `prenom_enseignat` varchar(10) COLLATE utf8_bin NOT NULL,
  `date_naissance` date NOT NULL,
  `id_utilisateur` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
`id_etudiant` int(10) NOT NULL,
  `nom_etudiant` varchar(10) COLLATE utf8_bin NOT NULL,
  `prenom_etudiant` varchar(10) COLLATE utf8_bin NOT NULL,
  `date_naissance` varchar(10) COLLATE utf8_bin NOT NULL,
  `lieu_naissance` varchar(10) COLLATE utf8_bin NOT NULL,
  `adresse` varchar(30) CHARACTER SET utf8 NOT NULL,
  `tel` int(10) NOT NULL,
  `mail` varchar(20) CHARACTER SET utf8 NOT NULL,
  `niveauEtude` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`id_etudiant`, `nom_etudiant`, `prenom_etudiant`, `date_naissance`, `lieu_naissance`, `adresse`, `tel`, `mail`, `niveauEtude`) VALUES
(1, 'fffd', 'ggdggd', '12-12-2012', 'hhhgg', 'ggd', 222256656, 'ffd', 'hhhh'),
(2, 'Raba', 'sarah', '23-12-1990', 'lille', 'paris', 605665650, 'sara@gmail.com', 'bac'),
(3, 'Boudar', 'ahmed', '23-12-1987', 'Bejaia', 'evry courcouronne', 203056650, 'ahmed@gmail.com', 'Bac+3');

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE IF NOT EXISTS `groupe` (
`id_groupe` int(5) NOT NULL,
  `nom_groupe` varchar(20) CHARACTER SET utf8 NOT NULL,
  `id_salle` int(5) NOT NULL,
  `id_enseignant` int(5) NOT NULL,
  `id_session` int(5) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `groupe`
--

INSERT INTO `groupe` (`id_groupe`, `nom_groupe`, `id_salle`, `id_enseignant`, `id_session`) VALUES
(1, 'groupe1_Italien ', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE IF NOT EXISTS `inscription` (
`id_inscription` int(5) NOT NULL,
  `date_inscription` varchar(10) NOT NULL,
  `id_etudiant` int(5) NOT NULL,
  `id_formation` int(5) NOT NULL,
  `id_groupe` int(5) NOT NULL,
  `id_paiement` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE IF NOT EXISTS `paiement` (
`id_paiement` int(5) NOT NULL,
  `date_paiement` date NOT NULL,
  `id_inscription` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
`id_utilisateur` int(15) NOT NULL,
  `nom_utilisateur` varchar(15) COLLATE utf8_bin NOT NULL,
  `mot_passe` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom_utilisateur`, `mot_passe`) VALUES
(1, 'samia', 'sam'),
(2, 'dida', 'adid');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
 ADD PRIMARY KEY (`id_administrateur`), ADD KEY `administrateur_ibfk_1` (`id_utilisateur`);

--
-- Index pour la table `directeur`
--
ALTER TABLE `directeur`
 ADD PRIMARY KEY (`id_directeur`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
 ADD PRIMARY KEY (`id_enseignant`), ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
 ADD PRIMARY KEY (`id_etudiant`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
 ADD PRIMARY KEY (`id_groupe`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
 ADD PRIMARY KEY (`id_inscription`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
 ADD PRIMARY KEY (`id_paiement`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
 ADD PRIMARY KEY (`id_utilisateur`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
MODIFY `id_administrateur` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `directeur`
--
ALTER TABLE `directeur`
MODIFY `id_directeur` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `enseignant`
--
ALTER TABLE `enseignant`
MODIFY `id_enseignant` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
MODIFY `id_etudiant` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `groupe`
--
ALTER TABLE `groupe`
MODIFY `id_groupe` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
MODIFY `id_inscription` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
MODIFY `id_paiement` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
MODIFY `id_utilisateur` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `administrateur`
--
ALTER TABLE `administrateur`
ADD CONSTRAINT `administrateur_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`) ON DELETE CASCADE;

--
-- Contraintes pour la table `enseignant`
--
ALTER TABLE `enseignant`
ADD CONSTRAINT `enseignant_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
