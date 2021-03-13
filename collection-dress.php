<?php

require_once 'login-page.php';

$conn = new mysqli ($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

$query = "SELECT * from inventory where category = 'dress'";

$result = $conn->query($query);
if(!$result) die ($conn->error);

$rows = $result->num_rows;

for ($j=0; $j<$rows; ++$j) {
//    $result->data_seek($j);
    $row = $result->fetch_array(MYSQLI_ASSOC);

echo <<<_END
<pre>
	SKU: $row[inv_id]
    Product Name: $row[product name]
    Quantity: $row[quantity]
    Price: $row[price]
    Category: $row[category]
    Images: $row[images]
</pre>

    <form action='deleterecord.php' method='post'>
        <input type='hidden' name='delete' value='yes'>
        <input type='hidden' name='inv_id' value='$row[inv_id]'>
        <input type='submit' value='DELETE RECORD'>
    </form>

_END;
}

$conn->close();

?>

<!-- code from mid-term assignment
<html>
    <head>
		<title>Suburban Outfitters | SHOP DRESSES</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="suburbanStyles.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
	</head>
	
	<body id="collection-dress">
	
		<nav>
			<div class="logo">
				<a href="home-page.php"><img src="images/suburban outfitters logo.png" class="logo-image" style="height: 46px; width: 46px;">
				<span class="storename">Suburban Outfitters</span></a>
			</div>
			<ul class="nav-links">
				<li>
					<a href="home-page.php">HOME</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">CLOTHING</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="collection-top.php">TOP</a><br>
						<a class="dropdown-item" href="collection-bottom.php">BOTTOMS</a><br>
						<a class="dropdown-item" href="collection-dress.php">DRESSES</a><br>
						<a class="dropdown-item" href="collection.php">SHOP ALL</a>
					</div>
				</li>
				<li>
					<a href="collection-sale.php">SALE</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="images/profile-logo.png" class="img-fluid" style="height: 30px; width: 30px; margin-top: -5px;"></a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="login-page.php">Sign In</a><br>
						<a class="dropdown-item" href="signup-page.php">Register</a><br>
					</div>
				</li>
				<li>
					<a href="cart-page.php"><img src="images/cart-logo.png" class="img-fluid" style="height: 30px; width: 30px; margin-top: -5px;"></a>
				</li>
			</ul>
			<div class="search"> 
				<form action="#"> 
					<input type="text"
						placeholder="Search.."
						name="search"> 
					<button> 
						Search
					</button> 
				</form> 
			</div> 
		</nav>
		
		<div class="container-fluid">
			<div class="categories">
				<div class="small-container">
					<div class="row">
						<div class="col-sm-3">
							<h2 class="categories-name">TOPS</h2>
							<a href="collection-top.php"><img src="images/blue-collar-top1.png"></a>
						</div>
						<div class="col-sm-3">
							<h2 class="categories-name">BOTTOMS</h2>
							<a href="collection-bottom.php"><img src="images/pattern-skirt1.png"></a>
						</div>
						<div class="col-sm-3">
							<h2 class="categories-name">SHOP ALL</h2>
							<a href="collection.php"><img src="images/shop-all.png"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="container-fluid">
			<div class="small-container-fluid">
				<h2 class="title">SHOP DRESSES</h2>
				<div class="row">
					<div class="col-sm-4">
						<a href="#"><img src="images/white-lace-dress1.png"></a>
						<h4>White Lace Dress</h4>
						<p>$55.00</p>
					</div>
					<div class="col-sm-4">
						<a href="#"><img src="images/fringe-dress1.png"></a>
						<h4>Fringe Hem Dress</h4>
						<p>$35.00</p>
					</div>
					<div class="col-sm-4">
						<a href="#"><img src="images/wrap-dress1.png"></a>
						<h4>Floral Wrap Dress</h4>
						<p>$45.00</p>
					</div>
					<div class="col-sm-4">
						<a href="#"><img src="images/floral-squareneck-dress1.png"></a>
						<h4>Floral Square Neck Dress</h4>
						<p>$55.00</p>
					</div>
					<div class="col-sm-4">
						<a href="#"><img src="images/blue-sleeveless-dress1.png"></a>
						<h4>Blue Sleeveless Open Back Dress</h4>
						<p>$30.00</p>
					</div>
					<div class="col-sm-4">
						<a href="#"><img src="images/puff-pink-dress1.png"></a>
						<h4>Puff Sleeves Pink Dress</h4>
						<p>$35.00</p>
					</div>
					<div class="col-sm-4">
						<a href="#"><img src="images/blue-pattern-dress1.png"></a>
						<h4>Blue Pattern Tweed Dress</h4>
						<p>$55.00</p>
					</div>
					<div class="col-sm-4">
						<a href="#"><img src="images/poka-dot-white-dress1.png"></a>
						<h4>Swiss Dot White Dress</h4>
						<p>$55.00</p>
					</div>
					<div class="col-sm-4">
						<a href="#"><img src="images/allover-floral-dress1.png"></a>
						<h4>Open Back Floral Dress</h4>
						<p>$45.00</p>
					</div>
					<div class="col-sm-4">
						<a href="#"><img src="images/offshoulder-dress1.png"></a>
						<h4>Offshoulder Blue & White Dress</h4>
						<p>$35.00</p>
					</div>
					<div class="col-sm-4">
						<a href="#"><img src="images/black-bodycon-dress1.png"></a>
						<h4>Black Bodycon Dress</h4>
						<p>$25.00</p>
					</div>
					<div class="col-sm-4">
						<a href="#"><img src="images/white-dress1.png"></a>
						<h4>White Lantern Sleeves Dress</h4>
						<p>$40.00</p>
					</div>
					<div class="col-sm-4">
						<a href="#"><img src="images/black-sheer-dress1.png"></a>
						<h4>Black Sheer Dress</h4>
						<p>$50.00</p>
					</div>
					<div class="col-sm-4">
						<a href="#"><img src="images/floral-jumpsuit1.png"></a>
						<h4>Floral Jumpsuit</h4>
						<p>$35.00</p>
					</div>
					<div class="col-sm-4">
						<a href="#"><img src="images/white-floral-dress1.png"></a>
						<h4>White Floral Dress</h4>
						<p>$25.00</p>
					</div>
				</div>
			</div>
		</div>
		
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-6">
					<img src="images/discount-banner.png">
				</div>
				<div class="col-sm-6">
					<a href="collection-sale.php"><img src="images/sale-banner.png"></a>
				</div>
			</div>
		</div>
		
		<div class="footer">
			<div class="container-fluid">
				<div class="row">
					<div class="logo">
						<a href="#homePage"><img src="images/suburban outfitters logo.png" class="logo-image" style="height: 46px; width: 46px;">
						<span class="storename">Suburban Outfitters</span></a>
					</div>
					<div class="footer-col-1">
						<h3>Help & Support</h3>
						<ul>
							<li><a href="#">Returns</a></li>
							<li><a href="order-tracking.php">Track Order</a></li>
							<li><a href="shipping-information.php">Shipping Information</a></li>
							<li><a href="about-us.php">About Suburban Outfitters</a></li>
							<li><a href="admin-page.php">Admin Page</a></li>
						</ul>
					</div>
					<div class="footer-col-1">
						<h3>Social Media</h3>
						<img src="images/facebook-icon.png" style="height: 40px; width: 40px; margin-left: -32px">
						<img src="images/instagram-icon.png" style="height: 50px; width: 50px;">
						<img src="images/twitter-icon.png" style="height: 50px; width: 50px;">
						<img src="images/tiktok-icon.png" style="height: 40px; width: 70px; margin-left: -15px;">
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
-->