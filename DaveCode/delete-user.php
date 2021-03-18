<?php

require_once 'login.php';
require_once 'check-session.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if(isset($_POST['delete']))
{
	$emp_id = $_POST['emp_id'];

	$query = "DELETE FROM employee WHERE emp_id='$emp_id' ";
	
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	header("Location: view-user.php");
	
}




?>