<?php error_reporting(E_ALL ^ E_NOTICE); ?>
<!DOCTYPE html>
<?php 
include "db.php";



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
        <div class="side-1">
            <img class="belpic" src="images/bel.png" alt="">
            <div class="wlcm-msg">
            <p>WELCOME</p>
            <span >SAURABH BHARTI</span>
            <div class="logout-btn">
                <a class="btn" href="index.php" >Logout</a>
            </div>
        </div>
        <div class="menu">
            <a href="" id="App-reg">Apprentice Registration</a>
            <a href="app-list.php" id="App-list">Apprentice List</a>
            <a href="" id="D-att">Daily Attendance Record</a>
            <a href="" id="Ind-Att">Individual Attendance Record</a>
            <a href="" id="Payroll">Payroll Record</a>
            </div>
        </div>
    <div class="side-2" style = "overflow-y:scroll">
        <?php echo $apprentice_no; ?>
        <div class="app-reg ">
          <div class="upper-tab">
            <p>Apprentice Registration</p> 
         </div>
         <div class="input-table">
             <form action="" method="POST"></form>
        <table>
            <tbody>
                <tr>
                    <td>Apprentice No</td>
                    <td><input class="form-input" type="text" name="apprentice_no"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input class="form-input" type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Trade</td>
                    <td><input class="form-input" type="text" name="trade"></td>
                </tr>
                <tr>
                    <td>Department</td>
                    <td><input class="form-input" type="text" name="department"></td>
                </tr>
                <tr>
                    <td>Mobile No.</td>
                    <td><input class="form-input" type="text" name="mobile"></td>
                </tr>
                <tr>
                    <td>From</td>
                    <td><input class="form-input" type="date" name="from"></td>
                </tr>
                <tr>
                    <td>To</td>
                    <td><input class="form-input" type="date" name="to"></td>
                </tr>
                <tr>
                    <td>Qualification</td>
                    <td><select name="qualification" id="qualification">
                        <option value="Graduation">Graduation</option>
                        <option value="Graduation">Diploma</option>
                        <option value="Graduation">I.T.I.</option>
                    </select></td>
                </tr>
                <tr>
                    <td>Punch ID </td>
                    <td><input class="form-input" type="text" name="punch_id"></td>
                </tr>
                <tr>
                    <td> 
                    <input class="btn" type="submit" value="submit" name="submit" >
                </td>
                </tr>
            </tbody>
        </table>
    </form>
    
        
    </div>
    </div>

   
      

          <!-- <div class="daily-attendance">
            <div class="upper-tab">
                <p>Attendance Records
                </p> 
             </div>
            <table  width="100%" border="1" cellpadding="1" cellspacing="0" style="text-align:center; ">
                <thead>
                    
                        <td>SN</td>
                        <td>Apprentice No.</td>
                        <td>Name</td>
                        <td>Trade</td>
                        <td>Department</td>
                        <td>From</td>
                        <td>To</td>
                        
                </thead>
                <tbody>
                    <tr>   
                      <td>one</td>
                      <td>two</td>
                      <td>three</td>
                      <td>fouhh</td>
                      <td>five</td>
                      <td>six</td>
                      <td>sevecvf</td>
                  </tr>
                  <tr>   
                      <td>one</td>
                      <td>two</td>
                      <td>three</td>
                      <td>four</td>
                      <td>five</td>
                      <td>six</td>
                      <td>seven</td>
                  </tr>
                  <tr>   
                      <td>one</td>
                      <td>two</td>
                      <td>three</td>
                      <td>four</td>
                      <td>five</td>
                      <td>six</td>
                      <td>seven</td>
                  </tr>
                  <tr>   
                      <td>one</td>
                      <td>two</td>
                      <td>three</td>
                      <td>four</td>
                      <td>five</td>
                      <td>six</td>
                      <td>seven</td>
                  </tr>
                  <tr>   
                      <td>one</td>
                      <td>two</td>
                      <td>three</td>
                      <td>four</td>
                      <td>five</td>
                      <td>six</td>
                      <td>seven</td>
                  </tr>
                  <tr>   
                      <td>one</td>
                      <td>two</td>
                      <td>three</td>
                      <td>four</td>
                      <td>five</td>
                      <td>six</td>
                      <td>seven</td>
                  </tr>
                  <tr>   
                      <td>one</td>
                      <td>two</td>
                      <td>three</td>
                      <td>four</td>
                      <td>five</td>
                      <td>six</td>
                      <td>seven</td>
                  </tr>
                  <tr>   
                      <td>one</td>
                      <td>two</td>
                      <td>three</td>
                      <td>four</td>
                      <td>Harendra Singh Rana</td>
                      <td>six</td>
                      <td>seven</td>
                  </tr>
                  <tr>   
                      <td>one</td>
                      <td>two</td>
                      <td>three</td>
                      <td>four</td>
                      <td>five</td>
                      <td>six</td>
                      <td>seven</td>
                  </tr>
                  <tr>   
                      <td>one</td>
                      <td>two</td>
                      <td>three</td>
                      <td>four</td>
                      <td>five</td>
                      <td>six</td>
                      <td>seven</td>
                  </tr>
                  <tr>   
                      <td>one</td>
                      <td>two</td>
                      <td>three</td>
                      <td>four</td>
                      <td>five</td>
                      <td>six</td>
                      <td>seven</td>
                  </tr>
                  <tr>   
                    <td>one</td>
                    <td>two</td>
                    <td>three</td>
                    <td>fouhh</td>
                    <td>five</td>
                    <td>six</td>
                    <td>sevecvf</td>
                </tr>
                <tr>   
                    <td>one</td>
                    <td>two</td>
                    <td>three</td>
                    <td>four</td>
                    <td>five</td>
                    <td>six</td>
                    <td>seven</td>
                </tr>
              
          
                  
                </tbody>
            </table>
          </div> -->

          </div>
        </div>
    </div> 
    </section>
    <script src="app.js"></script>
</body>
</html>