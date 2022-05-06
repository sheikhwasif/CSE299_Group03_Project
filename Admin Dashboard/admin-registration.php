<?php

@include 'config.php';

if (mysqli_connect_errno()) {
     echo "cannot connect";
} else {
     echo "connected";
}


if (isset($_POST['Signup'])) {
     
     $email = mysqli_real_escape_string($conn, $_REQUEST['email']);
     $password = mysqli_real_escape_string($conn, $_REQUEST['pass_word']);
     $repassword= mysqli_real_escape_string($conn, $_REQUEST['re_password']);
     if($password == $repassword){

     $sql = "INSERT INTO `admin`(`id`, `email`, `password`) VALUES ('','$email','$password')";

     if ($conn->query($sql) === TRUE) {
          echo "Records added successfully.";
          header("Location:view_admin.php");
     } else {
          echo "ERROR: Could not able to execute . ";
          exit();
     }
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
     <link rel="stylesheet" href="CSS/admindes.css">
     <title>Sign Up page</title>
</head>

<body>

     <div class="sign_up">
          <h1>SIGN-UP FORM For ADMIN</h1>
     </div>
     <form method="POST">
          <div class="main">
               
               <h2 class="name">Email</h2>
               <input class="email" type="text" name="email" placeholder="Enter Valid Email Address">

               
               <h2 class="name">Password</h2>
               <input class="password" type="password" name="pass_word" placeholder="Enter Passwprd">
               <input class="repassword" type="password" name="re_password" placeholder="Re Enter Your Password">
               <button type="submit" name="Signup">Submit</button><br><br><br>

          </div>
     </form>
     </div>
</body>

</html>

