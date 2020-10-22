<?php
include '../lib/database.php';
include '../models/jeu_video.php';

if(array_key_exists('Id',$_GET) == true){
    $jeu = ficheJeux($_GET['Id']);
}
else{
    $jeu = listerJeux();
}
echo json_encode($jeu);