<?php include "backend/db.php"; ?>
<?php include "backend/restriction.php"; ?>
<?php error_reporting(E_ALL ^ E_NOTICE); ?>
<!DOCTYPE html>
<?php

// if(isset($_POST['apprentice_no']) && isset($_POST['name']) && isset($_POST['trade']) && isset($_POST['department']))
$apprentice_no = $_POST['apprentice_no'];
$name = $_POST['name'];
$trade = $_POST['trade'];
$department = $_POST['department'];
$mobile = $_POST['mobile'];
$from = $_POST['from'];
$to = $_POST['to'];
$qualification = $_POST['qualification'];
$punch_id = $_POST['punch_id'];

?>



<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">

    <title>Home</title>

    <style>
        tr:hover {
            background-color: transparent;
        }

        td {
            font-size: 15px;
            padding: 10px;
        }
    </style>
</head>

<body>
    <section class="content">
        <div class="main">
            <?php include_once "side-1.php"; ?>
            <div class="side-2" style="overflow-y:scroll">
                <div class="app-reg ">
                    <div class="upper-tab">
                        <p>Apprentice Registration</p>
                    </div>
                    <?php
                    if (isset($_GET['error'])) {
                        echo "<p class='error_display'>" . $_GET['error'] . "</p>";
                    } ?>
                    <div class="input-table home-form">
                        <form action="backend/registration.php" method="POST">
                            <table>
                                <tr>
                                    <td>Enrollment No</td>
                                    <td><input type="text" name="enrollment_no"></td>

                                </tr>
                                <tr>
                                    <td>Apprentice No</td>
                                    <td><input type="text" name="apprentice_no"></td>
                                </tr>
                                <tr>
                                    <td>Name</td>
                                    <td><input type="text" name="name"></td>
                                </tr>
                                <tr>
                                    <td>Father Name</td>
                                    <td><input type="text" name="father_name"></td>
                                </tr>
                                <tr>
                                    <td>Date of birth</td>
                                    <td><input type="date" name="dob"></td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td><input type="text" name="address"></td>
                                </tr>

                                <td>Trade</td>
                                <td><input type="text" name="trade"></td>
                                </tr>
                                <tr>
                                    <td>Department</td>
                                    <td><input type="text" name="department"></td>
                                </tr>
                                <tr>
                                    <td>Mobile No.</td>
                                    <td><input type="text" name="mobile"></td>
                                </tr>
                                <tr>
                                    <td>Start From</td>
                                    <td><input type="date" name="start_from"></td>
                                </tr>
                                <tr>
                                    <td>Completion On</td>
                                    <td><input type="date" name="completion_on"></td>
                                </tr>
                                <tr>
                                    <td>Qualification</td>
                                    <td> <select name="qualification" id="qualification">
                                            <option disabled selected>Select</option>
                                            <option value="B.tech">B.tech</option>
                                            <option value="Diploma">Diploma</option>
                                            <option value="I.T.I.">I.T.I.</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Punch ID </td>
                                    <td><input type="text" name="punch_id"></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><input type="submit" name="register" value="Register"></td>
                                </tr>

                                </tbody>
                            </table>
                        </form>


                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    <script src="app.js"></script>
</body>

</html>