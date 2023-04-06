<?php
require_once 'header1.php';
require_once '../config.php';
$username = $password = "";
$username_err = $password_err = $error ="";

if(isset($_POST['submit'])){
    if(empty($_POST['username'])){
    $username_err="please enter username";        
}
else{
    $username=mysqli_real_escape_string($link,$_POST['username']);

}
if(empty($_POST['password'])){
$password_err="please enter password ";
}
else{
    $password= mysqli_real_escape_string($link,$_POST['password']);
    
}
if(empty($username_err) &&  empty($password_err)){
    $sql="SELECT * FROM login WHERE username = '$username'";
    $result = mysqli_query($link,$sql);
    if(mysqli_num_rows($result)>0){
        while($row = mysqli_fetch_array($result)){
            if(password_verify($password,$row['password'])){
                session_start();
                $_SESSION['loggedin']=true;
                $_SESSION['id']=$row['user_id'];
                $_SESSION['name']=$row['name'];
                header('location: index.php');
            }
            else {
                $error="Invalid username or password ";

            }
            
        }
    }
    else{
        $error="Invalid username or password ";
    }
}

}

?>

    <section class="static about-sec">
        <div class="container">
            <span id="help"> </span>
            <h1>My Account / Login</h1>
            <hr>
            <span class= "text-danger"><?php echo $error;
            ?>
            </span>
            <form class = " " method = "post">
                <div class=" form-group">
                    <i class = "fa fa-envelope"></i><label for = ""> &nbsp; &nbsp; Email </label>
                    <input type = " email" name = "username" id= "email" value = ""class ="form-control" placeholder = "Enter Email">

                    <span class= "text-danger"><?php echo $username_err?></span>
</div>
<div class=" form-group">
                    <i class = "fa fa-key"></i><label for = ""> &nbsp; &nbsp; Password </label>
                    <input type = "password" name = "password" id= "password" value = ""class ="form-control" placeholder = "Enter Password">
                    <span  class= "text-danger"><?php echo $password_err  ?></span>
</div>
<div class = "form-group">
    <input type = "submit" id ="submit" name = "submit" class ="btn btn-success"
    style = "width : 100%" value="Login"></input>
</div>
<hr>

                    </div>
</form>
</div>

<div class ="col-sm-4"> </div>
                    
    </section>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="address">
                        <h4>Our Address</h4>
                        <h6>The BookStore Theme, 4th Store
                        Beside that building, USA</h6>
                        <h6>Call : 800 1234 5678</h6>
                        <h6>Email : info@bookstore.com</h6>
                    </div>
                    <div class="timing">
                        <h4>Timing</h4>
                        <h6>Mon - Fri: 7am - 10pm</h6>
                        <h6>​​Saturday: 8am - 10pm</h6>
                        <h6>​Sunday: 8am - 11pm</h6>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="navigation">
                        <h4>Navigation</h4>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="about.html">About Us</a></li>
                            <li><a href="privacy-policy.html">Privacy Policy</a></li>
                            <li><a href="terms-conditions.html">Terms</a></li>
                            <li><a href="products.html">Products</a></li>
                        </ul>
                    </div>
                    <div class="navigation">
                        <h4>Help</h4>
                        <ul>
                            <li><a href="">Shipping & Returns</a></li>
                            <li><a href="privacy-policy.html">Privacy</a></li>
                            <li><a href="faq.html">FAQ’s</a></li>
                        </ul>
                    </div>
                </div>

                </div>
            </div>
        </div>
        <div class="copy-right">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h5>(C) 2017. All Rights Reserved. BookStore Wordpress Theme</h5>
                    </div>
                    <div class="col-md-6">
                        <div class="share align-middle">
                            <span class="fb"><i class="fa fa-facebook-official"></i></span>
                            <span class="instagram"><i class="fa fa-instagram"></i></span>
                            <span class="twitter"><i class="fa fa-twitter"></i></span>
                            <span class="pinterest"><i class="fa fa-pinterest"></i></span>
                            <span class="google"><i class="fa fa-google-plus"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>

</html>