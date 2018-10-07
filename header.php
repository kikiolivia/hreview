<?php 

$query = mysqli_query($conn, "SELECT * FROM category ORDER BY id ASC");

 ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="admin/asset/favicon.ico" type="image/x-icon" rel="Shortcut Icon" /> 

    <title>Hardware Review</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="css/custom.css">

  	<!-- Font Awesome CSS -->
  	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">

  	<!-- Google Fonts -->
  	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
  	<link href="https://fonts.googleapis.com/css?family=Patrick+Hand" rel="stylesheet">
  </head>

  <body>

<nav class="navbar navbar-default" role="navigation">
		<div class="container">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	        </button>
	        <a class="navbar-brand" href="index.php?home">HReview</a>
	    </div>
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	        <ul class="nav navbar-nav">
	        <?php if(mysqli_num_rows($query)>0) { ?>
	        	<?php while($row=mysqli_fetch_array($query)) { ?>
	            <li><a href="index.php?category=<?php echo $row["id"] ?>"><span class="<?php echo $row["icon"] ?>"></span> <?php echo $row["category_name"] ?></a></li>
	            <?php } ?>
	        <?php } ?>
	        </ul>
	        <div class="col-sm-3 col-md-3 pull-right">
	            <form class="navbar-form" role="search" method="get" action="index.php?search">
	                <div class="input-group">
	                    <input type="text" class="form-control" placeholder="Search" name="keyword">
	                    <div class="input-group-btn">
	                        <button class="btn btn-primary" type="submit" name="search"><i class="fa fa-search"></i></button>
	                    </div>
	                </div>
	            </form>
	        </div>        
	    </div>
	  </div>
</nav>
   
<header class="header-cover">
	<div class="container">
		<h3><a href="index.php">Hardware Review</a></h3>
		<p>Tempat Website Review Hardware Terbaik</p>
	</div>
</header>