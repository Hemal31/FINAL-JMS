<?php
session_start();
error_reporting(0);
include('includes/config.php');
if (isset($_POST['login'])) {
	$emailcon = $_POST['emailcont'];
	$password = md5($_POST['password']);
	$query = mysqli_query($con, "select ID from users where  (Email='$emailcon' || MobileNumber='$emailcon') && Password='$password' ");
	$ret = mysqli_fetch_array($query);
	if ($ret > 0) {
		$_SESSION['jsmsuid'] = $ret['ID'];
		header('location:index.php');
	} else {

		echo "<script>alert('Invalid Details.');</script>";
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
	<link rel="stylesheet" media="all" href="css/style.css">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>

<body>

	<?php include_once('includes/header.php'); ?>

	<div id="breadcrumbs">
		<div class="container">
			<ul>
				<li><a href="index.php">Home</a></li>
				<li>Login</li>
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

						<h3 style="color:black">Login To User Panel</h3>
						<hr>
					</div>
				<div class="mb-3 form-group">
					<label for="exampleInputEmail1" class="form-label">Registered Email or Contact Number</label>
					<input type="text" class="form-control" name="emailcont">

				</div>
				<div class="mb-3 form-group">
					<label for="exampleInputPassword1" class="form-label">Password</label>
					<input type="password" class="form-control" id="exampleInputPassword1" name="password">
				</div>
				<div class="form-group mb-3">

					<a class="link--gray" style="color: blue;" href="forgot-password.php">Forgot Password?</a>
				</div>
				<div class="form-group mb-3">

				
					<button class="btn btn-primary" type="submit" name="login">LOGIN</button>
					<a href="signup.php	" class="btn btn-primary" style="text-decoration: none;">Sign Up(Register Yourself)</a>
				</div>
				
				</div>
				
			</form>

			<!-- / content -->
		</div>
		<!-- / container -->
	</div>
	<!-- / body -->

	<?php include_once('includes/footer.php'); ?>


	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script>
		window.jQuery || document.write("<script src='js/jquery-1.11.1.min.js'>\x3C/script>")
	</script>
	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>
</body>

</html>