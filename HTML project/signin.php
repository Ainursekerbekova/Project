<?php
$usernames=["baikadamova","ggnet123","kobebryant"];
$Name=filter_input(INPUT_POST,'Name');
$Password=filter_input(INPUT_POST,'Password');
$ConfPassw=filter_input(INPUT_POST,'ConfPassw');
if(in_array($Name,$usernames)){
	echo "<div class='error'>";
	echo "This username " .$Name . " is already reserved!!!";
	echo "</div>" ;
	echo "<br>";
}
if($Name==""){
	echo "<div class='error'>"; 
	echo "Username shouldn't be empty!!!";
	echo "</div>" ;
	echo "<br>";
}
if($Password!=$ConfPassw){
	echo "<div class='error'>"; 
	echo "Password and Confirm password does not equal to each other";
	echo "</div>";
	echo "<br>";
}
if($Password=="" && $ConfPassw ==""){
	print "<div class='error'>"; 
	print "Password and Confirm password shouldn't be empty!!!";
	print "</div>";
	print "<br>";
}
?>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.error{
	background-color:red;
	border:1px solid red;
	font-weight:bold;
	padding:5px;
	width:400px;
	margin:4px;
}
body {
    font-family: Arial, Helvetica, sans-serif;
}
* {
    box-sizing: border-box;
}
.container {
	color:yellow;
	top:10px;	
    position: relative;
    left:32%;
    height:500px;
    width: 450px;
    padding: 5px;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    background: #f1f1f1;
	
}

hr {
    border: 1px solid yellow;
    margin-bottom: 25px;
}

#signin {
    background-color: red;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 1;
}


</style>
</head>
<body background = "https://i.playground.ru/i/blog/306530/content/lg2vgj78.jpg">
<form action = "signin.php" method="post">
  <div class="container">
    <h1>Sign up</h1>
    <hr>
    <label for="username"><b>Username:</b></label>
    <input type="text" name="Name">
    <label for="psw"><b>Password:</b></label>
    <input type="password" name="Password" >
	<label for="ConfPassw"><b>Confirm Password:</b></label>
    <input type="password" name="ConfPassw" >
    <hr>
    <button type="submit" id="signin">Enter</button>
  </div>
</form>
</body>
</html>
