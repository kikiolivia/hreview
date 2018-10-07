<?php

/** PAGING POST **/
$per_page = 6;
$cur_page = 1;
if(isset($_GET["page"])){
  $cur_page = $_GET["page"];
  $cur_page = ($cur_page > 1) ? $cur_page : 1;
}
$total_data = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM post"));
$total_page = ceil($total_data/$per_page);
$offset = ($cur_page - 1) * $per_page;

/** TAMPILKAN DATA POST **/
$query = mysqli_query($conn, "SELECT post.*, category.category_name, category.icon
    FROM post, category
    WHERE category.id = post.category_id
    ORDER BY id DESC
    LIMIT $per_page OFFSET $offset");

 ?>

<section class="menu-course">
  	<div class="container text-center">
		<h1>Home</h1>
	</div>
</section>

<section class="main-content">
	  	<div class="container">
	  		<div class="row">
	  		
			<?php if(mysqli_num_rows($query)) { ?>
				<?php while($row=mysqli_fetch_array($query)) { ?>
	  			<div class="col-md-4 col-sm-6">
	  				<a href="index.php?detail=<?php echo $row["id"] ?>">
	  					<div class="box">
	  						<div class="image">
	  							<img src="img/<?php echo $row["image"] ?>">
	  						</div>
	  						<div class="caption">
	  							<div class="category">
	  								<p><?php echo $row["category_name"] ?></p>
	  							</div>
	  							<div class="title">
	  								<p><?php echo $row["tittle"] ?></p>
	  							</div>
	  						</div>
	  					</div>
	  				</a>
	  			</div>
	  			<?php } ?>
	  		<?php } ?>

		  	<?php if(isset($total_page)) { ?>
			  <?php if($total_page > 1) { ?>
			    <nav class="text-center">
			      <ul class="pagination">
			        <?php if($cur_page > 1) { ?>
			          <li>
			              <a href="index.php?page=<?php echo $cur_page - 1?>" aria-label="Previous">
			                  <span aria-hidden="true">Prev</span>
			              </a>
			          </li>
			        <?php } else { ?>
			          <li class="disabled"><span aria-hidden="true">Prev</span></li>
			        <?php } ?>
			        <?php if($cur_page < $total_page) { ?>
			          <li>
			            <a href="index.php?page=<?php echo $cur_page + 1?>" aria-label="Next">
			              <span aria-hidden="true">Next</span>
			            </a>
			          </li>
			        <?php } else { ?>
			          <li class="disabled"><span aria-hidden="true">Next</span></li>
			        <?php } ?>
			      </ul>
			    </nav>
			  <?php } ?>
			<?php } ?>

	  	</div>
	  </section>