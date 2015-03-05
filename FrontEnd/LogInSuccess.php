<html>
<!--Here we're implementing bootstrap for the navigation other items-->
  <head>
    <title>PLAY ON</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="ROBOTS" content="NOINDEX, NOFOLLOW" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="WPFCSS.css">
<!--This is the script for the audio javascript--> 
<link rel="stylesheet" type="text/css" href="index.css">

    <script src="audio.min.js"></script>
     <script>
  audiojs.events.ready(function() {
    var as = audiojs.createAll();
  });
</script>
<!--End of audio javascript-->
	<?php
		session_start();
		if( !isset($_SESSION['username']) ){
		header("location:MainPage.html");
		}
	?>
  </head>

  <body>

<!--This will be our navigation system--> 
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="Home.php">PlayON</a>
        </div>
        
<!--This the actual navigation buttons-->        
        <div>
          <ul class="nav navbar-nav">
            <li class="active"><a href="Home.php">Home</a></li>
            <li><a href="ExplorerPage.php">Explore</a></li>
          </ul>
          
<!--This is the beginning of the search bar-->

    <div id="tfheader">
	<form id="tfnewsearch" method="post" action="explorepage.php">
	<input type="text" class="tftextinput" name="q" size="80" maxlength="120">
	<input type="submit" value=">" class="tfbutton">
	<div class="tfclear"></div></form>
	
	
	
<!-- This is the Sign Up and Register Buttons-->
	<ul class="nav navbar-nav navbar-right">
          
	<li><a><span class="glyphicon glyphicon-user"></span><?php echo $_SESSION["username"]; ?></a></li>
    <li><a href="logout.php"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
     </ul>
    </div></div></nav>
<!--This is the end of our navigation-->

<!--This is the beginning of the content-->
      <br>
      <br>
      <br>
      <br>
  <div class="container">
      <div class="jumbotron">
     
        <h1>Log In Success!</h1>
		<h2>Enjoy Browsing!</h2>
        <p>To begin, enter an artist, title, album, or genre in the search bar!</p>

      </div>

   
   </div> 

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </body>
</html>
