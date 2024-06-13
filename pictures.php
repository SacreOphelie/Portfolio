<?php 
    require "connexion.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Pictures</title>
</head>
<body>
    <?php
        include("headfoot/header.php");
    ?>
    <div class="contentpicture">
        <h1>Pictures</h1>
        <div class="contentgalerie">
        <?php
                    $req = $bdd->query("SELECT * FROM pictures ORDER BY id ASC");
                    while($don = $req->fetch())
                    {
                        echo "<div>";
                            echo "<img src='images/".$don['picture']."' class='img-fluid' />";
                        
                        echo "</div>";
                    }
                    $req->closeCursor();
                ?>
        </div>
    </div>
    <?php
        include("headfoot/footer2.php");
    ?>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/TextPlugin.min.js"></script>

<script>
    gsap.to(".contentgalerie", {duration: 1,repeat: -1, yoyo:true, border: 'solid 2px  rgb(237, 166, 255)' });
</script>
    

</body>
</html>