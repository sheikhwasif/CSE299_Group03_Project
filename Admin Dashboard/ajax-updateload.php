<?php

$Admin_id = $_POST["id"];
$fEmail = $_POST["email"];
$lPassword = $_POST["password"];

@include 'config.php';

$sql = "UPDATE `admin` SET `email`='$fEmail',`password`='$lPassword' WHERE id = {$Admin_id}";

if(mysqli_query($conn, $sql)){
  echo 1;
}else{
  echo 0;
}

?>