<?php
session_start();
include_once '../config.php';
$var=$_POST['action'];
switch ($var){ 
    case 'add_to_cart':
        $book_id=$_POST['book_id'];
        $book_name=$_POST['book_name'];
        $image=$_POST['image'];
        $price=$_POST['price'];
        $user_id=$_SESSION['id'];
        $quantity=$_POST['quantity'];

        $sql="select * from cart where user_id=$user_id and book_id=$book_id";
     $result=mysqli_query($link,$sql);
     if(myslqi_num_rows($result)==1){
         $status='<div class="alert alert-danger" role="alert" >Item is already added to cart</div>';
     }
     else{
         $sql="Insert into cart
         (order_id,book_id,book_name,img,price,total_price,quantity,user_id) VALUES ('','$book_id','$book_name',
         '$image','$price','$price','$quantity','$user_id')";

         if(mysqli_query($link,$sql)){
            $status='<div class="alert alert-success" role="alert">Item added to cart</div>';
         }
         else{
            $status='<div class="alert alert-danger" role="alert" 
            data-auto-dismiss="2000">Cannot add to cart</div>';
         }
     }
     echo $status; 
        break;
    default:
    break;    

}

?>
