<?php

$name_id = $_POST["id"];

@include 'config.php';

$sql = "DELETE FROM admin WHERE id = {$name_id}";

if(mysqli_query($conn, $sql)){
  echo 1;
}else{
  echo 0;
}
?>