<?php
function debug($var){
    echo '<pre>';
    print_r($var);
    echo '</pre>';
}

    //--------------------------------------------------------------
    //                 REQUÊTE LISTE JEUX
    //--------------------------------------------------------------
function listerJeux(){
    $pdo = connexionBDD();

    $resultat = $pdo->query("SELECT JeuVideo.id AS id, JeuVideo.Nom AS JeuVideo, Description, DateSortie, Genre.Nom AS Genre, Note, Prix, Editeur.Nom AS Editeur, UrlPochette
    FROM JeuVideo
    INNER JOIN Genre
    ON JeuVideo.IdGenre = Genre.Id
    INNER JOIN Editeur
    ON JeuVideo.IdEditeur = Editeur.Id
    ");
    $donnees = $resultat->fetchAll(PDO::FETCH_ASSOC);

    for($index = 0; $index < count($donnees) ; $index++){
        $donnees[$index]['UrlPochette'] = 'serveur/www/img/' . $donnees[$index]['UrlPochette'];

        // $donnees[$index]['DateSortie'] = date_format($donnees[$index]['DateSortie'], 'd/m/Y');
    }
    

    //debug($donnees);
    return $donnees;
}

    //--------------------------------------------------------------
    //                 REQUÊTE FICHE JEUX
    //--------------------------------------------------------------
function ficheJeux($id){
    $pdo = connexionBDD();

    $resultat = $pdo->prepare("SELECT JeuVideo.Nom AS JeuVideo, Description, DateSortie, Genre.Nom AS Genre, Note, Prix, Editeur.Nom AS Editeur, UrlPochette
    FROM JeuVideo
    INNER JOIN Genre
    ON JeuVideo.IdGenre = Genre.Id
    INNER JOIN Editeur
    ON JeuVideo.IdEditeur = Editeur.Id
    WHERE JeuVideo.Id = :id
    ");

    $resultat -> bindParam(':id', $id);
    $resultat -> execute();

    $fiche = $resultat->fetch(PDO::FETCH_ASSOC);

    $fiche['UrlPochette'] = '../serveur/www/img/' . $fiche['UrlPochette'];
    //debug($donnees);
    return $fiche;
}