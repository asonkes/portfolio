<!-- PARTIE WEB DESIGN PROJECT-->
<div id="webDesignProject">
    <h2 class="title-h2">Villa Santorini Model</h2>
    <div class="webDesignProject-all-block wrapper">

        <?php

        $req = $bdd->query("SELECT * FROM `projects` WHERE name LIKE 'V%'");

        while ($don = $req->fetch()) {
            echo '<p class="webDesignProject-text"><span>Nom du Projet:</span> ' . $don['name'] . '</p>';
            echo '<p class="webDesignProject-text"><span>Date de Réalisation:</span> ' . $don['date'] . '</p>';
            echo '<p class="webDesignProject-text"><span>Outil utilisé:</span> ' .  $don['code'] . '</p>';
            echo '<p class="webDesignProject-text2">' . $don['description'] . '</p>';
        }
        ?>

        <?php
        $req = $bdd->query("SELECT * FROM `villasantorini`");

        $index = 0; // Initialisez un compteur d'indice

        while ($don = $req->fetch()) {
            if ($index === 0) {
                // Pour le premier élément, n'ajoutez pas l'attribut data-effect
                echo '<div class="image-position">';
            } else {
                // Pour les autres éléments, attribuez l'attribut data-effect en fonction de la parité
                $dataEffect = ($index % 2 === 0) ? 'fade-in-right' : 'fade-in-left';
                echo '<div class="image-position" data-effect="' . $dataEffect . '">';
            }

            echo '<img class="img-responsive project-image" src="assets/villaSantorini/' . $don['image'] . '" alt="' . $don['name'] . '">';
            echo '</div>';

            $index++; // Incrémentez l'indice à chaque itération
        }
        ?>

    </div>
</div>