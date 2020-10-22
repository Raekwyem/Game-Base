<?php
function debug($var){
    echo '<pre>';
    print_r($var);
    echo '</pre>';
}


function listerAvis($idJeu){
    $pdo = connexionBDD();

    $resultat = $pdo -> prepare("SELECT Pseudo, Commentaire
    FROM Avis
    WHERE IdJeuVideo = :id
    ");
    $resultat -> bindParam(':id', $idJeu);
    $resultat -> execute();
    $donnees = $resultat->fetchAll(PDO::FETCH_ASSOC);

    return $donnees;

}

//--------------------------------------------------------------
//                 REQUÊTE AJOUT COMMENTAIRE
//--------------------------------------------------------------
    function ajoutCommentaire($pseudo, $commentaire, $IdJeuVideo){
        $pdo = connexionBDD();
        
        $insert = $pdo->prepare('INSERT INTO Avis (Pseudo, Commentaire, IdJeuVideo)
        VALUES (:pseudo, :commentaire, :IdJeuVideo)');
    
        $insert -> bindParam(':pseudo', $pseudo);
        $insert -> bindParam(':commentaire', $commentaire);
        $insert -> bindParam(':IdJeuVideo', $IdJeuVideo);
    
        $insert -> execute();
    
    }