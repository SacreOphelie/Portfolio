<?php 
    require "connexion.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Illustration</title>
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
    <div class="slide slideworks">
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
        <div class="contenttitre">
            <div class="btnback2">
                <div class="btnback"><a href="index.php#works">Back</a></div>
            </div>
            <div class="titre">
                <h1>Animation</h1>
                <hr>
            </div>
        </div>
        <div class="contentworks2">
            <div class="contentworks">
            <?php
                $req = $bdd->query("SELECT * FROM animation ORDER BY id ASC");
                while($don = $req->fetch())
                {
                    echo "<div class='pc'>";
                        echo "<div class='ecran'>";
                            echo "<div class='pcimg'>";
                                echo "<img src='images/".$don['fichier']."' class='img' />";
                            echo "</div>";
                        echo "</div>";
                        echo "<div class='support'>";
                        echo "</div>";
                        echo "<div class='pied'>";
                        echo "</div>";
                        echo "<div class='btnpc2'>";
                        echo "<div class='btnpc'>";
                        echo "<a href='showanim.php?id=".$don['id']."' class='btn btn-primary'>".$don['nom']."</a>";
                        echo "</div>";
                        echo "</div>";    
                    echo "</div>";
                }
                $req->closeCursor();
            ?>
            </div>
            <div class="test"></div>
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