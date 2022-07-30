<?php

	require_once('db.php');

function login($username, $password)
{
	
	$conn = getconnection();
	$sql = "select * from usertable where UserID='{$username}' and Password='{$password}'";
	$result = mysqli_query($conn, $sql);
    $data = $result->fetch_assoc();
	$count = mysqli_num_rows($result);
    
    if($count > 0)
    {
        $_SESSION['id'] = $username;
        $_SESSION['pass'] = $password;
        $_SESSION['name'] = $data['Name'];
        // echo $data['Name'];
		return true;
	}
    else
    {
		return false;
	}
}


function signup($user){
    $conn = getconnection();
	$sql = "select * from users where username='{$user['username']}' and password='{$user['password']}'";
	$result = mysqli_query($conn, $sql);
	$count = mysqli_num_rows($result);

    if($count > 0){
		return true;
	}else{
		return false;
	}
}