<html>
	<header></header>
	<body>
		Click on a username below to view and update user details
	</body>
</html>

<?php
$page_roles = array('admin');

require_once 'login.php';
require_once 'check-session.php';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

echo <<<_END
	<pre>
	<a href="add-user.php">Add a User</a>
	<a href="logout.php">Logout</a>
	

_END;

//$query="SELECT * FROM user ORDER BY emp_id";

$query="SELECT * FROM user";
$result=$conn->query($query);
if(!$result) die ($conn->error);

$rows=$result->num_rows;
for($j=0; $j<$rows; $j++) {
	$result->data_seek($j);
	$row=$result->fetch_array(MYSQLI_BOTH);
	
	echo <<<_END
	<pre>
		
		First Name: $row[first_name];
		Last Name: $row[last_name];
		Username: <a href='update-user.php?username=$row[username]'>$row[username]</a>;
		Role: $row[role];
	</pre>
	<form action="delete-user.php" method="post">
	<input type="hidden" name="delete" value="yes">
	<input type="hidden" name="username" value="$row[username]">
	<input type="submit" value="DELETE RECORD">
	</form>
	</br></br></br>
_END;
}

$result->close();
$conn->close();

function get_post($conn, $var) {
	return $conn->real_escape_string($_POST[$var]);
}

?>