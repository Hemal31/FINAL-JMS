<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['aid'] == 0)) {
    header('location:logout.php');
} else {

?>

    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>Jewellery Shop Management System - Between Dates Reports</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="js/all.min.js" crossorigin="anonymous"></script>
    </head>

    <body>
        <?php include_once('includes/header.php'); ?>
        <div id="layoutSidenav">
            <?php include_once('includes/sidebar.php'); ?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Between Dates Reports</h1>
                        <hr>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Between Dates Reports</li>
                        </ol>
                        <div class="card mb-4 p-4   ">
                            <div class="card-body">
                                <form method="post" action="bwdates-reports-details.php">
                                    <div >
                                        <div class="col-2"> <b>From Date:</b> </div>
                                        <div class="col-8">
                                            <input type="date" class="form-control" name="fromdate" id="fromdate" value="" required='true' />
                                        </div>
                                    </div>
                                    <br>
                                    <div >
                                        <div class="col-2"> <b>To Date:</b> </div>
                                        <div class="col-8"><input type="date" class="form-control" name="todate" id="todate" value="" required='true' /></div>
                                    </div>
                                    <br>
                                    <div >
                                        <div class="col-2 my-3"> <b>Request Type:</b> </div>
                                        <div class="col-6 ">
                                        <div>

                                            <input type="radio" name="requesttype" value="all" checked="true"> &nbsp; All
                                        </div>    
                                        </div>
                                        <div>

                                            <input type="radio" name="requesttype" value=""> &nbsp; Not Confirmed Order
                                        </div>
                                        <div>

                                            <input type="radio" name="requesttype" value="Order Confirmed"> &nbsp; Order Confirmed
                                        </div>
                                        <div>

                                            <input type="radio" name="requesttype" value="Pickup"> &nbsp; Pickup
                                        </div>
                                        <div>

                                            <input type="radio" name="requesttype" value="On The Way"> &nbsp; On The Way
                                        </div>
                                        <div>

                                            <input type="radio" name="requesttype" value="Delivered"> &nbsp; Delivered
                                        </div>
                                        <div>
                                            <input type="radio" name="requesttype" value="Order Cancelled"> &nbsp; Order Cancelled
                                        </div>
                                    </div>

                                    <div class="my-4">
                                        <div class="col-2"><button type="submit" name="submit" class="btn btn-primary">Submit</button></div>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </main>
                <?php include_once('includes/footer.php'); ?>
            </div>
        </div>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>

    </html>
<?php } ?>