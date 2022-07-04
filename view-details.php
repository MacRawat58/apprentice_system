<?php include "backend/restriction.php"; ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detailes</title>
    <link rel="stylesheet" href="styles.css">


</head>

<body>
    <section class="content">
        <div class="main">


            <?php include_once "side-1.php"; ?>
            <div class="side-2" style="overflow-y:scroll">
                <div class="app-reg ">
                    <div class="upper-tab">
                    </div>
                    <div class="input-table">

                        <?php include "backend/db.php";

                        $apprentice_no = $_GET['apprentice_no'];

                        $sql = "SELECT * from apprentice WHERE apprentice_no = '$apprentice_no'";
                        $result = mysqli_query($conn, $sql) or die("Query failed");
                        if (mysqli_num_rows($result) > 0) {

                            while ($row = mysqli_fetch_assoc($result)) {

                        ?>
                                <table width="100%" border="1" cellpadding="1" cellspacing="0" style="text-align:center; ">
                                    <thead>
                                        <tr>
                                            <th colspan="2">Detailes of <?php echo $row['name']; ?> </th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <tr>
                                            <td>Enrollment No</td>
                                            <td><?php echo $row['enrollment_no']; ?></td>

                                        </tr>
                                        <tr>
                                            <td>Apprentice No</td>
                                            <td><?php echo $row['apprentice_no']; ?></td>
                                        </tr>
                                        <tr>
                                            <td>Name</td>
                                            <td><?php echo $row['name']; ?></td>
                                        </tr>
                                        <tr>
                                            <td>Father Name</td>
                                            <td><?php echo $row['father_name']; ?></td>
                                        </tr>
                                        <tr>
                                            <td>Date of birth</td>
                                            <td><?php echo $row['dob']; ?></td>
                                        </tr>
                                        <tr>
                                            <td>Address</td>
                                            <td><?php echo $row['address']; ?></td>
                                        </tr>

                                        <td>Trade</td>
                                        <td><?php echo $row['trade']; ?></td>
                                        </tr>
                                        <tr>
                                            <td>Department</td>
                                            <td><?php echo $row['department']; ?></td>
                                        </tr>
                                        <tr>
                                            <td>Mobile No.</td>
                                            <td><?php echo $row['mobile']; ?></td>
                                        </tr>
                                        <tr>
                                            <td>Start From</td>
                                            <td><?php echo $row['start_from']; ?></td>
                                        </tr>
                                        <tr>
                                            <td>Completion On</td>
                                            <td><?php echo $row['completion_on']; ?></td>
                                        </tr>
                                        <tr>
                                            <td>Qualification</td>
                                            <td><?php switch ($row['qualification']) {
                                                    case 1:
                                                        echo "B.tech";
                                                        break;
                                                    case 2:
                                                        echo "Diploma";
                                                        break;
                                                    case 3:
                                                        echo "I.T.I";
                                                        break;
                                                } ?></td>
                                        </tr>
                                        <tr>
                                            <td>Punch ID </td>
                                            <td><?php echo $row['punch_id']; ?></td>
                                        </tr>
                                        <tr>
                                            <td>Status </td>
                                            <td>
                                                <?php switch ($row['status']) {
                                                    case 0:
                                                        echo "Inactive";
                                                        break;
                                                    case 1:
                                                        echo "active";
                                                        break;
                                                }
                                                ?>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:left;"><a href='app-list.php' style='font-size:12px;background:rgb(167, 0, 28);color:#fff'>Go Back</a></td>
                                            <?php
                                            echo "<td><a href='update-details.php?apprentice_no={$row['apprentice_no']}' style='font-size:12px;background:rgb(0, 140, 255);color:#fff'>Update</a></td>"; ?>
                                        </tr>
                                    </tbody>
                                </table>

                        <?php
                            }
                        }
                        ?>

                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
</body>

</html>