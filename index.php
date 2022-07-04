<?php error_reporting(E_ALL ^ E_NOTICE); ?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apprentice System</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <nav id="navbar">
            <img src="images/bel.png" alt="bel-logo" class="logo">
            <h1 class="logo-text">Apprentice Payroll <br> Management System</h1>
        </nav>
    </header>
    <section class="home">
        <div class="login-type">
            <a href="index.php?login-type=apprentice">Apprentice</a>
            <a href="index.php?login-type=admin">Admin</a>
             
        </div> 
        <?php 
        if(isset($_GET['login-type'])) {
           $login_type = $_GET['login-type'];
            if($login_type == "admin") {
                include "admin-login.php";
            }

            else if($login_type == "apprentice") {
                include "apprentice-login.php";
            }}
            else {
                include "apprentice-login.php";

            }
            ?>
    </section>


</body>
</html>