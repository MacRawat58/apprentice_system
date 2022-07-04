<!DOCTYPE html>
<?php
include "backend/db.php";
?>
<?php include "backend/restriction.php"; ?>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apprentice List</title>
    <link rel="stylesheet" href="styles.css">

</head>

<body>
    <section class="content">
        <div class="main">
            <?php include_once "side-1.php"; ?>

            <div class="side-2">
                <div class="app-list ">
                    <div class="upper-tab">
                        <p>Apprentice List</p>
                    </div>
                    <div class="app-list-menu">
                        <div>
                            <form action="" method="POST">
                                <select name="Qualification" id="qualification">
                                    <option value="All" selected>All</option>
                                    <option value="B.tech">B.tech</option>
                                    <option value="Diploma">Diploma</option>
                                    <option value="ITI">ITI</option>
                                </select>
                                <input type="submit" value="submit">
                        </div>
                        <div>
                            </form>
                            <form action="" method="POST">
                                <input type="search" name="search" placeholder="Enter Apprentice No. Or Name..." style="text-align:left;width:300px;">
                                <input type="submit" value="Search" name="request">
                            </form>
                        </div>
                    </div>



                    <table width="100%" border="1" cellpadding="1" cellspacing="0" style="text-align:center; ">
                        <thead>
                            <tr>
                                <th>SN</th>
                                <th>Apprentice No.</th>
                                <th>Name</th>
                                <th>Trade</th>
                                <th>Department</th>
                                <th>Mobile</th>
                                <th>Start From</th>
                                <th>Completion On</th>
                                <th>Qualification</th>
                                <th>Punch ID</th>
                                <th>Status</th>
                                <th colspan="2">Operations</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if (isset($_POST['request'])) {
                                $search_query = $_POST['search'];
                                $sql_search = "Select * from apprentice where apprentice_no = '{$search_query}' OR name like '{$search_query}%'";
                                $search_result = mysqli_query($conn, $sql_search) or die("Query failed");
                                if (mysqli_num_rows($search_result) > 0) {
                                    while ($search_data = mysqli_fetch_assoc($search_result)) {
                                        echo "<tr>";
                                        echo "<td>" . $search_data["sn"] . "</td>";
                                        echo "<td>" . $search_data["apprentice_no"] . "</td>";
                                        echo "<td>" . $search_data["name"] . "</td>";
                                        echo "<td>" . $search_data["trade"] . "</td>";
                                        echo "<td>" . $search_data["department"] . "</td>";
                                        echo "<td>" . $search_data["mobile"] . "</td>";
                                        echo "<td>" . $search_data["start_from"] . "</td>";
                                        echo "<td>" . $search_data["completion_on"] . "</td>";
                            ?>
                                        <td>
                                            <?php
                                            $sql1 = "SELECT * from qualifications where q_id= {$search_data['qualification']}";
                                            $result1 = mysqli_query($conn, $sql1);
                                            if (mysqli_num_rows($result1) > 0) {
                                                while ($row1 = mysqli_fetch_assoc($result1)) {
                                                    echo $row1['qualification'];
                                                }
                                            }
                                            ?>
                                        </td>
                                        <?php
                                        echo "<td>" . $search_data["punch_id"] . "</td>";
                                        ?>
                                        <td>

                                            <?php
                                            $sql2 = "SELECT * from apprentice_status where status_id = {$search_data['status']}";
                                            $result2 = mysqli_query($conn, $sql2);
                                            if (mysqli_num_rows($result2) > 0) {
                                                while ($row2 = mysqli_fetch_assoc($result2)) {
                                                    echo $row2['status'];
                                                }
                                            }

                                            ?>
                                        </td>
                                    <?php
                                        echo "<td><a href='view-details.php?apprentice_no={$search_data['apprentice_no']}' style='font-size:12px;background:transparent;'>View</a></td>";
                                        echo "<td><a href='update-details.php?apprentice_no={$search_data['apprentice_no']}' style='font-size:12px;background:transparent;'>Update</a></td>";

                                        echo  "</tr>";
                                    }
                                }
                            } else {

                                $selected = NULL;
                                if (!empty($_POST['Qualification'])) {
                                    $selected = $_POST['Qualification'];
                                }
                                if ($selected == NULL || $selected == "All") {
                                    $result = mysqli_query($conn, "SELECT * FROM apprentice  ORDER BY SN");
                                } else if ($selected == "B.tech") {
                                    $result = mysqli_query($conn, "SELECT * FROM apprentice WHERE Qualification = 1 ORDER BY SN");
                                } else if ($selected == "Diploma") {
                                    $result = mysqli_query($conn, "SELECT * FROM apprentice WHERE Qualification = 2 ORDER BY SN");
                                } else if ($selected == "ITI") {
                                    $result = mysqli_query($conn, "SELECT * FROM apprentice WHERE Qualification = 3 ORDER BY SN");
                                }



                                if (mysqli_num_rows($result) > 0) {
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        echo "<tr>";
                                        echo "<td>" . $row["sn"] . "</td>";
                                        echo "<td>" . $row["apprentice_no"] . "</td>";
                                        echo "<td>" . $row["name"] . "</td>";
                                        echo "<td>" . $row["trade"] . "</td>";
                                        echo "<td>" . $row["department"] . "</td>";
                                        echo "<td>" . $row["mobile"] . "</td>";
                                        echo "<td>" . $row["start_from"] . "</td>";
                                        echo "<td>" . $row["completion_on"] . "</td>";
                                    ?>
                                        <td>
                                            <?php
                                            $sql1 = "SELECT * from qualifications where q_id= {$row['qualification']}";
                                            $result1 = mysqli_query($conn, $sql1);
                                            if (mysqli_num_rows($result1) > 0) {
                                                while ($row1 = mysqli_fetch_assoc($result1)) {
                                                    echo $row1['qualification'];
                                                }
                                            }
                                            ?>
                                        </td>
                                        <?php
                                        echo "<td>" . $row["punch_id"] . "</td>";
                                        ?>
                                        <td>

                                            <?php
                                            $sql2 = "SELECT * from apprentice_status where status_id = {$row['status']}";
                                            $result2 = mysqli_query($conn, $sql2);
                                            if (mysqli_num_rows($result2) > 0) {
                                                while ($row2 = mysqli_fetch_assoc($result2)) {
                                                    echo $row2['status'];
                                                }
                                            }

                                            ?>
                                        </td>
                            <?php
                                        echo "<td><a href='view-details.php?apprentice_no={$row['apprentice_no']}' style='font-size:12px;background:transparent;'>View</a></td>";
                                        echo "<td><a href='update-details.php?apprentice_no={$row['apprentice_no']}' style='font-size:12px;background:transparent;'>Update</a></td>";

                                        echo  "</tr>";
                                    }
                                }
                            }
                            ?>
                        </tbody>

                    </table>
                </div>


            </div>
</body>

</html>