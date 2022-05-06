<?php

// Create connection
@include 'Admin Dashboard/config.php';
$sql = "SELECT * FROM view_art WHERE art_name LIKE '%".$_POST['name']."%'";
$result = mysqli_query($conn, $sql);
if(mysqli_num_rows($result)>0){
	while ($row=mysqli_fetch_assoc($result)) {
		echo "	<tr>
		          <td>".$row['art_name']."</td>
		          <td>".$row['art_price']."</td>
		          <td >".$row['art_image']."</td>
		        </tr>";
	}
}
else{
	echo "<tr><td>0 result's found</td></tr>";
}
?>