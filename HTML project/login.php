<?php
$usernames=["baikadamova","ggnet123","kobebryant"];
$Name=filter_input(INPUT_POST,'Name');
$Password=filter_input(INPUT_POST,'Password');
$ConfPassw=filter_input(INPUT_POST,'ConfPassw');
if(in_array($Name,$usernames)){
	echo "<div class='admin'>";
	echo "Congratulations, you entered Admin Page";
	echo "</div>" ;
	echo "<br>";
}
if($Name==""){
	echo "<div class='error'>"; 
	echo "Username shouldn't be empty!!!";
	echo "</div>" ;
	echo "<br>";
}

if($Password==""){
	print "<div class='error'>"; 
	print "Password shouldn't be empty!!!";
	print "</div>";
	print "<br>";
}
?>
.error{
	background-color:red;
	border:1px solid red;
	font-weight:bold;
	padding:5px;
	width:400px;
	margin:4px;
}