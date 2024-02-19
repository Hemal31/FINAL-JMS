<?php
session_start();
error_reporting(0);
include('includes/config.php');
error_reporting(0);

if(isset($_POST['submit']))
  {
    $MobileNumber=$_SESSION['MobileNumber'];
    $Email=$_SESSION['Email'];
    $password=md5($_POST['newpassword']);

        $query=mysqli_query($con,"update users set Password='$password'  where  Email='$Email' && MobileNumber='$MobileNumber' ");
   if($query)
   {
echo "<script>alert('Password successfully changed');</script>";
session_destroy();
   }
  
  }
  ?>

<!DOCTYPE html>
<html lang="en">
    <head>
       
        <title>Jewellery Shop Management System - Reset Password</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script type="text/javascript">
function checkpass()
{
if(document.changepassword.newpassword.value!=document.changepassword.confirmpassword.value)
{
alert('New Password and Confirm Password field does not match');
document.changepassword.confirmpassword.focus();
return false;
}
return true;
} 

</script>
    </head>
    <body>
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Reset Password</h3></div>
                                    <div class="card-body">
                                        <form method="post" name="changepassword" onsubmit="return checkpass();">
                                            <div class="form-floating mb-3">
                                                 <input class="form-control" type="password" required="" name="newpassword" placeholder="New Password">
                                                <label for="username">New Password</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" type="password" name="confirmpassword" required="" placeholder="Confirm Your Password">
                                                <label for="inputPassword">Confirm Password</label>
                                            </div>
                                            
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                             
                                                <button type="submit" name="submit" class="btn btn-primary">Reset</button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="index.php">Sign In!!!</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <style>
                .foo{
                    /* bottom: 0; */
                    position: absolute;
                    width: 100%;
                    margin-top: 17%;
                    background-color: #f8f9fa;
                }
            </style>
            <div id="layoutAuthentication_footer" class="foo">
                <?php include_once('Admin/includes/footer.php');?>
            </div>
        </div>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
