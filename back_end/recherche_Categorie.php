<?php
include("Connexion_Projet.php");

$requete = $connexion->prepare('SELECT ID_CAT, LIBELLE_CATEG FROM categorie ORDER BY ID_CAT');
$requete->execute();
$lignes = $requete->fetchAll();
?>
