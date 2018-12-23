<?php
$host = 'localhost';
$user='root';
$password = 'root';
$db = 'project';
$conn = mysqli_connect($host,$user,$password,$db);
$conn_error = mysqli_connect_error();

if($connection_error != null){
    echo "<p> We have a connection problem: " .$connection_error . "</p>";
}
$query="SELECT * FROM `comics`";
$results = mysqli_query($conn, $query);
while ($row = mysqli_fetch_array($results)) {
    if ($row[id]=="1"){
        $cost=$row['cost'];
    }
}
$results = mysqli_query($conn, $query);
?>
<html>
<head>
    <meta charset = "UTF-8">
    <title>Comics/Admin Page</title>
    <link rel="stylesheet" href="comics.css">
    <link rel="stylesheet" href="common.css">
    <script src="common.js" defer></script>
    <style>

    </style>
</head>
<body>
<div class = "header_section">
    <div class = "headerlogo"><a href="index.php">Marvel Universe</a></div>
    <div class = "headerButton"><a href = "characters.php">Characters</a></div>
    <div class = "headerButton"><a href = "comicsAdmin.php">Comics</a></div>
    <div class = "headerButton"><a href = "games.php">Games</a></div>
    <div class = "headerButton"><a href = "movies.php">Movies</a></div>
    <?php
    if(isset($_COOKIE['user']) || isset($_COOKIE['admin'])){
        echo "<div class = \"headerButton\" onclick='out()'><a href='comics.php'>Sign out</a></div>";
    }
    else{
        echo "<div class = \"headerButton\"><a href = 'signin.php'>Sign in</a></div>";
    }
    ?>
</div>

<div class = "flex_parent">
    <div class = "side_column buypart">
        <div class = "ind_items ">
            <div class = "item1">
                <img src="https://imgix.ranker.com/user_node_img/50028/1000557665/original/amazing-fantasy-15-comic-book-series-photo-u1?w=650&q=50&fm=jpg&fit=crop&crop=faces">
            </div>
        </div>
        <div id = "descript">
            <?php echo $cost?>$
        </div>
        <form action = "comicsAdmin.php" method = "get">
            New price: <input type="text" name="name" >$<br>
            <input type="hidden" id="id" name="num" value="<?php echo $cost?>">
            <input type="submit" id="button" value="Update">
        </form>
    </div>
    <div class = "side_column">
        <div class="grid_parent">
            <?php
            while ($row = mysqli_fetch_array($results)) {
                echo "<div class = \"ind_items\"><div class = \"item2\">";
                echo "<img src='".$row['url']."' onclick='price(".$row['cost'].",".$row['id'].")'>";
                echo "</div></div>";
            }
            ?>
        </div>
    </div>
</div>

<footer>
    <p>©2018 MARVEL </p>
    Team project for web course
    <p>Zharryssov Galym,  Baikadamova Gauhar, Sekerbekova Ainur</p>
</footer>
</body>
<?php
error_reporting(0);
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "project";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn-> connect_error);
}
$sql = "UPDATE comics SET cost= ".$_GET["name"]." WHERE id=".$_GET["num"];

if ($conn->query($sql) === TRUE) {
} else {}
$conn->close();


mysqli_close($db_conn);
?>
<script>
    function price(p,id){
        document.getElementById("descript").innerHTML = p+"$";
        document.getElementById("id").value = id;
    }
    function fun(event){
        document.getElementsByTagName("img")[0].src=event.currentTarget.src;
    }

    const im = document.querySelectorAll("img");
    var btn = document.getElementById("button");

    btn.addEventListener("click",function(){
            var okToRefresh = confirm("For an update to get involved, please reload the page one more time!");
            if (okToRefresh)
            {
                setTimeout("location.reload(true);",1000);
            }
        }
    );
    for(var i = 0; i<5;i++){
        im[i].addEventListener("click",fun);
    }
</script>
</html>