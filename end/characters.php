<?php
$host = 'localhost';
$user='root';
$password = 'root';
$db = 'project';
$conn = mysqli_connect($host,$user,$password,$db);
$conn_error = mysqli_connect_error();
if ($conn_error != null){
    echo "There is some connection error:<p>  $conn_error </p>";
}
$name=filter_input(INPUT_POST,'name');
$date=filter_input(INPUT_POST,'date');
$img=filter_input(INPUT_POST,'img');
$about=filter_input(INPUT_POST,'about');
$phase=filter_input(INPUT_POST,'phase');


if(isset($name)){
    $query="SELECT * FROM `characters`";
    $results = mysqli_query($conn, $query);
    $id=mysqli_num_rows($results)+1;
    $query="INSERT INTO `characters` (`id`,`faze`,`name`, `img`, `date`, `about`) VALUES ('$id','$phase','$name','$img','$date','$about')";
    $results = mysqli_query($conn, $query);
}
?>







<html>
<head>
    <title>Characters</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="characters.css">
    <script src="movies.js" defer></script>
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
$query="SELECT * FROM `characters`";
$results = mysqli_query($conn, $query);
while ($row = mysqli_fetch_array($results)) {
    echo '<a href="'.$row['page'].'">';
    echo "<div class=\"character\">";
    echo '<img src="'.$row['img'].'"  align="top" >';
    echo '<div class="eventText"><span >'.$row['name'].'</span><br><br>';
    echo "<b>".$row['first mention']."</b><br>".$row['about'];
    echo "</div></div></a>";
}
mysqli_close($conn);
?>
</div>




<?php
$l="c";
if (isset($_COOKIE["admin"])){
    echo "<div class='title' id='addmovie' onclick='add($l)'>Add Character</div>";
}
?>




<footer>
    <p>©2018 MARVEL </p>
    Team project for web course
    <p>Zharryssov Galym,  Baikadamova Gauhar, Sekerbekova Ainur</p>
</footer>








</body>
</html>
