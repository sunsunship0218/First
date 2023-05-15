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
$RegistAge=$_POST["RegistAge"];
$RegistHeight=$_POST["RegistHeight"];
$RegistWeight=$_POST["RegistWeight"];
$RegistStandard=$_POST["RegistStandard"];
$RegistMale=$_POST["RegistMale"];
$RegistFemale=$_POST["RegistFemale"];
// Check connection
if ($conn->connect_error)
{
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully<br><br>";

$sql = "SELECT password FROM `user` WHERE password='" . $LoginPassword . "'";//查詢user資料表
$result = $conn->query($sql);

if ($result->num_rows > 0)//大於0表示密碼已存在
{
  //tell user name is already taken
  echo"密碼已有人使用";
} 
else
{
   echo"正在創建帳號";
  //開始將註冊時填入資料進伺服器 
  //資料庫填入資料
  $sqlR="INSERT INTO `user`( `nickname`,`age`, `heightCm`, `weightKg`, `password`, `standard_id`, `sex_m`, `sex_f`,`BMI`)
   VALUES ('$LoginUser','$RegistAge','$RegistHeight','$RegistWeight','$LoginPassword','$RegistStandard','$RegistMale','$RegistFemale','$RegistBMI')";
if ($conn->query($sqlR) === TRUE) {
    echo "New record created successfully";
  } else {
    echo "Error: " . $sqlR . "<br>" . $conn->error;
  }
}
$conn->close();


?>