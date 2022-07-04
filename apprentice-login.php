
<div class="login-container">

            <h1>Apprenice Login</h1>
            <?php
if(isset($_POST['login'])) {
    if($_POST['punch_id'] != "" && $_POST['password'] != ""){
    include "backend/db.php";
    $punch_id = mysqli_escape_string($conn, $_POST['punch_id']);
    $password = $_POST['password'];
    $errors = [];
    
    $sql = "SELECT apprentice_no,name, punch_id, role FROM apprentice WHERE punch_id = '{$punch_id}' AND password = '{$password}'";

    $query= mysqli_query($conn, $sql) or die("query failed");

    if(mysqli_num_rows($query) > 0) {
        session_start();
        while($result = mysqli_fetch_assoc($query)){
            $_SESSION['apprentice_no'] = $result['apprentice_no'];
            $_SESSION['name'] = $result['name'];
            $_SESSION['punch_id'] = $result['punch_id'];
            $_SESSION['lname'] = $result['lname'];
            $_SESSION['role'] = $result['role'];

        }
        header('location:apprentice-home.php');
        
    }
    else {
        echo "<p style='text-align:center;background-color:rgb(255, 148, 148); color:rgb(80, 0, 0);'>Wrong id or password</p>";
    }
}
    else {
        echo "<p style='text-align:center;background-color:rgb(255, 148, 148); color:rgb(80, 0, 0);'>Both fields are required</p>";
    }

}
?>
            <form action="<?php $_SERVER['PHP_SELF']; ?>" method="POST" class="form">
            
                <input type="text" class="id" placeholder="Punch Id" name="punch_id">
                <input type="password" id="password" placeholder="Password" name="password">
                <input type="submit" value="login" name="login">
                <p class="app-pass-note">Your initial password is your date of birth in DD.MM.YYYY format</p>
            </form>
        </div>