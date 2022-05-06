<?php

$Admin_id = $_POST["id"];

@include 'config.php';

$sql = "SELECT * FROM admin WHERE id = {$Admin_id}";
$result = mysqli_query($conn, $sql) or die("SQL Query Failed.");
$output = "";
if(mysqli_num_rows($result) > 0 ){

  while($row = mysqli_fetch_assoc($result)){
    $output .= "<tr>
      <td width='90px'>Email</td>
      <td><input type='text' id='edit-email' value='{$row["email"]}'>
          <input type='text' id='edit-id' hidden value='{$row["id"]}'>
      </td>
    </tr>
    <tr>
      <td>Password</td>
      <td><input type='text' id='edit-password' value='{$row["password"]}'></td>
    </tr>
    <tr>
      <td></td>
      <td><input type='submit' id='edit-submit' value='save'></td>
    </tr>";

  }

    mysqli_close($conn);

    echo $output;
}else{
    echo "<h2>No Record Found.</h2>";
}

?>