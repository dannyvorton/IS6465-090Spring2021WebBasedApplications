<html>
	<header></header>
	<body>
	
	<a href="view-user.php">Go back user list</a>
	
	</body>



</html>





<?php
$page_roles = array('admin');

require_once 'login.php';
require_once 'check-session.php';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

if(isset($_GET['username'])){

$username = $_GET['username'];

$query = "SELECT * FROM user where username='$username'";

$result = $conn->query($query); 
if(!$result) die($conn->error);
	
$rows = $result->num_rows;

for ($j = 0 ; $j < $rows ; ++$j)  {
    
	$row = $result->fetch_array(MYSQLI_ASSOC);
	
	$role = $row['role'];
	$A=$B='';
	if($role=='admin') $A = 'selected';
	if($role=='user') $B = 'selected';
	
	
	
	
echo <<<_END

	<form action='update-user.php' method='post'>
	<pre>
	
		
	First Name: <input type='text' name='first_name' value='$row[first_name]'>
	Last Name: <input type='text' name='last_name' value='$row[last_name]'>
	Username: <input type='text' name='username' value='$row[username]'> 
	User Type (Role):
		<select name='role' id='role'>
			<option value='admin' $A>Administrator</option>
			<option value='user' $B>Customer</option>
		</select>
	
	
	</pre>
		<input type='hidden' name='update' value='yes'>
		<input type='hidden' name='username' value='$row[username]'>
		<input type='submit' value='UPDATE USER'>
	</form>
	
_END;
	
}  

}

if(isset($_POST['update'])){
	
	$username = $_POST['username'];
	$first_name = $_POST['first_name'];
	$last_name = $_POST['last_name'];
	$role = $_POST['role'];
				
		
	$query = "UPDATE user SET first_name='$first_name', last_name='$last_name', role='$role' where username = '$username' ";
	
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	header("Location: view-user.php");
}
 
$conn->close();	

?>