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
$phase=filter_input(INPUT_POST,'phaze');

if(isset($name)){
    $query="INSERT INTO `characters` (`id`,`faze`,`name`, `img`, `first mention`, `page`, `about`) VALUES (' $name ','$img','$date','$about')";
    $results = mysqli_query($conn, $query);
}

?>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Movies</title>
    <link rel="stylesheet" href="movies.css">
    <script src="movies.js" defer></script>
</head>
<body>

<div class = "header">
    <div class = "header_section">
        <div class = "headerlogo"><a href="index.html">Marvel Universe</a></div>
        <div class = "headerButton"><a href = "characters.php">Characters</a></div>
        <div class = "headerButton"><a href = "comics.php">Comics</a></div>
        <div class = "headerButton"><a href = "#">Games</a></div>
        <div class = "headerButton"><a href = "movies.php">Movies</a></div>
        <div class = "headerButton"><a href = "signin.php">Sign in</a></div>
    </div>
</div>
<section>
    <div class="title">
        First phase
    </div>
    <?php
    $query="SELECT * FROM `movies` where `faze`=1";
    $results = mysqli_query($conn, $query);
    while ($row = mysqli_fetch_array($results)) {
        echo '<div class="faze">';
        echo '<div class="movie">';
        echo '<img src="'.$row['img'].'" align="top">';
        echo '<div class="eventText">';
        echo "<span>".$row['name']."</span><br><b>";
        echo $row['date']."</b> <br>";
        echo $row['about']."</div></div></div>";
    }
    ?>
    <div class="title">
        Second phase
    </div>
    <?php
    $query="SELECT * FROM `movies` where `faze`=2";
    $results = mysqli_query($conn, $query);
    while ($row = mysqli_fetch_array($results)) {
        echo '<div class="faze">';
        echo '<div class="movie">';
        echo '<img src="'.$row['img'].'" align="top">';
        echo '<div class="eventText">';
        echo "<span>".$row['name']."</span><br><b>";
        echo $row['date']."</b> <br>";
        echo $row['about']."</div></div></div>";
    }
    ?>
    <div class="title">
        Third phase
    </div>
    <?php
    $query="SELECT * FROM `movies` where `faze`=3";
    $results = mysqli_query($conn, $query);
    while ($row = mysqli_fetch_array($results)) {
        echo '<div class="faze">';
        echo '<div class="movie">';
        echo '<img src="'.$row['img'].'" align="top">';
        echo '<div class="eventText">';
        echo "<span>".$row['name']."</span><br><b>";
        echo $row['date']."</b> <br>";
        echo $row['about']."</div></div></div>";
    }
    $q=0;
    echo "<div id='forQ'></div>";
    mysqli_close($conn);
    if (isset($_COOKIE["admin"])){
        echo "<div class= \"title addmovie\" onclick='add()'>Add movie";
        echo "<form action='movies.php'>";
        echo "</form>";
        echo "</div>";
    }
    ?>

</section>
<footer>
    <p>©2018 MARVEL  Zharryssov Galym   Baikadamova Gauhar   Sekerbekova Ainur</p>
</footer>
</body>
</html>