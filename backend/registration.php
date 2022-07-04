<?php include "db.php";
include "restriction.php";

if (isset($_POST['register'])) {
    if (!empty($_POST['enrollment_no']) && !empty($_POST['apprentice_no']) && !empty($_POST['name']) && !empty($_POST['father_name']) && !empty($_POST['dob']) && !empty($_POST['address']) && !empty($_POST['trade']) && !empty($_POST['department']) && !empty($_POST['mobile']) && !empty($_POST['start_from']) && !empty($_POST['completion_on']) && !empty($_POST['qualification']) && !empty($_POST['punch_id'])) {
        $enrollment_no = $_POST['enrollment_no'];
        $apprentice_no = $_POST['apprentice_no'];
        $name = $_POST['name'];
        $father_name = $_POST['father_name'];
        $dob = $_POST['dob'];
        $address = $_POST['address'];
        $trade = $_POST['trade'];
        $department = $_POST['department'];
        $mobile = $_POST['mobile'];
        $from = $_POST['start_from'];
        $to = $_POST['completion_on'];
        if ($_POST['qualification'] == "B.tech") {
            $qualification = 1;
        } else if ($_POST['qualification'] == "Diploma") {
            $qualification = 2;
        } else if ($_POST['qualification'] == "I.T.I.") {
            $qualification = 3;
        }
        $punch_id = $_POST['punch_id'];

        $sql = "SELECT * from apprentice WHERE apprentice_no = '$apprentice_no' OR enrollment_no = '$enrollment_no'";
        $check = mysqli_query($conn, $sql) or die("Query failed");
        if (mysqli_num_rows($check) > 0) {
            header("location: ../home.php?error=Apprentice Number OR Enrollment Number already exists in the database");
        } else {

            $insert_query = "insert into apprentice (enrollment_no, apprentice_no, name, father_name, dob, address, trade, department, mobile, start_from, completion_on, qualification, punch_id, status) values('{$enrollment_no}','{$apprentice_no}','{$name}','{$father_name}','{$dob}','{$address}','{$trade}','{$department}','{$mobile}','{$from}','{$to}',{$qualification},'{$punch_id}',1)";
            $result = mysqli_query($conn, $insert_query) or die($insert_query);
            if ($result) {
                header("location: ../view-details.php?apprentice_no=" . $apprentice_no);
            } else {
                header("location: ../home.php?error=Registation Failed.Please try again or contact Admin.");
            }
        }
    } else {
        header("location: ../home.php?error=All Fields Are Required");
    }
}
