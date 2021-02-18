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
$sac=strval($_POST['sender_acc']);
$rac=strval($_POST['recipient']);
$amount=intval($_POST['amount'])+0;
$sql="select balance from customer where account_no='".$sac."'";
// $result = $conn->query($sql);
if($result = $conn->query($sql))
{

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_array()) {
    // settype($row[0], "integer");
   $sql="update customer set balance='".(intval($row[0])-intval($amount))."' where account_no='".$sac."'";
      $resul1 = $conn->query($sql);

  }}
}
$sql="select balance from customer where account_no='".$rac."'";
if($result = $conn->query($sql))
{

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_array()) {
    // settype($row[0], "integer");
   $sql="update customer set balance='".(intval($row[0])+intval($amount))."' where account_no='".$rac."'";
      $resul1 = $conn->query($sql);

  }}
}
 else {
 header("Location:send.html?".$sac."?failure");
}
// echo $amount;
// $t=date();
// echo $t;
$sql = "INSERT INTO transactions(sender_account_no,receiver_account_no,amount)  VALUES ($sac,$rac,".intval($amount).")";

if ($conn->query($sql) === TRUE) {
   header("Location:send.html?".$sac."?success");
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
//


 ?>
