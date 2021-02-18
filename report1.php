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
$sql="select * from reports";
$abc="";
if($result = $conn->query($sql))
{

if ($result->num_rows > 0) {
  while($row = $result->fetch_array()) {
   $abc=$abc."<span class='design'>".$row[2]."<br><hr><span class='design1'> From:-".$row[1]."</span><span class='design2'>Date:-".$row[3]."</span>"."</span>";


  }}
}
echo $abc;
?>
