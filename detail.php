<?php 

/** DETAIL POST **/
$detail_id = $_GET["detail"];
$query = mysqli_query($conn, "SELECT post.*, category.category_name, category.icon
      FROM post, category
      WHERE category.id = post.category_id AND post.id = '$detail_id'");
if (mysqli_num_rows($query)==0) header("location: index.php");
$row_detail = mysqli_fetch_array($query);

/** TAMPILKAN DATA POST **/
$query = mysqli_query($conn, "SELECT post.*, category.category_name, category.icon
    FROM post, category
    WHERE category.id = post.category_id
    ORDER BY id DESC
    LIMIT 4");

/** INPUT COMMENT **/
if (isset($_POST["submit"])) {
  $post_id = $_POST["post_id"];
  $name = $_POST["name"];
  $comment = $_POST["comment"];
  $date = date("Y-m-d H:i:s");
  mysqli_query($conn, "INSERT INTO comment VALUES('', '$post_id', '$name', '$comment', 0, '$date')");
  header("location:index.php?detail=$post_id&success-comment#success");
}

/** TAMPIL COMMENT **/
$comment = mysqli_query($conn, "SELECT * FROM comment WHERE post_id = '$detail_id'
    AND STATUS = '1' ORDER BY id DESC");
$data = mysqli_num_rows($comment);

 ?>

<div class="main-article">
  <div class="container">
    <div class="main-post">
      <div class="content">
        <h1><?php echo $row_detail["tittle"] ?></h1>
        <div class="row">
          <div class="col-md-3">
            <p><a href="index.php?category=<?php echo $row_detail["category_id"] ?>"><?php echo $row_detail["category_name"] ?></a></p>
          </div>
          <div class="col-md-offset-3 col-md-6">
            <p><?php echo tgl_indonesia($row_detail["date"]) ?></p>
          </div>
        </div>
        <hr>
      </div>
      <div class="text-center">
        <div class="image">
          <img src="img/<?php echo $row_detail["image"] ?>" style="width: 600px; padding: 20px 0;">
        </div>
        <div class="content">
          <p><?php echo $row_detail["description"] ?></p>
          <p><?php echo $row_detail["description1"] ?></p>
          <p><?php echo $row_detail["description2"] ?></p>
          <p><?php echo $row_detail["description3"] ?></p>
        </div>
      </div>
    </div>
  </div>

<div class="recent-post text-center">
    <div class="container">
    <div class="title-recent">
      <h3>Last Post Article</h3>
    </div>
    <div class="row">
      <?php if(mysqli_num_rows($query)>0) { ?>
        <?php while($row=mysqli_fetch_array($query)) { ?>
        <div class="col-md-3 col-sm-6">
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
    </div>
  </div>
</div>
  
  <!-- Komentar -->
  <div class="container">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><span class="fa fa-comments" aria-hidden="true"></span> 
        <?php echo $data ?> Komentar</h3>
      </div>
      <div class="panel-body">
        <ul class="list-group">
        <?php if(mysqli_num_rows($comment)) { ?>
          <?php while($row_comment = mysqli_fetch_array($comment)) { ?>
            <li class="list-group-item">
              <strong><?php echo $row_comment["name"] ?></strong>: <?php echo $row_comment["reply"] ?>
            </li>
          <?php } ?>
        <?php } ?>
        </ul>
      </div>
    </div>
  </div>

  <!-- Form Komentar -->
  <div class="container">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><span class="fa fa-pencil-square-o" aria-hidden="true"></span> Komentar</h3>
      </div>
      <div class="panel-body" id="success">
        <form class="form-horizontal" method="post">

          <?php if(isset($_GET["success-comment"])) { ?>
            <div class="form-group">
              <div class="col-sm-10">
                <p style="color: blue;">Terimakasih ! Komentar Anda sedang diteliti</p>
              </div>
            </div>
          <?php } ?>

          <div class="form-group">
            <label for="inputNama3" class="col-sm-2 control-label">Nama</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="inputNama3" name="name">
            </div>
          </div>
          <div class="form-group">
            <label for="inputPesan3" class="col-sm-2 control-label">Pesan</label>
            <div class="col-sm-10">
              <textarea class="form-control" rows="3" name="comment"></textarea>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <button type="submit" class="btn btn-primary" name="submit">Kirim</button>
              <input type="hidden" name="post_id" value="<?php echo $detail_id ?>" />
            </div>
          </div>

        </form>
      </div>
    </div>
  </div>


</div>