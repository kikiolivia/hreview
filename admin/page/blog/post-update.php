<?php 
if(isset($_POST["update"])) {
    $id_post = $_POST["id_post"];
    $category_id = $_POST["category_id"];
    $tittle = $_POST["tittle"];
    $description = $_POST["description"];
    $description1 = $_POST["description1"];
    $description2 = $_POST["description2"];
    $description3 = $_POST["description3"];

    $file_name = $_FILES["file"]["name"];
    $tmp_name = $_FILES["file"]["tmp_name"];
    if($file_name=="" || empty($file_name)) {
        mysqli_query($conn, "UPDATE post SET category_id = '$category_id', tittle = '$tittle',
            description = '$description', description1 =  '$description1', description2 =  '$description2', description3 = '$description3' WHERE id = '$id_post' ");
    } else {
        move_uploaded_file($tmp_name, "../img/".$file_name);
        mysqli_query($conn, "UPDATE post SET category_id = '$category_id', tittle = '$tittle',
            description = '$description', description1 =  '$description1', description2 =  '$description2', description3 = '$description3' ,image = '$file_name' WHERE id = '$id_post' ");
    }
    header("Location: index.php?post");
}

/** TAMPILKAN DATA PADA FORM **/
$post_id = $_GET["post-update"];
$edit = mysqli_query($conn, "SELECT * FROM post WHERE id = '$post_id'");
$row_edit = mysqli_fetch_array($edit);

$category = mysqli_query($conn, "SELECT * FROM category ORDER BY id ASC");

$post = mysqli_query($conn, "SELECT post.*, category.category_name
    FROM post, category
    WHERE post.category_id = category.id
    ORDER BY post.id DESC");

 ?>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Blog &raquo; Post</h1>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Input Data
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <form role="form" action="" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label>Category</label>
                                <select class="form-control" name="category_id">
                                    <option value=""> - choose - </option>
                                    <?php if(mysqli_num_rows($category)) { ?>
                                        <?php while($row_cat=mysqli_fetch_array($category)) { ?>
                                            <option <?php echo $row_edit["category_id"]==$row_cat["id"] ? "selected='selected'" : "" ?> 
                                            value="<?php echo $row_cat["id"] ?>"> <?php echo $row_cat["category_name"] ?> </option>
                                        <?php } ?>
                                    <?php } ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Tittle</label>
                                <input class="form-control" type="text" name="tittle" value="<?php echo $row_edit["tittle"] ?>" />
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea class="form-control" rows="5" name="description"><?php echo $row_edit["description"] ?></textarea>
                            </div>
                            <div class="form-group">
                                <label>Description 1</label>
                                <textarea class="form-control" rows="5" name="description1"><?php echo $row_edit["description1"] ?></textarea>
                            </div>
                            <div class="form-group">
                                <label>Description 2</label>
                                <textarea class="form-control" rows="5" name="description2"><?php echo $row_edit["description2"] ?></textarea>
                            </div>
                            <div class="form-group">
                                <label>Description 3</label>
                                <textarea class="form-control" rows="5" name="description3"><?php echo $row_edit["description3"] ?></textarea>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <?php if($row_edit["image"]==""){echo "<p><img src='asset/no-image.png' width='88' /></p>";}else{ ?>
                                <p><img src="../img/<?php echo $row_edit["image"]?>" width="88"></p>
                                <input type="file" name="file" />
                                <?php } ?>
                            </div>
                            <button type="submit" name="update" class="btn btn-success">Update</button>
                            <button type="reset" class="btn btn-warning">Reset</button>
                            <input type="hidden" name="id_post" value="<?php echo $row_edit["id"] ?>">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                List Data
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>Category</th>
                                <th>Title</th>
                                <th>Description</th>
                                <th>Description 1</th>
                                <th>Description 2</th>
                                <th>Description 3</th>
                                <th>Image</th>
                                <th>Update</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php if(mysqli_num_rows($post)) { ?>
                            <?php while($row_post=mysqli_fetch_array($post)) { ?>
                                <tr>
                                    <td><?php echo $row_post["category_name"] ?></td>
                                    <td><?php echo $row_post["tittle"] ?></td>
                                    <td><?php echo $row_post["description"] ?></td>
                                    <td><?php echo $row_post["description1"] ?></td>
                                    <td><?php echo $row_post["description2"] ?></td>
                                    <td><?php echo $row_post["description3"] ?></td>
                                    <td>
                                    <?php if($row_post["image"]==""){echo "<img src='asset/no-image.png' width='88'/>";} else { ?>
                                        <img src="../img/<?php echo $row_post["image"] ?>" width="88" class="img-responsive" />
                                    <?php } ?>
                                    </td>
                                    <td class="center"><a href="index.php?post-update=<?php echo $row_post["id"] ?>" class="btn btn-primary btn-xs" type="button">Update</a></td>
                                    <td class="center"><a href="index.php?post-delete=<?php echo $row_post["id"] ?>" class="btn btn-primary btn-xs" type="button">Delete</a></td>
                                </tr>
                            <?php } ?>
                        <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>