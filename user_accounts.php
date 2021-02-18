<?php
$username = "root";
$password = "";
$database = "bankings";
$conn = new mysqli("localhost", $username, $password, $database) or die("failed to connect the database");

$q = strval($_GET['acc_no']);

  $sql="select * from customer where account_no='".$q."'";
  $result = $conn->query($sql);
  $details="<table class='first'>";
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_array()) {
$details=$details."<tr><td><h3><b>ACCOUNT HOLDER</b></h3></td><td>".$row[1]."</td></tr><tr><td><h3><b>ACCOUNT NUMBER</b></h3></td><td>".$row[2]."</td></tr><tr><td><h3><b>BRANCH</b></h3></td><td>".$row[3]."</td></tr><tr><td><h3><b>IFSC CODE</b></h3></td><td>".$row[4]."</td></tr><tr><td><h3><b>ACCOUNT TYPE</b></h3></td><td>".$row[5]."</td></tr></table><table class='second'><tr><td><h3><b>PHONE NUMBER</b></h3></td><td>".$row[6]."</td></tr>";
$details=$details."<tr><td><h3><b>ADDRESS</b></h3></td><td>".$row[7]."</td></tr><tr><td><h3><b>GMAIL</b></h3></td><td>".$row[8]."</td></tr><tr><td><h3><b>AGE</b></h3></td><td>".$row[9]."</td></tr><tr><td><h3><b>ACCOUNT BALANCE</b></h3></td><td>".$row[10]."</td><tr></table>";
    }
  } else {
    echo "0 results";
  }
  $conn->close();

echo $details;
 ?>
