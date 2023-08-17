-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 17 août 2023 à 11:22
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `zurly`
--

-- --------------------------------------------------------

--
-- Structure de la table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL,
  `shortcut` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `links`
--

INSERT INTO `links` (`id`, `url`, `shortcut`) VALUES
(4, 'http://localhost:8080/phpmyadmin/index.php?route=/sql&db=zurly&table=links&pos=0', '16/CsP063x5Zs'),
(5, 'https://www.leagueoflegends.com/fr-fr/news/tags/patch-notes/', '16Wr5gJn/6CVc'),
(6, 'https://www.pexels.com/fr-fr/chercher/ordinateur/', '16Wr5gJn/6CVc'),
(7, 'https://www.linkedin.com/authwall?trk=bf&trkInfo=AQEbDviju9pekAAAAYmGu7G4PVKadTGGTm3X6IoBsOQGW_Nc2IM-zyEsTjuuz-1nOeFvaA2-D2rGyGPXW5F7hs9HaNZ5BDO7u5KvW9SJtrQdxhZRpqpawgx87DUdGzEa8QX22bQ=&original_referer=&sessionRedirect=https%3A%2F%2Fwww.linkedin.com%2Fin%2Fjeremyalleau', '16Wr5gJn/6CVc'),
(8, 'https://www.youtube.com/', '16Wr5gJn/6CVc'),
(9, 'https://www.leagueoflegends.com/fr-fr/', '16Wr5gJn/6CVc'),
(10, 'https://eu.shop.battle.net/fr-fr', '51UE/yg.RCRAc'),
(11, 'https://fr.wikipedia.org/wiki/The_Witcher_(s%C3%A9rie_t%C3%A9l%C3%A9vis%C3%A9e)', '13OaByZFgJ45I'),
(12, 'https://dribbble.com/shots', '18kLHcvvCc0Xc'),
(13, 'http://localhost:8080/projet/bitly/index.php', '13ikow7Pw01TM'),
(14, 'https://start.lesechos.fr/societe/culture-tendances/ironman-triathlon-trail-pourquoi-les-jeunes-cadres-dynamiques-se-droguent-ils-a-lultra-sport-1964069?utm_source=pocket-newtab-bff', '80j70PxKOtZUM'),
(15, 'https://www.beauxarts.com/lifestyle/pompei-merveilleux-vestige-endormi-au-pied-du-vesuve/?', '19Fu6fW4t2YOY'),
(16, 'https://fr.wikipedia.org/wiki/Heroes_of_the_Storm', '22eIJo.dqu3Yg'),
(17, 'https://www.lefigaro.fr/services/bons-plans/ce-n-est-pas-un-reve-la-carte-gpu-nvidia-geforce-rtx-3060-ventus-3x-est-bel-et-bien-en-enorme-promo-de-52-sur-amazon-20230816', '10K9LuwruHkMk');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
