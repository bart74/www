-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 28 Avril 2017 à 16:29
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `securoute`
--
CREATE DATABASE IF NOT EXISTS `securoute` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `securoute`;

-- --------------------------------------------------------

--
-- Structure de la table `panneaux`
--

CREATE TABLE `panneaux` (
  `id` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `panneaux`
--

INSERT INTO `panneaux` (`id`, `description`, `img`) VALUES
(1, 'Dromadaire', '/ressources/panneaux/sign1.png'),
(2, 'Chameau', '/ressources/panneaux/sign2.png'),
(3, 'MICHAEL FUCKING BAY!', '/ressources/panneaux/sign3.png'),
(4, 'Beeeeeeeh', '/ressources/panneaux/sign4.png'),
(5, 'Trompettes interdites', '/ressources/panneaux/sign5.png'),
(6, 'Ralentir : Beatles', '/ressources/panneaux/sign6.png'),
(7, 'Null', '/ressources/panneaux/sign7.png'),
(8, 'Accès à internet/retour à la civilisation', '/ressources/panneaux/sign8.png'),
(9, 'ATTENTIOOOOOOON!!!', '/ressources/panneaux/sign9.png');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `panneaux`
--
ALTER TABLE `panneaux`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `panneaux`
--
ALTER TABLE `panneaux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
