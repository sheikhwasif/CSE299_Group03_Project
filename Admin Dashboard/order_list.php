<?php

@include 'config.php';


if(isset($_GET['remove'])){
    $confirm_id = $_GET['remove'];
    mysqli_query($conn, "DELETE FROM `artwork_order` WHERE order_id = '$confirm_id'");
    header('location:order_list.php');
 };

 ?>


<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Artwork shopping cart</title>
   <link rel="stylesheet" href="CSS/admin_artwork_style.css">

</head>
<body>
<div class="container">

<section class="order-list">

   <h1 class="heading">Order List</h1>

   <table>

      <thead>
         <th>Order ID</th>
         <th>Name</th>
         <th>Number</th>
         <th>Email</th>
         <th>Payment Method</th>
         <th>City</th>
         <th>Area</th>
         <th>Block </th>
         <th>Road No.</th>
         <th>House No.</th>
         <th>Float No.</th>
         <th>Country</th>
         <th>Password</th>
         <th>Total Artwork</th>
         <th>Total Price</th>     
         <th>Action</th>
      </thead>
      <tbody>

         <?php 
         
         $select_order = mysqli_query($conn, "SELECT * FROM `artwork_order`");
        
         if(mysqli_num_rows($select_order) > 0){
            while($fetch_order = mysqli_fetch_assoc($select_order)){
     
         ?>

         <tr>
            <td><?php echo $fetch_order['order_id']; ?></td>
            <td><?php echo $fetch_order['name']; ?></td>
            <td><?php echo $fetch_order['number']; ?></td>
            <td><?php echo $fetch_order['email']; ?></td>
            <td><?php echo $fetch_order['payment_method']; ?></td>
            <td><?php echo $fetch_order['city']; ?></td>
            <td><?php echo $fetch_order['area']; ?></td>
            <td><?php echo $fetch_order['block']; ?></td>
            <td><?php echo $fetch_order['road']; ?></td>
            <td><?php echo $fetch_order['house']; ?></td>
            <td><?php echo $fetch_order['flat']; ?></td>
            <td><?php echo $fetch_order['country']; ?></td>
            <td><?php echo $fetch_order['password']; ?></td>
            <td><?php echo $fetch_order['total_artwork']; ?></td>
            <td><?php echo $fetch_order['total_price']; ?></td>
            <td><a href="order_list.php?remove=<?php echo $fetch_cart['order_id']; ?>" onclick="return confirm('remove item from artwork_order?')" class="btn"> <i class="fas fa-trash"></i>CONFIRM</a></td>           
         </tr>

         <?php
          
            };
         };
         ?>

      </tbody>

   </table>


</section>

</div>


</body>
</html>