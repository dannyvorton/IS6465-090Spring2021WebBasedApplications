<?php

require_once 'User.php';

session_start();

if(!isset($_SESSION['username'])){
	header("Location: login-page1.php"); //login-page1.php is what I used for my own version of the setup for testing  purposes we just change it to the real login page
	exit();
}else{
	$user = $_SESSION['user'];
	$username = $user->username;
	$user_roles = $user->getRoles();
	
	$found=0;
	foreach($user_roles as $urole){
		foreach($page_roles as $prole){
			if($urole == $prole){
				$found=1;
			}
		}
	}
	
	if(!$found){
		header("Location: unauthorized.php");
	}
}


?>