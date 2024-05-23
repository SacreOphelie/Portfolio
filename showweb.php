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
    $req = $bdd->prepare("SELECT * FROM web WHERE id=?");
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
<div class="contentmenutab">
        <div id="menutab">
            <ul>
                <li><a href="index.php#home">Home</a></li>
                <li><a href="index.php#aboutme">About Me</a></li>
                <li><a href="index.php#skills">Skills</a></li>
                <li><a href="index.php#works">Works</a></li>
                <li><a href="index.php#contact" id="acontact">Contact</a></li>
            </ul>
        </div>
    </div>
    <nav>
        <div id="logo"><img src="home/logo" alt="logo"></div>
        <ul>
            <li><a href="index.php#home">Home</a></li>
            <li><a href="index.php#aboutme">About Me</a></li>
            <li><a href="index.php#skills">Skills</a></li>
            <li><a href="index.php#works">Works</a></li>
            <li><a href="index.php#contact" id="acontact">Contact</a></li>
        </ul>
        <div id="menuburger">
            <div id="menu">
                <div class="ligne" id="l1"></div>
                <div class="ligne" id="l2"></div>
                <div class="ligne" id="l3"></div>
            </div>
        </div>
    </nav>
    <div class="slide slideshow">
        <div class="contentshow">
            <div class="contentshow2">
                <h1><?= $don['nom'] ?></h1>
                <div class="contentshowimg">
                    <img src="images/<?= $don['photo'] ?>" alt="image de <?= $don['nom'] ?>">
                </div>
            </div>
            <div class="contentshow3">
                <div class="date">Date : <div><?= $don['date'] ?></div></div>
                <div class="description">Description : <div><?= nl2br($don['description']) ?></div></div>
                <div class="url">Lien du site : <div><a href="<?= nl2br($don['url']) ?>"><?= nl2br($don['url']) ?></a></div></div>
                <div class="url">Lien Figma : <div><a href="<?= nl2br($don['figma']) ?>"><?= nl2br($don['figma']) ?></a></div></div>
                <div class="btnback2">
                    <a href="animation.php" class="btnback">Back</a>
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