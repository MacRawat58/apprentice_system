<?php include "backend/db.php"; ?>
<?php include "backend/restriction.php"; ?>
<?php error_reporting(E_ALL ^ E_NOTICE); ?>
<!DOCTYPE html>
<html lang="en">



<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">

    <title>Home</title>
</head>

<body>
<section class="content">
        <div class="main">
            <?php include_once "side-1.php"; ?>
            <div class="side-2" style="overflow-y:scroll">
                <div class="upper-tab">
                    <marquee class="marquee"><h3>Welcome, <?php echo $_SESSION['name']." ". $_SESSION['lname']?></h3></marquee>
                    </div>
            <div class="app-list">
                sdjbfsdfk
            </div>
</div>
</div>
</section>
    <script src="app.js"></script>
</body>

</html>