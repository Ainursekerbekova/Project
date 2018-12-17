<html>
<head>
    <title>Games/Admin Page</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="games.css">
</head>
<body>
		<div class = "header">
			<div class = "header_section">
				<div class = "headerlogo"><a href="indexAdmin.html">Marvel Universe</a></div>
				<div class = "headerButton"><a href = "charactersAdmin.php">
				Characters</a></div>
				<div class = "headerButton"><a href = "comicsAdmin.php">
				Comics</a></div>
				<div class = "headerButton"><a href = "gamesAdmin.php">
				Games</a></div>
			    <div class = "headerButton"><a href = "moviesAdmin.php">
				Movies</a></div>
			</div>
			<div class = "header_section">
			<div class = "SignInButton"><a href = "index.html">
				Exit</a></div>
			</div>
			</div>
<div id="container">

<?php
$host = 'localhost';
$user='root';
$password = '';
$db = 'phpmyadmin';
$conn = mysqli_connect($host,$user,$password,$db);
$conn_error = mysqli_connect_error();
$query="SELECT * FROM `games`";
if ($conn_error != null){
    echo "There is error:<p>  $conn_error </p>";
}
$results = mysqli_query($conn, $query);

while ($row = mysqli_fetch_array($results)) {
    echo '<a href="'.$row['page'].'">';
    echo "<div class=\"character\">";
    echo '<img src="'.$row['img'].'" >';
    echo '<div class="eventText"><span >'.$row['name'].'</span><br>';
    echo "<b>".$row['first mention']."</b><br>".$row['about'];
    echo "</div></div></a>";
}
mysqli_close($conn);
?>

</div>
<footer>
<p>©2018 MARVEL   Zharryssov Galym,Baikadamova Gauhar,Sekerbekova Ainur</p>
</footer>
</body>
</html>
