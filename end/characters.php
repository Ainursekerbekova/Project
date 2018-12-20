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
$img=filter_input(INPUT_POST,'img');
$date=filter_input(INPUT_POST,'date');
$page=filter_input(INPUT_POST,'page');
$about=filter_input(INPUT_POST,'about');
$namedel=filter_input(INPUT_POST,'namedel');

if (isset($namedel)){
    echo $namedel." is name";
    $query="DELETE FROM `characters` WHERE `name` = '$namedel'";
    $results = mysqli_query($conn, $query);
    if (mysqli_query($conn, $query2)) {}
    else {echo "there is error: ".mysqli_error($results);}
}

if(isset($name)){
    $query="INSERT INTO `characters` (`name`, `img`, `first mention`, `page`, `about`) VALUES ('$name', '$img', '$date', '$page', '$about')";
    $results = mysqli_query($conn, $query);
    if (mysqli_query($conn, $query2)) {}
    else {echo "there is error: ".mysqli_error($conn);}
}
?>
<html>
<head>
    <title>Characters</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="characters.css">
    <link rel="stylesheet" href="acommon.css">
    <script src="acommon.js" defer></script>
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
        echo "<div class = \"headerButton\" onclick='out()'><a href='characters.php'>Sign out</a></div>";
    }
    else{
        echo "<div class = \"headerButton\"><a href = 'signin.php'>Sign in</a></div>";
    }
    ?>
</div>
<section>
<div id="container">
<?php
$query="SELECT * FROM `characters`";
$results = mysqli_query($conn, $query);
while ($row = mysqli_fetch_array($results)) {
    echo '<a href="'.$row['page'].'">';
    echo "<div class=\"character\">";
    if (isset($_COOKIE["admin"])){
        ?>
        <form action='characters.php' method="post" class="del">
            <input type="submit"  class="del" value="Delete">
        <?php
        echo "<input type='hidden' name='namedel' value='".$row['name']."'></form>";
    }
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
</section>
<footer>
    <p>©2018 MARVEL </p>
    Team project for web course
    <p>Zharryssov Galym,  Baikadamova Gauhar, Sekerbekova Ainur</p>
</footer>

</body>
</html>
