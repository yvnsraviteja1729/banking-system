<?php
$servername = "localhost";
$username = "root";
$password = "";

// Create connection
$conn = new mysqli($servername, $username, $password);
$q = strval($_GET['acc_no']);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

//$accounts="<table cellpadding='5' border='2px'><tr><th>S_N0</th><th>ACCOUNT HOLDER</th><th>ACCOUNT_NO</th><th>PHONE NUMBER</th><th>BALANCE</th><th>VEIW PROFILE</th></tr>";
$sql = "use bankings";
$result = $conn->query($sql);
$sql = "SELECT *  FROM customer where account_no=".$q;
if($result = $conn->query($sql))
{

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_array()) {
   echo "<label>Recipent name</label><br><input type='text' value='".$row[1]."'><br>"."<label>email</label><input type='text' value='".$row[8]."'><br>"."<label>mobile number</label><input type='text' value='".$row[6]."'><br>";
  }
} else {
  echo "0 results";
}}
else {
  echo "Invalid account number";
}
$conn->close();


 ?>
