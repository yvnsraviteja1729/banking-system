<?php
$servername = "localhost";
$username = "root";
$password = "";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$sql = "use bankings";
$result = $conn->query($sql);
$q=strpos($_SERVER['REQUEST_URI'],'?');
if($q>0){
  $acc= substr($_SERVER['REQUEST_URI'],$q+1);
  $report = strval($_POST['file']);
  $sql = "INSERT INTO reports (account_no,report) VALUES ($acc,'$report')";

if ($conn->query($sql) === TRUE) {

   header("Location:reports.html?".$acc."sent");
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
}
 ?>
