<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styles.css">

</head>

<body>
    <div class="side-1">
        <img class="belpic" src="images/bel.png" alt="">
        <div class="wlcm-msg">
            <p>WELCOME</p>
            <span style="text-transform:uppercase;font-size:25px;"><?php echo $_SESSION['name']." ".$_SESSION['lname'] ?> </span>
            <div class="logout-btn">
                <a class="btn" href="backend/logout.php">Logout</a>
            </div>
        </div>
        <div class="menu">
            <?php include "backend/db.php";
            session_start();

           
            if($_SESSION['role'] == 0){
                echo "<a href='home.php' id='App-reg'>Apprentice Registration</a>";
                echo "<a href='app-list.php' id='App-list'>Apprentice List</a>";
            }
            if($_SESSION['role'] == 2) {
                echo "<a href='personal-details.php' id='app-details'>Your Details</a>";
            }
            ?>
            
            <a href="daily-attendance.php" id="D-att">Daily Attendance Record</a>
            <a href="individual-attendance.php" id="Ind-Att">Individual Attendance Record</a>
            <a href="payroll-data.php" id="Payroll">Payroll Record</a>
        </div>
    </div>
</body>

</html>