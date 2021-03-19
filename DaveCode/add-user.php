<?php

$page_roles = array('admin');

require_once 'login.php';
require_once 'check-session.php';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

echo <<<_END
	<form action="add-user.php" method="post"<pre>
	Role: <select name="role" id="role"</br></br>
		<option value="admin">Administrator</option>
		<option value="user">Customer</option>
	First Name: <input type="text" name="first_name"</br></br>
	Last Name: <input type="text" name="last_name"</br></br>
	Username: <input type="text" name="username"</br></br>
	Password: <input type="text" name="password"</br></br>
	
		
	
	<input type="submit" name="Add User/Admin">
	</br></br>
	<a href="view-user.php">View all users</a>
	<a href="logout.php">Logout</a>
	
	</pre></form>

_END;

if(isset($_POST['first_name']) &&
	isset($_POST['last_name']) &&
	isset($_POST['username']) &&
	isset($_POST['password']) &&
	isset($_POST['role'])) {
		$first_name=get_post($conn, 'first_name');
		$last_name=get_post($conn, 'last_name');
		$username=get_post($conn, 'username');
		$password=get_post($conn, 'password');
		$role=get_post($conn, 'role');
		$token = password_hash($password, PASSWORD_DEFAULT);
		
		$query="INSERT INTO user (first_name, last_name, username, password, role) VALUES ".
			"('$first_name','$last_name','$username', '$token','$role')";
		$result=$conn->query($query);
		if(!$result) echo "INSERT failed: $query <br>" .
			$conn->error . "<br><br>";
	
	
}

$conn->close();

function get_post($conn, $var) {
	return $conn->real_escape_string($_POST[$var]);

}



?>