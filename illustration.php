<?php 
    require "connexion.php";
    $mycategories = ["Photoshop","Illustrator","Indesign"];

    if(isset($_GET['categorie']))
    {
        if(in_array($_GET['categorie'],$mycategories))
        {
           $choice = htmlspecialchars($_GET['categorie']);
        }else{
            $choice = "all";
        }
    }else{
        $choice = "all";
    }
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
    <div class="slide" id="photoshop">
        <nav>
            <div id="logo"><img src="home/logo" alt="logo"></div>
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#aboutme">About Me</a></li>
                <li><a href="#skills">Skills</a></li>
                <li><a href="#works">Works</a></li>
                <li><a href="#contact" id="acontact">Contact</a></li>
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
                <?php
                    echo "<h1>$choice</h1>";
                ?>
                <hr>
            </div>
        </div>
        <div class="contentworks2">
            <div class="contentworks">
                <div class="pc">
                    <div class="ecran">
                        <div class="pcimg" id="pcimg6"></div>
                    </div>
                    <div class="support"></div>
                    <div class="pied"></div>
                    <div class="btnpc2">
                        <div class="btnpc"><a href="#">Pictures</a></div>
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