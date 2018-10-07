<?php 

if(isset($_GET["comment-delete"])) {
	$id_comment = $_GET["comment-delete"];
	mysqli_query($conn, "DELETE FROM comment WHERE id = '$id_comment'");
	header("Location: index.php?comment");
}

 ?>