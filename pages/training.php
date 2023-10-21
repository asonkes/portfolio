<!-- PARTIE TRAINING -->
<div class="projects">
    <h2 class="title-h2">Training</h2>
    <div class="projects-all-block wrapper">
        <div class="part-right">

            <?php
            $req = $bdd->query("SELECT * FROM `projects` WHERE name='50 Nuances de Grey'");

            while ($don = $req->fetch()) {
                echo '<a href = "#">';
                echo '<div class="link-other-page">';
                echo '<p class="link-other-page-text">Découvrez...</p>';
                echo '</div>';
                echo '<img class="img-responsive project-image" src="assets/projects/' . $don['cover'] . '" alt="' . $don['name'] . '">';
                echo '</a>';
            }
            ?>

        </div>
        <div class="part-left">

            <?php
            $reqbdd = $bdd->query("SELECT * FROM projects WHERE name='50 Nuances de Grey'");
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