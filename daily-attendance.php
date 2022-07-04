<?php include "backend/restriction.php"; ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <section class="content">
        <div class="main">
            <?php include_once "side-1.php"; ?>
            <div class="side-2" style="overflow-y:scroll">
                <div class="attendance-option">
                    <form action="<?php $_SERVER['PHP_SELF']; ?>" method="POST">
                        <label for="date">Select Date</label>
                        <?php

                        $month = date('m');
                        $day = date('d');
                        $year = date('Y');

                        $today = $year . '-' . $month . '-' . $day;
                        ?>

                        
                        <input type="date" value="<?php if(!isset($_POST['date'])) {$month = date('m');
                                                                            $day = date('d');
                                                                            $year = date('Y');
                                                                            $today = $year . '-' . $month . '-' . $day; 
                                                                            } 
                                                                            else {$today = $_POST['date']; } echo $today?>" name=" date">
                        
                        <input type="submit" value="View" name="view_records"><br><br>
                        <hr>
                    </form>
                </div>



                <div class="attendance_records">
                    <table width="100%" border="1" cellpadding="1" cellspacing="0" style="text-align:center; ">
                        <thead>
                            <tr>
                                <th>SN</th>
                                <th>Date</th>
                                <th>Apprentice No.</th>
                                <th>Name</th>
                                <th>Trade</th>
                                <th>Department</th>
                                <th>Punch Id</th>
                                <th>Punch In Time</th>
                                <th>Punch Out TIme</th>
                                <th>Attendance</th>
                                <th>Half/Full Day</th>

                            </tr>
                        </thead>
                        <tbody>
                            <!-- PHP CODE HERE -->
                            <?php
                            if (isset($_POST['view_records'])) {
                                $date = $_POST['date'];
                                include "backend/db.php";
                                $sql = "Select * from attendance_records where date = '{$date}' Order by date desc";
                                $result = mysqli_query($conn, $sql) or die("query failed");
                                if (mysqli_num_rows($result) > 0) {
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        echo "<tr>";
                                        echo "<td>" . $row["sn"] . "</td>";
                                        echo "<td>" . $row["date"] . "</td>";
                                        echo "<td>" . $row["apprentice_no"] . "</td>";
                                        echo "<td>" . $row["name"] . "</td>";
                                        echo "<td>" . $row["trade"] . "</td>";
                                        echo "<td>" . $row["department"] . "</td>";
                                        echo "<td>" . $row["punch_id"] . "</td>";
                                        echo "<td>" . $row["punch_in_time"] . "</td>";
                                        echo "<td>" . $row["punch_out_time"] . "</td>";
                                        echo "<td>" . $row["attendance"] . "</td>";
                                        echo "<td>" . $row["half/full_day"] . "</td>";
                                        echo "</tr>";
                                    }
                                } else if (mysqli_num_rows($result) <= 0) {
                                    echo "<tr>";
                                    echo "<td colspan='10' style='font-size:20px;color:red;'>No Records Found!</td>";
                                    echo "</tr>";
                                }
                            }
                            ?>
                        </tbody>
                </div>
            </div>
        </div>
    </section>
</body>

</html>