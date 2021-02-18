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
$q = strval($_GET['acc']);
if(strlen($q)==0){
$sql="select * from transactions order by s_no desc";
$abc="";
if($result = $conn->query($sql))
{

if ($result->num_rows > 0) {
  while($row = $result->fetch_array()) {
   $abc=$abc."<span class='design'>".$row[3]." rupees is transactioned from account number ".$row[1]." to account number ".$row[2]." at ".$row[4]."<br></span>";


  }}
}
}
else {
  $sql="select * from transactions  where sender_account_no=".$q." order by s_no desc";
  $abc="";
  if($result = $conn->query($sql))
  {

  if ($result->num_rows > 0) {
    while($row = $result->fetch_array()) {
     $abc=$abc."<span class='design'>".$row[3]." rupees is transactioned from account number ".$row[1]." to account number ".$row[2]." at ".$row[4]."<br></span>";
    }}
  }
}
echo $abc;
 ?>
