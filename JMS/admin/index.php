<?php
session_start();
//error_reporting(0);
include("includes/config.php");
if(isset($_POST['submit']))
{
$username=$_POST['username'];
$password=md5($_POST['inputPassword']);
$ret=mysqli_query($con,"SELECT ID FROM tbladmin WHERE UserName='$username' and Password='$password'");
$num=mysqli_fetch_array($ret);
if($num>0)
{
$_SESSION['alogin']=$_POST['username'];
$_SESSION['aid']=$num['ID'];
header("location:dashboard.php");
}else{
echo "<script>alert('Invalid username or password');</script>";
//header("location:index.php");
}
}
?>


<!DOCTYPE html>
<!--[if IE 8]> <html class="ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>Jewellery Shop Management System || Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<link rel="stylesheet" media="all" href="../css/style.css">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>

<body>

	<?php include_once('includes/header2.php'); ?>

	<div id="breadcrumbs">
		<div class="container">
			<ul>
				<li><a href="index.php">Home</a></li>
				<li>Admin Login</li>
			</ul>
		</div>
		<!-- / container -->
	</div>
	<!-- / body -->

	<div id="body">
		<div class="container  ">

			<form action="#" method="post">
				<div class="col-md-8 container border my-5 p-4" style="background-color: #f8f9fa;">
					<div class="mb-3 form-group">

						<h3 style="color:black">Login To Admin Panel</h3>
						<hr>
					</div>
				<div class="mb-3 form-group">
					<label for="exampleInputEmail1" class="form-label">Username</label>
					<input type="text" class="form-control" id="username" name="username">

				</div>
				<div class="mb-3 form-group">
					<label for="exampleInputPassword1" class="form-label">Password</label>
					<input type="password" class="form-control" id="inputPassword" name="inputPassword">
				</div>
				<div class="form-group mb-3">
                <a class="link--gray" href="forgot-password.php" style="color: blue;">Forgot Password?</a>
					
				</div>
				<div class="form-group mb-3">

				
					<button class="btn btn-primary"  type="submit" name="submit">LOGIN</button>
					<a href="../index.php" class="btn btn-primary" style="text-decoration: none;">Back Home!!!</a>
				
				
				</div>
				
			</form>

			<!-- / content -->
		</div>
		<!-- / container -->
	</div>
	<!-- / body -->

	<?php include_once('../includes/footer.php'); ?>


	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script>
		window.jQuery || document.write("<script src='js/jquery-1.11.1.min.js'>\x3C/script>")
	</script>
	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>
</body>

</html>