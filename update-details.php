<?php include "backend/restriction.php"; ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update</title>
</head>

<body>
    <section class="content">
        <div class="main">


            <?php include_once "side-1.php"; ?>
            <div class="side-2" style="overflow-y:scroll">
                <div class="app-reg ">
                    <div class="upper-tab">
                    <p>Update Detailes</p>
                    </div>
                    <?php
                    if (isset($_GET['error'])) {
                        echo "<p class='error_display'>" . $_GET['error'] . "</p>";
                    } ?>
                    <div class="input-table">

                        <?php include "backend/db.php";

                        $apprentice_no = "";

                        if (isset($_GET['apprentice_no'])) {

                            $apprentice_no = $_GET['apprentice_no'];
                        }

                        $sql = "SELECT * from apprentice WHERE apprentice_no = '{$apprentice_no}'";
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
                                    <form action="backend/update-details-save.php?apprentice_id=<?php echo $apprentice_no; ?>" method="POST">
                                        <input type="text" name="sn" value="<?php echo $row['sn']; ?>" hidden>
                                        <tbody>
                                            <tr>
                                                <td>Enrollment No</td>
                                                <td><input type="text" name="enrollment_no" value="<?php echo $row['enrollment_no']; ?>" ></td>
                                            </tr>
                                            <tr>
                                                <td>Apprentice No</td>
                                                <td><input type="text" name="apprentice_no" value="<?php echo $row['apprentice_no']; ?>"></td>
                                            </tr>
                                            <tr>
                                                <td>Name</td>
                                                <td><input type="text" name="name" value="<?php echo $row['name']; ?>"></td>
                                            </tr>
                                            <tr>
                                                <td>Father Name</td>
                                                <td><input type="text" name="father_name" value="<?php echo $row['father_name']; ?>"></td>
                                            </tr>
                                            <tr>
                                                <td>Date of Birth</td>
                                                <td><input type="date" name="dob" value="<?php echo $row['dob']; ?>"></td>
                                            </tr>
                                            <tr>
                                                <td>Address</td>
                                                <td><input type="text" name="address" value="<?php echo $row['address']; ?>"></td>
                                            </tr>
                                            <tr>
                                                <td>Trade</td>
                                                <td><input type="text" name="trade" value="<?php echo $row['trade']; ?>"></td>
                                            </tr>
                                            <tr>
                                                <td>Department</td>
                                                <td><input type="text" name="department" value="<?php echo $row['department']; ?>"></td>
                                            </tr>
                                            <tr>
                                                <td>Mobile No.</td>
                                                <td><input type="text" name="mobile" value="<?php echo $row['mobile']; ?>"></td>
                                            </tr>
                                            <tr>
                                                <td>Start From</td>
                                                <td><input type="date" name="from" value="<?php echo $row['start_from']; ?>"></td>
                                            </tr>
                                            <tr>
                                                <td>Completion On</td>
                                                <td><input type="date" name="to" value="<?php echo $row['completion_on']; ?>"></td>
                                            </tr>
                                            <tr>
                                                <td>Qualification</td>
                                                <td><select name="qualification" id="qualification">
                                                        <?php
                                                        $sql2 = "SELECT * from qualifications";
                                                        $result2 = mysqli_query($conn, $sql2);
                                                        if (mysqli_num_rows($result2) > 0) {
                                                            while ($row2 = mysqli_fetch_assoc($result2)) {
                                                                if ($row['qualification'] == $row2['q_id']) {
                                                                    $selected = "selected";
                                                                } else {
                                                                    $selected = "";
                                                                }
                                                                echo "<option {$selected} value={$row2['q_id']}>{$row2['qualification']}</option>";
                                                            }
                                                        }
                                                        ?>
                                                    </select></td>
                                            </tr>
                                            <tr>
                                                <td>Punch ID </td>
                                                <td><input type="text" name="punch_id" value="<?php echo $row['punch_id']; ?>"></td>
                                            </tr>
                                            <tr>
                                                <td>Status </td>
                                                <td>
                                                    <select name="status" id="status">
                                                        <?php
                                                        $sql1 = "SELECT * from apprentice_status";
                                                        $result1 = mysqli_query($conn, $sql1);
                                                        if (mysqli_num_rows($result1) > 0) {
                                                            while ($row1 = mysqli_fetch_assoc($result1)) {
                                                                if ($row['status'] == $row1['status_id']) {
                                                                    $selected = "selected";
                                                                } else {
                                                                    $selected = "";
                                                                }
                                                                echo "<option {$selected} value={$row1['status_id']}>{$row1['status']}</option>";
                                                            }
                                                        }
                                                        ?>
                                                    </select>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <input type="submit" name="update" value="Update" class="btn">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </form>
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