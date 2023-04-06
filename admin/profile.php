<?php
require_once 'header1.php';

?>
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-2">
			
		</div>
		<div class="col-sm-8">
			<div class="alert alert-success" style="background-colour:#34ce57; colour:white; text-align:center ; ">
				<h5>Welcome to Admin Panel</h5>

			</div>
			<div class="card-deck">
			<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="images/user.png" alt="Card image cap" height="250">
  <div class="card-body">
    <h3 class="card-title text-primary">Registered Users</h3>
   
    <a href="registered_users.php" class="btn btn-success" style="width:100%; ">View Users</a>
  </div>
</div>

<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="images/book.jpg" alt="Card image cap" height="250">
  <div class="card-body">
    <h3 class="card-title text-primary">Manage Books</h3>
   
    <a href="manage_books.php" class="btn btn-success" style="width:100%; ">View Books</a>
  </div>
</div>

</div>
</div>
<diV class="col-sm-2"></div>

		</div>
	</div>
</div>
<?php require_once 'footer.php';?>