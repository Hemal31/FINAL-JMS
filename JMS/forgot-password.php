<?php
session_start();
error_reporting(0);
include('includes/config.php');

if(isset($_POST['submit']))
  {
    $MobileNumber=$_POST['MobileNumber'];
    $Email=$_POST['Email'];

        $query=mysqli_query($con,"select ID from users where  Email='$Email' and MobileNumber='$MobileNumber' ");
    $ret=mysqli_fetch_array($query);
    if($ret>0){
      $_SESSION['MobileNumber']=$MobileNumber;
      $_SESSION['Email']=$Email;
     
     echo "<script type='text/javascript'> document.location ='resetpassword.php'; </script>";
    }
    else{
      echo "<script>alert('Invalid Details. Please try again.');</script>";
    }
  }
  ?>

<!DOCTYPE html>
<html lang="en">
    <head>
       
        <title>Jewellery Shop Management System - Forgot Password</title>
        <link href="css/styles.css" rel="stylesheet" />
       
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    </head>
    <body >
        
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Forgot Password</h3></div>
                                    <div class="card-body">
                                        <form method="post">
                                            <div class="form-floating mb-3">
                                                 <input type="Email" class="form-control" placeholder="Email" name="Email" required="">
                                                <label for="username">Email</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" placeholder="Mobile Number" required="" name="MobileNumber" maxlength="10" pattern="[0-9]{10}">
                                                <label for="inputPassword">Mobile Number</label>
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
          
        </div>
        
    </body>
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
</html>
