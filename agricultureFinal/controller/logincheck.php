<?php 
session_start();
require_once('../model/UserModel.php');

$username =  $_REQUEST['username'];
$password = $_REQUEST['password'];

// echo $username.$password;

if($username == null || $password == null)
{
	echo "null username/password...";
}
else
{
	
	$status  = login($username, $password);
	if($status)
	{
		setcookie('astatus', 'true', time()+3600, '/');
        header('location: ../view/ahome.php');
	}
	else
	{
		echo "incorrect username/password";
	}
}

?>