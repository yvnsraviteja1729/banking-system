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
$accounts="<table cellpadding='5' border='2px'><tr><th>S_N0</th><th>ACCOUNT HOLDER</th><th>ACCOUNT_NO</th><th>PHONE NUMBER</th><th>BALANCE</th><th>VEIW PROFILE</th></tr>";
$sql = "use bankings";
$result = $conn->query($sql);
$sql = "SELECT * FROM customer";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_array()) {
$accounts=$accounts."<tr cellpadding='5' border='2px'><td>".$row[0]."</td><td>".$row[1]."</td><td>".$row[2]."</td><td>".$row[6]."</td><td>".$row[10]."</td><td><a href='user_login.html?".$row[2]."'>view </a></tr>";
  }
} else {
  echo "0 results";
}
$conn->close();

//$accounts=$accounts."/table>";
echo $accounts."</table>";
//echo "this is the response text";
 ?>
