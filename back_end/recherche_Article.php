<?php
include("Connexion_Projet.php");

$requete = $connexion->prepare('SELECT ID_CAT, TITRE_ART FROM article ORDER BY ID_ART');
$requete->execute();
$colonnes = $requete->fetchAll();
?>
