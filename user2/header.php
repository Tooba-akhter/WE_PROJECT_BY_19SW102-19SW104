 <?php
 session_start();

?>

<!DOCTYPE html>
<html lang="en" dir=" ltr">

<head>
    <meta charset="UTF-8">
    <title>Book Store</title>
    
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"/>


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="theme-color" content="#03a6f3">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/styles.css">
<style>
#product{
        padding: 15px;
    }
    .tag{
   width:100%;
   display:inline-table;
   height:30px;
   background-color:dimgray;
   text-align: center;
   font-weight:bold;
   color:white;

   

}
    </style>



</head>

<body>
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
                    <a class="navbar-brand" href="#"><img src="images/KLOGO-1.png" alt="logo" href="80" width="150"> </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">
                            <?php
                          if(isset($_SESSION['loggedin'])){
                            echo '
                            <a class="nav-link" href="cart.php">
                            <b>Bag<i class="fas fa-shopping-cart"></i><span class="Badge badge-warning"
                            style="border-radius: 50%; height: 20px; " id="countcart"></span></a></b>&nbsp;
                             
                            
                            
                            &nbsp;<li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navBardropdown"
                        role="button" data-toggle="dropdown" aria haspopyp="true"
                        aria ecpanded="false">
                        My account
                    </a>  
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      
                        <div class="dropdown-divider"></div>
                        <a class="dropdrown-item" href="logout.php"><i class="fas fa-sign-out"</li>Logout</a>
                        </div>
                    </li>';
                        }
                          
                    else{
                        echo '<li class="navbar-item">
                                <a href="login.php" class="nav-link">Login</a>
                            </li>
                            <li class="navbar-item">
                            <a href="signup.php" class="nav-link">Signup</a>
                        </li>';
                
                    }

                          
                        
                   
                    ?>
                            
                
                    
                        </ul>
                    </div>
                </nav>
                <hr>
</div>