<?php include 'db.php';
session_start();
if ((!isset($_SESSION['username'])) && (!isset($_SESSION['punch_id']))) {
    header('location:../index.php');
}
session_abort();
?>