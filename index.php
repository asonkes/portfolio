<?php
//connexion bdd
require "config/connexion.php";

// Définir le menu
$menu = [
    "home" => "home.php",
    "webDesign" => "webDesign.php",
    "training" => "training.php",
    "self-conception" => "self-conception.php",
    "webDesignJacadi" => "webDesignJacadi.php",
    "webDesignLollyPop" => "webDesignLollyPop.php",
    "webDesignVillaSantorini" => "webDesignVillaSantorini.php"
];

//partial header
include('partials/header.php');
?>

<body>
    <?php
    // nav
    include('partials/nav.php');
    ?>

    <main>
        <?php
        // Vérifier si une action est spécifiée dans l'URL
        if (isset($_GET['action'])) {
            if (array_key_exists($_GET['action'], $menu)) {
                $myMenu = $menu[$_GET['action']];
                include("pages/" . $myMenu);
            } else {
                header("LOCATION:404.php");
            }
        } else {
            // Si aucune action n'est spécifiée, utilisez la page par défaut (ici, "home.php")
            $myMenu = $menu['home'];
            include("pages/" . $myMenu);
        }

        ?>
    </main>

    <?php
    //partials footer
    include('partials/footer.php');
    ?>
</body>