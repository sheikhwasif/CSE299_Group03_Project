<?php

@include 'config.php';

$sql = "SELECT * FROM registration";
$result = mysqli_query($conn, $sql) or die("SQL Query Failed.");
$output = "";
if(mysqli_num_rows($result) > 0 ){
  $output = '<table border="1" width="100%" cellspacing="0" cellpadding="10px">
              <tr>
                <th width="60px">Email</th>
                <th>Name</th>
                <th>Phone Number</th>
                <th>Country</th>
                <th>Password</th>
                <th>Joining Date</th>
                <th width="90px">Delete</th>
              </tr>';

              while($row = mysqli_fetch_assoc($result)){
                $output .= "<tr><td align='center'>{$row["Email"]}</td><td>{$row["Firstname"]} {$row["Lastame"]}</td><td>{$row["PhoneNumber"]}</td><td>{$row["Country"]}</td><td>{$row["Password"]}</td><td>{$row["JoiningDate"]}</td><td align='center'><button Class='delete-btn' data-id='{$row["id"]}'>Delete</button></td></tr>";
              }
    $output .= "</table>";

    mysqli_close($conn);

    echo $output;
}else{
    echo "<h2>No Record Found.</h2>";
}
?>