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
    $query="SELECT * FROM `movies`";
    $results = mysqli_query($conn, $query);
    $id=mysqli_num_rows($results)+1;
    $query="INSERT INTO `movies` (`id`,`faze`,`name`, `img`, `date`, `about`) VALUES ('$id','$phase','$name','$img','$date','$about')";
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
<div class = "header_section">
    <div class = "headerlogo"><a href="index.php">Marvel Universe</a></div>
    <div class = "headerButton"><a href = "characters.php">Characters</a></div>
    <div class = "headerButton"><a href = "comics.php">Comics</a></div>
    <div class = "headerButton"><a href = "games.php">Games</a></div>
    <div class = "headerButton"><a href = "movies.php">Movies</a></div>
    <?php
    if(isset($_COOKIE['user']) || isset($_COOKIE['admin'])){
        echo "<div class = \"headerButton\"><a href = \"out.php\">Sign out</a></div>";
    }
    else{
        echo "<div class = \"headerButton\"><a href = \"signin.php\">Sign in</a></div>";
    }
    ?>
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
    ?>

</section>
<?php
$l="m";
if (isset($_COOKIE["admin"])){
    echo "<div class='title' id='addmovie' onclick='add($l)'>Add movie</div>";
}
?>

<footer>
    <p>©2018 MARVEL </p>
    Team project for web course
    <p>Zharryssov Galym,  Baikadamova Gauhar, Sekerbekova Ainur</p>
</footer>
</body>
</html>