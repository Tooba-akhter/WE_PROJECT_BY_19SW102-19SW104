<?php
session_start();
?>
<!DOCTYPE html>

<html lang="en">

<head>
 <meta charset="UTF-8">
 <title>Book Store</title>

<!-- CDN -->
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- font awesome link -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"/>

 <meta name="viewport" content="width=device-width, initial-scale=1">
 <meta name="theme-color" content="#03a6f3">
 <link rel="stylesheet" href="css/bootstrap.min.css">
 <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800,900" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
 <link rel="stylesheet" href="css/styles.css">
 <style>
     .info{
         text-align: right;
         margin-bottom: 20px;
     }
 </style>




</head>

<body>
  <div class="container-fluid">
  

 <header>
     <div class="header-top">
         <div class="container">
             <div class="row">
                 <div class="col-md-3"><a href="#" class="web-url">www.bookstore.com</a></div>
                 <div class="col-md-6">
                     <h5>Free Shipping Over $99 + 3 Free Samples With Every Order</h5>
                 </div>
                 <div class="col-md-3">
                     <span class="ph-number">Call : 800 1234 5678</span>
                 </div>
             </div>
         </div>
     </div>
     <div class="main-menu">
         <div class="container">
             <nav class="navbar navbar-expand-lg navbar-light">
                 <a class="navbar-brand" href="profile.php"><img src="images\KLOGO1024_1.jpg" alt="logo" href="80" width="150" ></a>
                 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                     <span class="navbar-toggler-icon"></span>
                 </button>
                 <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav ml-auto">

                  
                <?php 
                     if(!isset($_SESSION['aloggedin'])){
                     echo '<li class="nav-item dropdown">
     <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
       My Account
     </a>
     <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
      <h4>Hello, Admin</h2>
       <div class="divider"></div>
       <a class="dropdown-item" href="logout.php">Logout</a>
     </div>
   </li>';
                     }


                     else
                      {
                         

                            echo '<li class="navbar-item">
                         <a class="nav-link" href="login.php">Login</a>
                     </li>';

                      }
                      ?>
</ul>
</div>
</nav>
<hr>
</div>
 </header>
    <div class="breadcrumb">
        <div class="container">
            <a class="breadcrumb-item" href="index.html">Home</a>
            <span class="breadcrumb-item active">About</span>
        </div>
    </div>
    <section class="static about-sec">
        <div class="container">
            <h1>About Us</h1>
            <div class="img-sec">
                <img src="images/about-img.jpg" class="img-fluid img-thumbnail rounded" height="50%" width="50%" alt="about">
                <p>Online Book Store provides best solution to buy books online in Pakistan at single click.
                     Online Book Store provides facility to pay cash on delivery, only pay once books is in your hands. 
                     Free Cash on Delivery services available. Online Book Store 
only deals in original books with competitive rates. So, what are you waiting for ? start shopping NOW !</p>
                <p>We are still in our initial days and we are relentlessly focused on growing more catalogues and constantly
 improvising customer experience in Pakistan. We trust, you will be by our side always.</p>
            </div>
          
        </div>
    </section>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />

<div class="container py-5 " id="team">
    <div class="row mb-4">
      <div class="col-lg-5">
        <h2 class="display-4 font-weight-light">Our team</h2>
        <p class="font-italic text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
      </div>
    </div>

    <div class="row text-center">
    

      <!-- Team item-->
      <div class="col-xl-3 col-sm-6 mb-5">
        <div class="bg-white rounded shadow-sm py-5 px-4"><img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
          <h5 class="mb-0">ILSA NAEEM</h5><span class="small text-uppercase text-muted"></span>
          <ul class="social mb-0 list-inline mt-3">
            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
          </ul>
        </div>
      </div>
      <!-- End-->
  <!-- Team item-->
      <div class="col-xl-3 col-sm-6 mb-5" >
        <div class="bg-white rounded shadow-sm py-5 px-4"><img src="https://bootdey.com/img/Content/avatar/avatar8.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
          <h5 class="mb-0">ALIMA ARSHAD</h5><span class="small text-uppercase text-muted"></span>
          <ul class="social mb-0 list-inline mt-3">
            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
          </ul>
        </div>
      </div>
      <!-- End-->
 <!-- Team item-->
      <div class="col-xl-3 col-sm-6 mb-5" >
        <div class="bg-white rounded shadow-sm py-5 px-4"><img src="https://bootdey.com/img/Content/avatar/avatar8.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
          <h5 class="mb-0">SHUMAIN LIAQUAT</h5><span class="small text-uppercase text-muted"></span>
          <ul class="social mb-0 list-inline mt-3">
            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
          </ul>
        </div>
      </div>
      <!-- End-->

      <!-- Team item-->
      <div class="col-xl-3 col-sm-6 mb-5" >
        <div class="bg-white rounded shadow-sm py-5 px-4"><img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
          <h5 class="mb-0">TOOBA ARSHAD</h5><span class="small text-uppercase text-muted"></span>
          <ul class="social mb-0 list-inline mt-3">
            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
          </ul>
        </div>
      </div>
      <!-- End-->

    </div>
  </div>














<?php require_once 'footer.php'; 
?>