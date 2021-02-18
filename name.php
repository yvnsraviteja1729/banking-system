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
  $details="welcome ".$row[1];
}}
echo $details;
?>
