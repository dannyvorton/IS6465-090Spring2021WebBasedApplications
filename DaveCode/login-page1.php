<html>
	<head></head>
	
	<body>
		<form method='post' action='login-page1.php'>
			Username: <input type='text' name='username'><br>
			Password: <input type='password' name='password'>
			<input type='submit' value='Login'>
		</form>
	</body>

</html>

<?php


require_once 'login.php';
require_once 'user.php';


$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if (isset($_POST['username']) && isset($_POST['password'])) {
	
	
	$tmp_username = mysql_entities_fix_string($conn, $_POST['username']);
	$tmp_password = mysql_entities_fix_string($conn, $_POST['password']);
	
	
	
	$query = "SELECT password FROM user WHERE username = '$tmp_username'";
	
	
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	$rows = $result->num_rows;
	$passwordFromDB="";
	for($j=0; $j<$rows; $j++)
	{
		$result->data_seek($j); 
		$row = $result->fetch_array(MYSQLI_ASSOC);
		$passwordFromDB = $row['password'];
	
	}
	
	
	if(password_verify($tmp_password,$passwordFromDB))
	{
		echo "successful login<br>";
		
		$user = new User($tmp_username);
		
		session_start();
		$_SESSION['user'] = $user;
		
		header("Location: view-user.php");
	}
	else
	{
		echo "login error<br>";
	}	
	
}

$conn->close();



function mysql_entities_fix_string($conn, $string){
	return htmlentities(mysql_fix_string($conn, $string));	
}

function mysql_fix_string($conn, $string){
	$string = stripslashes($string);
	return $conn->real_escape_string($string);
}



?>