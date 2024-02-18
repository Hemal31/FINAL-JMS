<?php session_start();
include_once('includes/config.php');
if (strlen($_SESSION['aid']==0)) {
  header('location:logout.php');
  } else{
//For Adding Sub-categories
if(isset($_POST['submit']))
{
$category=$_POST['category'];
$subcat=$_POST['subcategory'];
$createdby=$_SESSION['aid'];
$sql=mysqli_query($con,"insert into subcategory(categoryid,subcategoryName,createdBy) values('$category','$subcat','$createdby')");
echo "<script>alert('Sub-Category added successfully');</script>";
echo "<script>window.location.href='manage-subcategories.php'</script>";

}

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Static Navigation - SB Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body>
   <?php include_once('includes/header.php');?>
        <div id="layoutSidenav">
   <?php include_once('includes/sidebar.php');?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Add Category</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Add Category</li>
                        </ol>
                        <div class="card-body p-4 border" style="background-color: #f8f9fa;">
                            <div >
<form  method="post">                                
<div >
<label class="col-2"> <strong>Category Name</strong> </label>
<div class="col-8">
<select name="category" class="form-control" required>
<option value="">Select Category</option> 
<?php $query=mysqli_query($con,"select * from category");
while($row=mysqli_fetch_array($query))
{?>

<option value="<?php echo $row['id'];?>"><?php echo $row['categoryName'];?></option>
<?php } ?>
</select>    
</div>
</div>

<div class="my-4">
<label > <strong>Sub Category name</strong> </label>
<div class="col-8"><input type="text" placeholder="Enter SubCategory Name"  name="subcategory" class="form-control" required></div>
</div>

<div class="row my-4">
<div class="col-2"><button type="submit" name="submit" class="btn btn-primary">Submit</button></div>
</div>

</form>
                            </div>
                        </div>
                    </div>
                </main>
          <?php include_once('includes/footer.php');?>
            </div>
        </div>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
<?php } ?>