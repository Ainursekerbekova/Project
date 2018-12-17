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
?>
