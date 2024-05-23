<?php
    // vérifier si j'ai un id ou non
    if(isset($_GET['id']))
    {
        // protection
        $id = htmlspecialchars($_GET['id']);
    }else{
        header("LOCATION:404.php");
    }

    // vérifier que l'id existe bien dans ma bdd 
    require "connexion.php";
    $req = $bdd->prepare("SELECT * FROM illustration WHERE id=?");
    $req->execute([$id]);
    $don = $req->fetch();
    $req->closeCursor();
    if(!$don)
    {
        header("LOCATION:404.php");
    }
    
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>ShowWeb</title>
</head>
<body>
<?php
    include("headfoot/header.php");
?>
    <div class="slide slideshow">
        <div class="contentshow">
            <div class="contentshow2">
                <h1><?= $don['nom'] ?></h1>
                <div class="contentshowimg">
                    <img src="images/<?= $don['image'] ?>" alt="image de <?= $don['nom'] ?>">
                </div>
            </div>
            <div class="contentshow3">
                <div class="date">Date : <div><?= $don['date'] ?></div></div>
                <div class="description">Description : <div><?= nl2br($don['description']) ?></div></div>
                <div class="galerie">
                    Galerie :
                    <div class="contentgalerie">
                        <?php 
                            $gal = $bdd->prepare("SELECT * FROM images WHERE id_illustration=?");
                            $gal->execute([$id]);
                            // tester si j'ai des images ou non
                            $count = $gal->rowCount();
                            if($count > 0)
                            {
                                while($donGal = $gal->fetch())
                                {
                                    echo "<div class='imagegal'>";  
                                        echo "<img src='images/".$donGal['fichier']."' alt='image de galerie ".$don['nom']."' class=''>";
                                    echo "</div>";
                                }
                            }else{
                                echo "<p>Aucune images associées</p>";
                            }
                            $gal->closeCursor();

                        ?>
                    </div>
                </div>
                <div class="btnback2">
                    <a href='illustration.php?categorie=<?= $don['categorie'] ?>' class="btnback">Back</a>
                </div>
            </div>
        </div>
    </div>


<script>

    const menuburger = document.querySelector('#menuburger')
    const menutab = document.querySelector('#menutab')


    menuburger.addEventListener('click',()=>{
        menuburger.classList.toggle('active-menu')
        menutab.classList.toggle('open')
    })



</script>
    
</body>
</html>