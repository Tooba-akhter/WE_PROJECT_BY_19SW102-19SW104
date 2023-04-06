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
  <img class="card-img-top" src="images/add_book.jpg" alt="Card image cap" height="200" style="width: 80%">
<br>  
  <div class="card-body">
    <h3 class="card-title text-primary">Add Books</h3>
   
    <a href="add_books.php" class="btn btn-success" style="width:100%; ">Add Books</a>
  </div>
</div>

<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="images/view.png" alt="Card image cap" height="200" style="width: 80%">
  <br>
  <div class="card-body">
    <h3 class="card-title text-primary">View Books</h3>
   
    <a href="view_books.php" class="btn btn-success" style="width:100%; ">View Books</a>
  </div>
</div>

<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="images/del_book.png" alt="Card image cap" height="200" style="width: 80%">
  <div class="card-body">
    <h3 class="card-title text-primary">Remove Books</h3>
   
    <a href="delete_books.php" class="btn btn-success" style="width:100%; ">Remove Books</a>
  </div>
</div>
</div>
</div>
  <div class="col-sm-2">
      
    </div>

		</div>
	</div>
</div>
<?php require_once 'footer.php';?>