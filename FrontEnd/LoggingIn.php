<?php

session_start();

$myusername=$_POST['myusername']; 
$mypassword=$_POST['mypassword']; 

if ($myusername&&$mypassword)
{
$port="localhost"; $user="root"; $passwd=""; $dbname = "PlayONdb";
$database = new mysqli($port, $user, $passwd,$dbname);

if(!$database){
			die ("Not connected: " . mysql_error() );
			}

if ($database->connect_error)
			die ("Could not connect to website's database </body></html>" );



//Searching database to see if there already exist user-entered username
$sqlchecker = "SELECT * FROM users WHERE uName = '$myusername' and uPasswd='$mypassword'"; 

$usernamecheck = $database->query($sqlchecker);
//checking number of rows username occurs in
$check_num_rows = $usernamecheck->num_rows;    

if($check_num_rows=1){ 
    
	if($row =$usernamecheck->fetch_assoc())
	{
		$_SESSION["userID"] = $row['userID'];
		$_SESSION["username"] = $row['uName'];
		$_SESSION["password"] = $row['uPasswd'];
		header('Location: LogInSuccess.php');
		exit;
	}
	else{
		header('Location: LogIn_retry.html');
		exit;
	}
}

else if ($check_num_rows=0){
    echo "User does not exist!";
	}
}
    
$database->close();

?> 
