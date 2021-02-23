<html>
	<head>
		<link rel="stylesheet" href="/suburbanoutfitters/stylesheets/styles.css">
		<script src="http://clevertree.github.io/zip-lookup/zip-lookup.js" type="text/javascript"></script>
	</head>
	
	<body>
		<form id="form_create_user", action="/suburbanoutfitters/profile.php" method="get">
			First name:<br>
			<input type="text" id="fname" name="fname" ><br>
			Last name:<br>
			<input type="text" id="lname" name="lname" ><br>
			Phone:<br>
			<input type="tel" id="phone" name="phone" ><br>
			Email:<br>
			<input type="email" id="email" name="email" ><br>
			<div>Enter ZipCode:</div>
            <input type='number' name='zipcode' class='zip-lookup-field-zipcode' /><BR>
			Enter Street Address: <br>
			<input type="text" id="street" name="street" ><br>
            <div>Enter City:</div>
            <input type='text' name='city' class='zip-lookup-field-city' />
            <div>Enter State:</div>
            <!-- <input type='text' name='state' class='zip-lookup-field-state' /> -->
            <input type='text' name='state-short' class='zip-lookup-field-state-short' />
			<input type="submit" value="Submit">
			
		</form>
	
	</body>



</html>
