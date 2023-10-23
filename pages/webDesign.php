<!-- PARTIE WEB DESIGN -->
<div class="projects wrapper">
    <h2 class="title-h2">Web Design</h2>
    <div class="projects-all-block wrapper">
        <div class="part-right">

            <?php
            $req = $bdd->query("SELECT * FROM `projects` ORDER BY id ASC LIMIT 0,3");

            while ($don = $req->fetch()) {
                echo '<a class="project-image" href="index.php?action=webDesign' . $don['name'] . ' ">';
                echo '<div class="link-other-page section">';
                echo '<p class="link-other-page-text">Découvrez...</p>';
                echo '</div>';
                echo '<img class="img-responsive project-image-enfant" src="assets/projects/' . $don['cover'] . '" alt="' . $don['name'] . '">';
                echo '</a>';
            }
            ?>
        </div>

        <div class="part-left section">
            <?php

            $reqbdd = $bdd->query("SELECT * FROM projects ORDER BY id ASC LIMIT 0,3");

            while ($donbdd = $reqbdd->fetch()) {
                echo '<a href="#" data-project-name="' . $donbdd['id'] . '">';
                echo '<h4 class="title-h4">' . $donbdd['name'] . '</h4>';
                echo '</a>';
            }

            ?>
        </div>
    </div>
</div>
</body>

</html>