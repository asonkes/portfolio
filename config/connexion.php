<?php

/*try {
    $bdd = new PDO('mysql:host=localhost;dbname=ryqj0395_portfolio;charset=utf8', 'ryqj0395_audreySonkes', 'ADT93hpk2020', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    //echo "La connexion à la base de données est réussie";
} catch (Exception $e) {
    die('Erreur' . $e->getMessage());
}*/




try {
    $bdd = new PDO('mysql:host=localhost;dbname=portfolio;charset=utf8', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    //echo "La connexion à la base de données est réussie";
} catch (Exception $e) {
    die('Erreur' . $e->getMessage());
}
