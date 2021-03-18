<?php

session_start();

if(!isset($_SESSION['username'])){
	header("Location: login-page1.php"); //login-page1.php is what I used for my own version of the setup for testing  purposes we just change it to the real login page
	exit();
}


?>