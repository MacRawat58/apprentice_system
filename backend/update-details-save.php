<?php include "restriction.php";
include "db.php";

$apprentice_id = $_GET['apprentice_id'];
if (isset($_POST['update'])) {
    if (!empty($_POST['enrollment_no']) && !empty($_POST['apprentice_no']) && !empty($_POST['name']) && !empty($_POST['father_name']) && !empty($_POST['dob']) && !empty($_POST['address']) && !empty($_POST['trade']) && !empty($_POST['department']) && !empty($_POST['mobile']) && !empty($_POST['start_from']) && 
    !empty($_POST['completion_on']) && !empty($_POST['qualification']) && !empty($_POST['punch_id'])) {
    $sn = $_POST['sn'];
    $enrollment_no = $_POST['enrollment_no'];
    $apprentice_no = $_POST['apprentice_no'];
    $name = $_POST['name'];
    $father_name = $_POST['father_name'];
    $dob = $_POST['dob'];
    $address = $_POST['address'];
    $trade = $_POST['trade'];
    $department = $_POST['department'];
    $mobile = $_POST['mobile']; 
    $from = $_POST['from'];
    $to = $_POST['to'];
    $qualification = $_POST['qualification'];
    $punch_id = $_POST['punch_id'];
    $status = $_POST['status'];
    $sql = "UPDATE apprentice SET apprentice_no='{$apprentice_no}', name='{$name}',father_name='{$father_name}',dob='{$dob}',address='{$address}',trade='{$trade}',department='{$department}',mobile='{$mobile}', start_from='{$from}',completion_on='{$to}',qualification={$qualification},punch_id='{$punch_id}',status={$status} WHERE apprentice_no = '{$apprentice_id}'";
    $result = mysqli_query($conn, $sql) or die("query failed");
    if ($result) {
        if(isset($apprentice_no)) {
        header("location: ../view-details.php?apprentice_no=" . $apprentice_no);
        }
        else {
        header("location: ../view-details.php?apprentice_no=" . $apprentice_id);

        }
    }
} else {
    header("location: ../update-details.php?error=Update Failed.Please fill all the details&apprentice_no=" . $apprentice_id);
}
}
