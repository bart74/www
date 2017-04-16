-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Sam 15 Avril 2017 à 22:57
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

-- --------------------------------------------------------

--
-- Structure de la table `panneaux`
--

CREATE TABLE `panneaux` (
  `id` int(11) NOT NULL,
  `description` text,
  `img` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `panneaux`
--

INSERT INTO `panneaux` (`id`, `description`, `img`) VALUES
(1, 'Dromadaire', '/ressources/panneaux/sign1.png'),
(2, 'Chameau', '/ressources/panneaux/sign2.png'),
(3, 'MICHAEL FUCKING BAY!', '/ressources/panneaux/sign3.png'),
(4, 'Beeeeeeeh', '/ressources/panneaux/sign4.png'),
(5, 'Trompettes interdites', '/ressources/panneaux/sign5.png');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
