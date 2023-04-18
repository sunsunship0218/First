<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vr_app";
// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);

// user submit variables
$LoginUser=$_POST["LoginUser"];
$LoginPassword=$_POST["LoginPassword"];//submit imformation

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully<br><br>";

$sql = "SELECT password FROM vr_app WHERE nickname== " . $LoginUser;
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "username: " . $row["username"].  " " . "<br>";
  }
} else {
  echo "0 results";
}
$conn->close();


?>