<html>
	<head>
		<title>Suburban Outfitters</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="suburbanStyles.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
	</head>
	
	<body id="campaign">
	
	<!------- Nav Bar ----------->
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

<!-- view campaign -->

	<div class="tab">
		<button class="tablinks"><a href="admin-page.php" style="color: white;">Profile</button>
		<button class="tablinks"><a href="vendors.php" style="color: white;">Vendors</button>
		<button class="tablinks"><a href="inventory.php" style="color: white;">Inventory</button>
		<button class="tablinks"><a href="campaign.php" style="color: white;">Campaigns</a></button>
		<button class="tablinks"><a href="#" style="color: white;">Customers</a></button>
	</div>
	<br>
	<br>

<?php

require_once 'login.php';

$conn = new mysqli ($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

$query = "SELECT * from campaign";

$result = $conn->query($query);
if(!$result) die ($conn->error);

$rows = $result->num_rows;

for ($j=0; $j<$rows; ++$j) {
//    $result->data_seek($j);
    $row = $result->fetch_array(MYSQLI_ASSOC);

echo <<<_END

    Product ID: $row[product_id]
    Discount: $row[discount]
    Details: $row[details]
    Start Date: $row[start_date]
    End Date: $row[end_date]

    <form action='campaign.php' method='post'>
        <input type='hidden' name='delete' value='yes'>
        <input type='hidden' name='product_id' value='$row[product_id]'>
        <input type='submit' value='Delete Campaign'>
    </form>
_END;
}

$conn->close();

?>

<!-- delete campaign -->

<?php

require_once 'login.php';

$conn = new mysqli ($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if (isset($_POST['delete'])) {
    
    $product_id = $_POST['product_id'];
    $query = "DELETE from campaign where product_id='$product_id'";

    $result = $conn->query($query);
    if(!$result) die ($conn->error);

    header("Location: campaign.php");
}

$conn->close();

?>

<!-- add campaign -->

	<div class="campaign">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-8">
					<h2>New Campaign</h2>
					<div class="form-container">
						<form method='post' action='campaign.php'>
							Product ID: <input type='text' name='product_id'><br>
							Discount: <input type='text' name='discount'><br>
							Details: <input type='text' name='details'><br>
							Start Date: <input type='date' name='start_date'><br>
							End Date: <input type='date' name='end_date'><br>
							<br>
							<a href="checkout-page.php" class="btn" style="margin-left: 2%; width: 90%; margin-top: 10px;">Start Campaign</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- update database -->

<?php

require_once 'login.php';

$conn = new mysqli ($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);
if(isset($_POST['product_id'])) {
    $product_id = $_POST['product_id'];
    $discount = $_POST['discount'];
    $details = $_POST['details'];
    $start_date = $_POST['start_date'];
    $end_date = $_POST['end_date'];

    $query = "INSERT into campaign (product_id, discount, details, start_date, end_date) values ('$product_id', '$discount', '$details', '$start_date', '$end_date')";

    $conn->query($query);
    if(!result) die ($conn->error);
    header("Location: campaign.php");
}

$conn->close();

?>
<br>
<br>
<br>
<br>
<br>
		<!------- Footer --------->
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