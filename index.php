<?php 
ob_start();
session_start();
include "connection.php";
include "header.php";
include "function/function.php";
date_default_timezone_set("Asia/Jakarta");
 ?>

	<article>
	  <?php 
	  	if (isset($_GET["home"]) || isset($_GET["page"]))  {include "latest-post.php";}
        else if (isset($_GET["detail"])) {include "detail.php";}
        else if (isset($_GET["category"]) || isset($_GET["page-category"])) {include "category.php";}
        else if (isset($_GET["search"]) || isset($_GET["page-search"])) {include "search.php";}
        else {include "latest-post.php";}
	   ?>
	</article>

<?php 
include "footer.php";
mysqli_close($conn);
ob_end_flush();
 ?>