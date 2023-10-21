<?php

try {
    $bdd = new PDO('mysql:host=localhost;dbname=portfolio;charset=utf8', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    //echo "La connexion à la base de données est réussie";
} catch (Exception $e) {
    die('Erreur' . $e->getMessage());
}
