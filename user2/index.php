<?php
require_once 'header.php';
require_once '../config.php';
$output = "";

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
 <div class="container">
    <div class="row" style="padding-left: 10%;">
        <div class="col-md-12 text-center" >
            <h3>CATEGORIES</h3>
        </div>
<div class="col-sm-12">
    <ul class="nav justify-content-center">
        <li class="nav-item">
          <a class="nav-link "   href="#unovel" style="color: black;">URDU NOVELS</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#enovel" style="color: black;">ENGLISH NOVELS</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#islam" style="color: black;">ISLAMIC BOOKS</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#fantasy" tabindex="-1" style="color: black;" >FANTASY/FICTION</a>
        </li>
      </ul>
    </div>
    </div>
    </div>
    <br><br>
    <br>
  <div class = "col-sm-12">
      <div class ="heading" style="margin-top:3%; padding-left: 10%; font-size: 30px;
 
 text-align: center;">HIGHLY RECOMMENDED BOOKS</div>
      <div class="row" style="padding-left: 10%;">
          <?php
          $sql = "SELECT* FROM books WHERE category ='HRB' ORDER BY book_id ASC";
          $result=mysqli_query($link,$sql);
          while($row=mysqli_fetch_array($result)){
              $output .='
              <div class ="col-md-3 text-center " id = "product">
                  <img src="'.$row['img'].'" width=70% height="220" id="img">
                  <h5 style = "font-size:medium">'.$row['book_name'].'</h5>
                  <h6 style = "font-size:x-small">By'.$row['author'].'</h6>
                  <h6 style = "font-size:larger;color:red;
                  font-family:Verdana ">'.$row['price'].'</h6>
                  <form method = "post" class="form-item">
                      <input type = "hidden" name ="book_id" id="book_id'.$row['book_id'].'"
                       value = "'.$row['book_id'].'">
                      <input type = "hidden" name ="book_name" id="book_name'.$row['book_id'].'" value = "'
                      .$row['book_name'].'">
                      <input type = "hidden" name ="image" id="image'.$row['book_id'].'" value = "
                      '.$row['img'].'">
                      <input type = "hidden" name ="price" id="price'.$row['book_id'].'" value = "'
                      .$row['price'].'">';
                      if(!isset($_SESSION['loggedin'])){
                          $output .= '<input type = "submit" name = "submit"
                          value="ADD TO CART"  class="btn btn-primary login"  style="width:80%; ">';
                         
                        }
                        else{
                            $output .=' <button type="button" id="'.$row['book_id'].'" name="add_to_cart" class="btn btn-primary" 
                            style="width:80%;">ADD TO CART</button>';
                        }
                        $output.='</form></div>';
                      
        
          }
          echo $output;
                  
          ?>

        <br>
        

        
 </div>
        </div>
        <div class ="heading"  style="margin-top:3%; padding-left: 10%;font-size: 30px;
 
 text-align: center; " >RECENTLY ADDED BOOKS</div>
      <div class="row"  style="padding-left: 10%;">
          <?php
          $output='';
          $sql = "SELECT* FROM books WHERE category ='RA'ORDER BY book_id ASC";
          $result=mysqli_query($link,$sql);
          while($row=mysqli_fetch_array($result)){
              $output .='
              <div class ="col-sm-3 text-center " id = "product">
                  <img src="'.$row['img'].'" width=70% height="220" id="img">
                  <h5 style = "font-size:medium">'.$row['book_name'].'</h5>
                  <h6 style = "font-size:x-small">By'.$row['author'].'</h6>
                  <h6 style = "font-size:larger;color:red;
                  font-family:Verdana ">'.$row['price'].'</h6>
                  <form method = "post" class="form-item">
                      <input type = "hidden" name ="book_id" id= "book_id '.$row['book_id'].'"
                       value = "'.$row['book_id'].'">
                      <input type = "hidden" name ="book_name" id= "book_name '.$row['book_id'].'" value = "'
                      .$row['book_name'].'">
                      <input type = "hidden" name ="image" id= "image '.$row['book_id'].'" value = "
                      '.$row['img'].'">
                      <input type = "hidden" name ="price" id= "price'.$row['book_id'].'" value = "'
                      .$row['price'].'">';
                      if(!isset($_SESSION['loggedin'])){
                        $output .= '<input type = "submit" name = "submit"
                        value="ADD TO CART"  class="btn btn-primary login"  style="width:80%; ">';
                       
                      }
                      else{
                          $output .=' <button type="button" id="'.$row['book_id'].'" name="add_to_cart" class="btn btn-primary" 
                          style="width:80%;">ADD TO CART</button>';
                      }
                      $output.='</form></div>';
                      
        
          }
          echo $output;
                  
          ?>

        <br>
        

 
        
 </div>
        </div>
        <div class ="heading"  style="margin-top:3%; padding-left: 10%;font-size: 30px;
 
 text-align: center;">URDU NOVELS</div>
      <div class="row"  style="padding-left: 10%;">
          <?php
          $output='';
          $sql = "SELECT* FROM books WHERE category ='UN'ORDER BY book_id ASC";
          $result=mysqli_query($link,$sql);
          while($row=mysqli_fetch_array($result)){
              $output .='
              <div class ="col-sm-3 text-center " id = "product">
                  <img src="'.$row['img'].'" width=70% height="220" id="img">
                  <h5 style = "font-size:medium">'.$row['book_name'].'</h5>
                  <h6 style = "font-size:x-small">By'.$row['author'].'</h6>
                  <h6 style = "font-size:larger;color:red;
                  font-family:Verdana ">'.$row['price'].'</h6>
                  <form method = "post" class="form-item">
                      <input type = "hidden" name ="book_id" id= "book_id '.$row['book_id'].'"
                       value = "'.$row['book_id'].'">
                      <input type = "hidden" name ="book_name" id= "book_name '.$row['book_id'].'" value = "'
                      .$row['book_name'].'">
                      <input type = "hidden" name ="image" id= "image '.$row['book_id'].'" value = "
                      '.$row['img'].'">
                      <input type = "hidden" name ="price" id= "price'.$row['book_id'].'" value = "'
                      .$row['price'].'">';
                      if(!isset($_SESSION['loggedin'])){
                        $output .= '<input type = "submit" name = "submit"
                        value="ADD TO CART"  class="btn btn-primary login"  style="width:80%; ">';
                       
                      }
                      else{
                          $output .=' <button type="button" id="'.$row['book_id'].'" name="add_to_cart" class="btn btn-primary" 
                          style="width:80%;">ADD TO CART</button>';
                      }
                      $output.='</form></div>';
                      
        
          }
          echo $output;
                  
          ?>

        <br>
        

 
        
 </div>
        </div>
        <div class ="heading"  style="margin-top:3%; padding-left: 10%; font-size: 30px;
 
  text-align: center;">ISLAMIC BOOKS</div>
      <div class="row"  style="padding-left: 10%;">
          <?php
           $output='';
          $sql = "SELECT* FROM books WHERE category ='IN'ORDER BY book_id ASC";
          $result=mysqli_query($link,$sql);
          while($row=mysqli_fetch_array($result)){
              $output .='
              <div class ="col-sm-3 text-center " id = "product">
                  <img src="'.$row['img'].'" width=70% height="220" id="img">
                  <h5 style = "font-size:medium">'.$row['book_name'].'</h5>
                  <h6 style = "font-size:x-small">By'.$row['author'].'</h6>
                  <h6 style = "font-size:larger;color:red;
                  font-family:Verdana "> '.$row['price'].'</h6>
                  <form method = "post" class="form-item">
                      <input type = "hidden" name ="book_id" id= "book_id '.$row['book_id'].'"
                       value = "'.$row['book_id'].'">
                      <input type = "hidden" name ="book_name" id= "book_name '.$row['book_id'].'" value = "'
                      .$row['book_name'].'">
                      <input type = "hidden" name ="image" id= "image '.$row['book_id'].'" value = "
                      '.$row['img'].'">
                      <input type = "hidden" name ="price" id= "price'.$row['book_id'].'" value = "'
                      .$row['price'].'">';
                      if(!isset($_SESSION['loggedin'])){
                        $output .= '<input type = "submit" name = "submit"
                        value="ADD TO CART"  class="btn btn-primary login"  style="width:80%; ">';
                       
                      }
                      else{
                          $output .=' <button type="button" id="'.$row['book_id'].'" name="add_to_cart" class="btn btn-primary" 
                          style="width:80%;">ADD TO CART</button>';
                      }
                      $output.='</form></div>';
        
          }
          echo $output;
                  
          ?>

        <br>
        

 
        
 </div>
        </div>
        <div class ="heading"  style="margin-top:3%; padding-left: 10%;font-size: 30px;
 
 text-align: center;">ENGLISH NOVELS</div>
      <div class="row"  style="padding-left: 10%;">
          <?php
           $output='';
          $sql = "SELECT* FROM books WHERE category ='EN'ORDER BY book_id ASC";
          $result=mysqli_query($link,$sql);
          while($row=mysqli_fetch_array($result)){
              $output .='
              <div class ="col-sm-3 text-center " id = "product">
                  <img src="'.$row['img'].'" width=70% height="220" id="img">
                  <h5 style = "font-size:medium">'.$row['book_name'].'</h5>
                  <h6 style = "font-size:x-small">By'.$row['author'].'</h6>
                  <h6 style = "font-size:larger;color:red;
                  font-family:Verdana ">'.$row['price'].'</h6>
                  <form method = "post" class="form-item">
                      <input type = "hidden" name ="book_id" id= "book_id '.$row['book_id'].'"
                       value = "'.$row['book_id'].'">
                      <input type = "hidden" name ="book_name" id= "book_name '.$row['book_id'].'" value = "'
                      .$row['book_name'].'">
                      <input type = "hidden" name ="image" id= "image '.$row['book_id'].'" value = "
                      '.$row['img'].'">
                      <input type = "hidden" name ="price" id= "price'.$row['book_id'].'" value = "'
                      .$row['price'].'">';
                      if(!isset($_SESSION['loggedin'])){
                        $output .= '<input type = "submit" name = "submit"
                        value="ADD TO CART"  class="btn btn-primary login"  style="width:80%; ">';
                       
                      }
                      else{
                          $output .=' <button type="button" id="'.$row['book_id'].'" name="add_to_cart" class="btn btn-primary" 
                          style="width:80%;">ADD TO CART</button>';
                      }
                      $output.='</form></div>';
        
          }
          echo $output;
                  
          ?>

        <br>
        

 
        
 </div>
        </div>
        </div>

       

<?php  require 'footer.php'; ?>
        
        

          
          

