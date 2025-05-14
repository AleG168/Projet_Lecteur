-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  mar. 20 juil. 2021 à 09:52
-- Version du serveur :  8.0.18
-- Version de PHP :  7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




DROP TABLE IF EXISTS `internaute`;
CREATE TABLE IF NOT EXISTS `internaute` (
  `ID_UT` int(11) NOT NULL AUTO_INCREMENT,
  `COURRIEL_UT` varchar(50) NOT NULL,
  `MDP_UT` varchar(100) NOT NULL,
  `STATUS_UT` char(1) NOT NULL DEFAULT 'C' ,
  PRIMARY KEY (`ID_UT`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `internaute` (`COURRIEL_UT`, `MDP_UT`,`STATUS_UT`) VALUES
('alfred.pignon@gmail.com', 'Bulbes', 'a'),
('abignon.ledantec@gmail.com', 'Plantes','c'),
('lguibout.ledantec@gmail.com', 'arbres','c');


DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `ID_CAT` int(11) NOT NULL AUTO_INCREMENT,
  `LIBELLE_CATEG` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_CAT`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`LIBELLE_CATEG`) VALUES
('reseau'),
('developpement'), 
('cybersecurite'),
('jeux video');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS  `article`(
  `ID_ART` int(11) NOT NULL AUTO_INCREMENT,
  `TITRE_ART` varchar(60) NOT NULL,
  `DESCR_ART` varchar(240) NOT NULL,
  `SALAIRE_ART` int(5) DEFAULT 0,
  `DATE_PROP_ART` date  NOT NULL,
  `DATE_DERNIER_TT_ART` date DEFAULT NULL,
  `ID_CONT` int(5) NOT NULL,
  `ID_CAT` int(5) NOT NULL,
  `STATUS_ART` char(1) DEFAULT 'P',
  PRIMARY KEY (`ID_ART`),
  FOREIGN KEY (ID_CONT) REFERENCES internaute(ID_UT),
  FOREIGN KEY (ID_CAT) REFERENCES categorie(ID_CATEG)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `article` (`TITRE_ART`, `DESCR_ART`, `SALAIRE_ART`, `DATE_PROP_ART`, `DATE_DERNIER_TT_ART`,`ID_CONT`,`ID_CAT`,`STATUS_ART`) VALUES
('Professeur Informatique', 'Enseignement des bases de l\'informatique jusqu\'aux notions les plus avancées',  1000, '2010-12-30','2011-01-30',2,4,'R'),
('developpeur fou', 'Il code, codait codera. Sa vie : coder',10000, '2012-10-30','2012-11-03',3,2,'D'),
('devsecopps', 'Tous vos sites du sol au plafond : le contenu , la structure , l\'hébergement et la sécurité. Il fait absolument tout',5000, '2020-10-30','2020-09-30',3,3,'A'),
('Referenceur', 'Sans son intervention, pas de visites sur le site et les ventes stagnent', 2000, '2020-09-30','2021-09-29',3,2,'R'),
('Directeur si', 'Cheef between the chief ! Au firmament de l\'organigramme. Après des années d\'expériences, une somme colossale de projets, des études de dinguers, et le massacre de tous ses concurrents. Il s\'est taillé la part du lion', 20000, '2020-09-09','2021-09-29',3,4,'A'),
('Data analyst', 'il fait parler les chiffres. Le poètes du tableau de bord,le chercheur de corrélation à tout crin', 30000, '2020-07-31','2021-09-29',2,1,'R'),
('développeur android', 'sans lui pas d\'appli google sur vos bijoux de petits mobiles ', 10000, '2020-06-06','2021-09-29',2,2,'A');

