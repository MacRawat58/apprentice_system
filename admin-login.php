<div class="login-container">
         
            <h1>Admin Login</h1>
            <?php
if(isset($_POST['login'])) {
    if($_POST['username'] != "" || $_POST['password'] != ""){
    include "backend/db.php";
    $username = mysqli_escape_string($conn, $_POST['username']);
    $password = md5($_POST['password']);
    $errors = [];
    
    $sql = "SELECT username,name,lname, user_id, role FROM users WHERE username = '{$username}' AND password = '{$password}'";

    $query= mysqli_query($conn, $sql) or die("query failed");

    if(mysqli_num_rows($query) > 0) {
        session_start();
        while($result = mysqli_fetch_assoc($query)){
            $_SESSION['user_id'] = $result['user_id'];
            $_SESSION['username'] = $result['username'];
            $_SESSION['name'] = $result['name'];
            $_SESSION['lname'] = $result['lname'];
            $_SESSION['role'] = $result['role'];

        }


      
        header('location:home.php');
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
            
                <input type="text" class="id" placeholder="Username" name="username">
                <input type="password" id="password" placeholder="Password" name="password">
                <input type="submit" value="login" name="login">
            </form>
        </div>