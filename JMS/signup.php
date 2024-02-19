<?php 
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_POST['submit']))
  {
    $fname=$_POST['firstname'];
    $lname=$_POST['lastname'];
    $contno=$_POST['mobilenumber'];
    $email=$_POST['email'];
    $password=md5($_POST['password']);

    $ret=mysqli_query($con, "select Email from users where Email='$email' || MobileNumber='$contno'");
    $result=mysqli_fetch_array($ret);
    if($result>0){

echo '<script>alert("This email or Contact Number already associated with another account")</script>';
    }
    else{
    $query=mysqli_query($con, "insert into users(FirstName, LastName, MobileNumber, Email, Password) value('$fname', '$lname','$contno', '$email', '$password' )");
    if ($query) {
    
    echo '<script>alert("You have successfully registered")
	window.location.href="login.php";
	</script>';

  }
  else
    {
      echo '<script>alert("Something Went Wrong. Please try again")</script>';
    }
}
}
?>
<!DOCTYPE html>
<!--[if IE 8]> <html class="ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<title>Jewellery Shop Management System || Signup</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<link rel="stylesheet" media="all" href="css/style.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

	<script type="text/javascript">
function checkpass()
{
if(document.signup.password.value!=document.signup.repeatpassword.value)
{
alert('Password and Repeat Password field does not match');
document.signup.repeatpassword.focus();
return false;
}
return true;
} 
</script>
</head>
<body>

	<?php include_once('includes/header.php');?>

	<div id="breadcrumbs">
		<div class="container">
			<ul>
				<li><a href="index.php">Home</a></li>
				<li>Signup</li>
			</ul>
		</div>
		<!-- / container -->
	</div>
	<!-- / body -->

	<div id="body">
		<div class="container ">
			<div class="my-4 col-md-6 container border p-4" style="background-color: #f8f9fa;">
				<div class="mb-4">

					<h3>Create an account</h3>
					<hr>
				</div>
                                   <form action="#" method="post" name="signup" onsubmit="return checkpass();">
								   <div class="mb-3 form-group">

                                   	<label> First Name</label>
									   <input type="text" name="firstname" placeholder="Your First Name..." required="true" class="form-control">
								   </div>
								   <div class="mb-3 form-group">
								   <label> Last Name</label>
                                          <input type="text" name="lastname" placeholder="Your Last Name..." required="true" class="form-control">
								   </div>
								   <div class="mb-3 form-group">
								   <label> Mobile Number</label>
                                          <input type="text" name="mobilenumber" maxlength="10" pattern="[0-9]{10}" placeholder="Mobile Number" required="true" class="form-control">
								   </div>
								   <div class="mb-3 form-group">
								   <label> Email address</label>
                                          <input type="email" name="email" placeholder="Email address" required="true" class="form-control">
								   </div>
								   <div class="mb-3 form-group">
								   <label> Password</label>
                                          <input type="password" name="password" placeholder="Enter password" required="true" class="form-control">
								   </div>
                                      <div class="mb-5 form-group">
									  <label>Repeat Password</label>
                                          	<input type="password" name="repeatpassword" placeholder="Enter repeat password" required="true" class="form-control">
									  </div>      
									  <div class="mb-4 form-group">
									  <button class="btn btn-primary" type="submit" name="submit">REGISTER</button>
									  </div>

                                    
                                        
                                   </form>
			</div>
                                
                         
			<!-- / content -->
		</div>
		<!-- / container -->
	</div>
	<!-- / body -->

<?php include_once('includes/footer.php');?>


	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script>window.jQuery || document.write("<script src='js/jquery-1.11.1.min.js'>\x3C/script>")</script>
	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
