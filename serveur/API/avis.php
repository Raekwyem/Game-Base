<?php
include '../lib/database.php';
include '../models/avis.php';

//debug($_GET);


if(!empty($_POST['Pseudo']) && !empty($_POST['Commentaire']) && isset($_GET['IdJeuVideo'])){

    $pseudo = $_POST['Pseudo'];
    $commentaire = $_POST['Commentaire'];
    $IdJeuVideo = $_GET['IdJeuVideo'];

    ajoutCommentaire($pseudo, $commentaire, $IdJeuVideo);

    echo json_encode('ok');
}else{
    if(array_key_exists('Id',$_GET) == true){
        $avis = listerAvis($_GET['Id']);

        echo json_encode($avis);
    }
}