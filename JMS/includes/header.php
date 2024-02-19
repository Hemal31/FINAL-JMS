
<style>
    .links:hover{
       background-color: #d8d8d8;
       text-decoration: none;
    }

   
</style>
<header id="header">
    
        <div class="container">
            <strong><a href="index.php" style="color:#737375; text-decoration:none;" >Jewellery Management System</a></strong>
            <div class="right-links">
                <ul>
                     <?php if (strlen($_SESSION['jsmsuid']>0)) {?>
                    <li> <?php
                            $userid= $_SESSION['jsmsuid'];
$ret2=mysqli_query($con,"select sum(products.shippingCharge+products.productPrice) as total,COUNT(orders.PId) as totalp from orders join products on products.id=orders.PId where orders.UserId='$userid' and orders.IsOrderPlaced is null");
$resultss=mysqli_fetch_array($ret2);

?>
                        <a href="cart.php"><span class="ico-products"></span><?php echo $resultss['totalp'];?> products, ₹<?php echo $resultss['total'];?></a></li>
                   <li class="links"><a href="wishlist.php"><span class="ico-heart"></span>Wishlist</a></li>
                    <li class="links"><a href="profile.php"><span class="ico-account"></span>My Profile</a></li>
                    <li class="links"><a href="my-orders.php"><span class="ico-cart"></span>My Orders</a></li>
                    <li class="links"><a href="change-password.php"><span class="ico-signout"></span>Setting</a></li>
                    <li class="links"><a href="logout.php"><span class="ico-signout"></span>Sign out</a></li><?php }?>
                </ul>
            </div>
        </div>
        <!-- / container -->
    </header>
    <!-- / header -->

    <nav id="menu">
        <div class="container">
            <div class="trigger"></div>
            <ul>
                <li class="links"><a href="index.php" style="text-decoration: none;">Home</a></li>
                 <li class="links"><a href="about.php" style="text-decoration: none;">About Us</a></li>
                  <li class="links"><a href="products.php" style="text-decoration: none;">Products</a></li>
                <li class="links"><a href="category.php" style="text-decoration: none;">Category</a></li>
               
               
                <li class="links"><a href="contact.php"  style="text-decoration: none;">Contact Us</a></li>
                <?php if (strlen($_SESSION['jsmsuid']==0)) {?>
                <li class="links"><a href="signup.php"  style="text-decoration: none;">Register</a></li>
                <li class="links"><a href="login.php"  style="text-decoration: none;">Login</a></li>
                <li class="links"><a href="admin/index.php"  style="text-decoration: none;">Admin Login</a></li><?php }?>
            </ul>
        </div>
        <!-- / container -->
    </nav>
    <!-- / navigation -->