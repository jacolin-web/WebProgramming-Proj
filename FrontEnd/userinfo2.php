<?php

$port="localhost"; $user="root"; $passwd=""; $dbname = "PlayONdb";
$database = new mysqli($port, $user, $passwd,$dbname);

if(!$database){
			die ("Not connected: " . mysql_error() );
			}

if ($database->connect_error)
			die ("Could not connect to website's database </body></html>" );

$myusername=$_POST['myusername']; 
$mypassword=$_POST['mypassword']; 

//Searching database to see if there already exist user-entered username
$sqlchecker = "SELECT uName FROM users WHERE uName = '$myusername' "; 

$usernamecheck = $database->query($sqlchecker);
//checking number of rows username occurs in
$check_num_rows = $usernamecheck->num_rows;    

if($check_num_rows ==0){ //if username does not come up in any rows
                         //begin to insert the username and password
    
$sqluser = "INSERT INTO users (uName, uPasswd) 
        VALUES ('$myusername', '$mypassword')";

$sqluplaylist = "INSERT INTO playlist (pName)
		VALUES ('$myusername')";
    
	if(($database->query($sqluser))&&($database->query($sqluplaylist))){
			// "Successfully Registered!";
			header('Location: SignUpSuccess.html');
			exit;
			}else{
			// "Registration Failed!";
			 header('Location: SignUpPage_Retry.html');
			 exit;
			}
}

else if ($check_num_rows>=1){
    header('Location: SignUpPage_Retry.html');
	exit;
}    
$database->close();

?> 
