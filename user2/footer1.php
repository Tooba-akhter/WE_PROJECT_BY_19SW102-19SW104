


<footer>
            
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="address">
                        <h4>Our Address</h4>
                        <h6>The BookStore Theme, 4th Store Beside that building, USA</h6>
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
    <!-- footer section-->

<!-- The Modal -->
<div class="modal" id="loginmodal">
  <div class="modal-dialog">
    <div class="modal-content">

        <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title text">LOGIN TO KHAZANA</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <span id="help" class="text-danger"></span>
      <form class = " " method = "post">
                <div class=" form-group">
                    <i class = "fa fa-envelope"></i><label for = ""> &nbsp; &nbsp; Email </label>
                    <input type = " email" name = "username" id= "username" value = ""class ="form-control" placeholder = "Enter Email">

               <!--     <span class= "text-danger"><?php echo $username_err?></span>  -->
</div>
<div class=" form-group">
                    <i class = "fa fa-key"></i><label for = ""> &nbsp; &nbsp; Password </label>
                    <input type = "password" name = "password" id= "password" value = ""class ="form-control" placeholder = "Enter Password">
                 <!--   <span  class= "text-danger"><?php echo $password_err  ?></span> -->
</div>
<div class = "form-group">
   <input type="submit" id="submit" name="submit" class="btn btn-success" 
   style="width:100%" value="Login">
</div>
    </div>
  </div>





<script type ="text/javascript">

$(document).ready(function(){

  $('.login').click(function( event){
       
       event.stopPropagation();
       event.stopImmediatePropagation();
       $('#loginmodal').modal('show');
       return false;


  });


 cart_count();

function cart_count(){

    $.ajax({

        url:'count_cart.php',
        method: "POST",
        dataType: "text",
        success:function(data){

            $('#countcart').html(data);
        }

    });
}

$('button[type=button]').click(function(){
    var id=$(this).attr("id");
    var book_id=$('#book_id'+id+'').val();
    var book_name=$('#book_name'+id+'').val();
    var price=$('#price'+id+'').val();
    var image=$('#img'+id+'').val();
    var quantity=1;
    var action="add_to_cart";

    $.ajax({
        url:"cart_process.php",
        method: "post",
        dataType: "text",
        data: {book_id:book_id,book_name:book_name,price:price,
          image:image,quantity:quantity,action:action},
        success:function(msg){

            cart_count();
            $('#status').html(msg);
            window.setTimeout(function(){
                $(".alert").fadeTo(500,0).slideUp(500,function(){
                    $(this).remove();
                });
            },2000);

        }
    });


  /*$('#login').click(function(){
    //  var username=$('#username').val();
     // var password=$('#password').val();


     // if(username=='' || password==''){
         $('#help').html("both fields are required");

      } 
      else{
        $.ajax{
          url:"loginprocess.php",
          method: "POST",
          dataType: "text",
          data:{username:username, password:password},
          success:function(msg){
              if(msg==1){
                  window.location.href= window.location.href;

              }else{
                  $('#help').html("invalid user or password");
              }
          }
      });    
      }
      

*/

});
});
</script>

</body>
</html>