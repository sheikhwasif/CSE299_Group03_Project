<?php 
    @include 'Admin Dashboard/config.php';
    if (mysqli_connect_errno()) {
        echo "cannot connect";
   } else {
        echo "connected";
   }
   if (isset($_POST['Signin'])) {

        $uname=mysqli_real_escape_string($conn, $_REQUEST['user_id']);
        $passwords=mysqli_real_escape_string($conn, $_REQUEST['Enter_Password']);

        $sql="select * from registration where Email='".$uname."'AND Password='".$passwords."' limit 1";
        $sq2="select * from admin where email='".$uname."'AND password='".$passwords."' limit 1";

        $customer= mysqli_query($conn,$sql);
        $admin= mysqli_query($conn,$sq2);

        if(mysqli_num_rows($customer)==1){
            echo "login successfull";
            header("Location: index01.php");
          }
        elseif(mysqli_num_rows($admin)==1){
              echo " Welcome to admin page";
              header("Location: Admin Dashboard/admin-option.html");
          }
          else{
              echo"you have enter wrong password";
          }
        }

   
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title> Login from design</title>
        <link rel="stylesheet" href="login.css">
    </head>
        <body>
            <div class="loginbox">
                <img src="img/logo01.jpg" class="avater">
                <h1>Login Here</h1>
               <form method="POST">
                   <p>Username</p>
                   <input type="text" name="user_id" placeholder="Enter Email Address">
                   <p>Password</p>
                   <input type="password" name="Enter_Password" placeholder="Enter Password">
                   <input type="submit" name="Signin" value="Login">
                   <a href="forget_password.php">Forget your password</a><br>
                   <a href="Sign_Up.php">Don't have an account?</a>
               </form>
            </div>
        </body>    
</html>