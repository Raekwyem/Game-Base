<?php

function connexionBDD(){
        $pdo = new PDO('mysql:host=localhost;dbname=GameBase',
        'root',
        'root', //sous xampp: ''
        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING, //option pour afficher les erreurs SQL dans le navigateur
                PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8' //jeu de caractères des échanges avec la BDD
        )
    );
    return $pdo;
}