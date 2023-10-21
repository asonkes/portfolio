<!-- PARTIE SELF-CONCEPTION -->
<div class="projects">
    <h2 class="title-h2">Self-Conception</h2>
    <div class="projects-all-block wrapper">
        <div class="part-right">

            <?php
            $req = $bdd->query("SELECT * FROM `projects` WHERE name='LollyPop'");

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
            $reqbdd = $bdd->query("SELECT * FROM projects WHERE name='LollyPop'");
            while ($donbdd = $reqbdd->fetch()) {
                echo '<a href="#" data-project-name="' . $donbdd['cover'] . '">';
                echo '<h4 class="title-h4">' . $donbdd['name'] . '</h4>';
                echo '</a>';
            }
            ?>

        </div>
    </div>
</div>
</body>

</html>