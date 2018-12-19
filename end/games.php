<html>
<head>
    <title>Marvel</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="games.css">
</head>
<body>
<div class = "header_section">
    <div class = "headerlogo"><a href="index.php">Marvel Universe</a></div>
    <div class = "headerButton"><a href = "characters.php">Characters</a></div>
    <div class = "headerButton"><a href = "comics.php">Comics</a></div>
    <div class = "headerButton"><a href = "games.php">Games</a></div>
    <div class = "headerButton"><a href = "movies.php">Movies</a></div>
    <?php
    if(isset($_COOKIE['user']) || isset($_COOKIE['admin'])){
        echo "<div class = \"headerButton\" '><a href = \"out.php\">Sign out</a></div>";
    }
    else{
        echo "<div class = \"headerButton\"><a href = \"signin.php\">Sign in</a></div>";
    }
    ?>
</div>
<div id="container">

<?php
$host = 'localhost';
$user='root';
$password = 'root';
$db = 'project';
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
            <p>©2018 MARVEL </p>
            Team project for web course
            <p>Zharryssov Galym,  Baikadamova Gauhar, Sekerbekova Ainur</p>
        </footer>
</body>
</html>
