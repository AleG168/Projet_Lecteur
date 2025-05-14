<?php
include("back_end/recherche_Categorie.php");
include("back_end/recherche_Article.php");
?>

<div class="header">
    <div class="navbar navbar-expand-lg" >
        <ul class="navbar-nav"> <!--enleve les points de style et aligne a l'horizontale-->
        <h1 id="Domaine">1BTS SIO - <?php $nomCat = $_GET['catégorie']; echo ($nomCat) ?> - <?php $nomArt = $_GET['article']; echo ($nomArt) ?></h1> <!-- pour GET : https://www.w3schools.com/php/php_superglobals_get.asp -->
            <?php foreach ($lignes as $ligne) { ?> 
                <li class="nav-item dropdown" id = "decalage">
                    <a class="btn btn-secondary dropdown-toggle" href="#" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <?php echo $ligne["LIBELLE_CATEG"] ?>
                    </a>
                    <div class="dropdown-menu col-sm-0 card-block" aria-labelledby="dropdownMenuLink"> <!--taille case-->
                        <?php foreach ($colonnes as $colonne) {
                            if ($colonne["ID_CAT"] == $ligne["ID_CAT"]) { ?>
                                <a class="dropdown-item glyphicon glyphicon-user" href="ResuMetier.php?article=<?php echo($colonne['TITRE_ART']); ?>&catégorie=<?php echo($colonne['TITRE_ART']); ?>"> <!-- le ? pour le GET :
                                https://developer.mozilla.org/fr/docs/Learn_web_development/Howto/Web_mechanics/What_is_a_URL-->
                                    <?php echo $colonne['TITRE_ART']; ?>
                                </a>
                        <?php } } ?> <!--fin 2éme boucle créé-->
                    </div>
                </li>
            <?php } ?> <!--fin 1er boucle créé-->

            <div>
                <a class="bouton" href="#">Administrateur</a>
            </div>

            <div>
                <a class="bouton" href="#">Contributeur</a>
            </div>

        </ul>
    </div>
</div>