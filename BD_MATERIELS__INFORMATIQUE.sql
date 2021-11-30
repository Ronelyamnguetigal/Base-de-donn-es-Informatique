-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 30 nov. 2021 à 11:14
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `BD_MATERIELS _INFORMATIQUE`
--

-- --------------------------------------------------------

--
-- Structure de la table `Articles`
--

CREATE TABLE `Articles` (
  `id` int(20) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `Etat` varchar(100) NOT NULL,
  `quantites` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Articles`
--

INSERT INTO `Articles` (`id`, `nom`, `Etat`, `quantites`) VALUES
(1, 'Ordinateur', 'Bon Etat', 50),
(2, 'Antivirus', 'Neuf', 100);

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `id` int(20) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `tel` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Client`
--

INSERT INTO `Client` (`id`, `nom`, `tel`) VALUES
(1, 'Ronelyam Nguetigal', 63865969),
(2, 'Mariam Mahamat', 62859492);

-- --------------------------------------------------------

--
-- Structure de la table `Employes`
--

CREATE TABLE `Employes` (
  `id` int(20) NOT NULL,
  `Nom` varchar(150) NOT NULL,
  `Numero` int(20) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Fonction` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Employes`
--

INSERT INTO `Employes` (`id`, `Nom`, `Numero`, `Email`, `Fonction`) VALUES
(1, 'Nassir Mahamat', 63865969, 'Nassir@gmail.com', 'Agent commercial'),
(2, 'Idriss', 900000, 'Idriss@gmail.com', 'Gestionnaire Stock');

-- --------------------------------------------------------

--
-- Structure de la table `Facturation`
--

CREATE TABLE `Facturation` (
  `id` int(20) NOT NULL,
  `libelle` varchar(100) NOT NULL,
  `Client` varchar(100) NOT NULL,
  `Prix_unitaire` int(100) NOT NULL,
  `Prix_total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Facturation`
--

INSERT INTO `Facturation` (`id`, `libelle`, `Client`, `Prix_unitaire`, `Prix_total`) VALUES
(1, 'Ordinateur', 'Ronelyam', 250000, 250000),
(2, 'Souris', 'Abakar', 10000, 10000);

-- --------------------------------------------------------

--
-- Structure de la table `Fournisseurs`
--

CREATE TABLE `Fournisseurs` (
  `id` int(20) NOT NULL,
  `nom` varchar(150) NOT NULL,
  `tel` int(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Date_livraison` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Fournisseurs`
--

INSERT INTO `Fournisseurs` (`id`, `nom`, `tel`, `Email`, `Date_livraison`) VALUES
(1, 'Moussa yaya', 62000000, 'Yaya@gmail.com', '2021-11-01'),
(2, 'Nassir yacoub', 900000, 'Nassir@yahoo.fr', '2021-11-10');

-- --------------------------------------------------------

--
-- Structure de la table `Inventaire`
--

CREATE TABLE `Inventaire` (
  `Id` int(20) NOT NULL,
  `Annee_inventaire` int(100) NOT NULL,
  `Date` date NOT NULL,
  `Articles` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Inventaire`
--

INSERT INTO `Inventaire` (`Id`, `Annee_inventaire`, `Date`, `Articles`) VALUES
(1, 2020, '2020-11-18', 'Ordinateurs'),
(2, 2021, '2021-11-16', 'Souris');

-- --------------------------------------------------------

--
-- Structure de la table `Mode_paiement`
--

CREATE TABLE `Mode_paiement` (
  `id` int(20) NOT NULL,
  `Cheque` int(100) NOT NULL,
  `Espece` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Mode_paiement`
--

INSERT INTO `Mode_paiement` (`id`, `Cheque`, `Espece`) VALUES
(1, 250000, 0),
(2, 0, 10000);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Articles`
--
ALTER TABLE `Articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Employes`
--
ALTER TABLE `Employes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Facturation`
--
ALTER TABLE `Facturation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Fournisseurs`
--
ALTER TABLE `Fournisseurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Inventaire`
--
ALTER TABLE `Inventaire`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Mode_paiement`
--
ALTER TABLE `Mode_paiement`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Articles`
--
ALTER TABLE `Articles`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Client`
--
ALTER TABLE `Client`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Employes`
--
ALTER TABLE `Employes`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Facturation`
--
ALTER TABLE `Facturation`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Fournisseurs`
--
ALTER TABLE `Fournisseurs`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Inventaire`
--
ALTER TABLE `Inventaire`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Mode_paiement`
--
ALTER TABLE `Mode_paiement`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
