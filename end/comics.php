<?php
$host = 'localhost';
$username ='root';
$password = 'root';
$db = 'project';
$db_conn=mysqli_connect($host,$username,$password,$db);
$connection_error=mysqli_connect_error();
if($connection_error != null){
    echo "<p> We have a connection problem: " .$connection_error . "</p>";
}

$query="SELECT * FROM comics";
$result=mysqli_query($db_conn,$query);
$comic2="";
if(mysqli_num_rows($result)>0){
    while($row=mysqli_fetch_assoc($result)){
        if($row['id']==1){
            $comic1 = $row['cost'];
        }
        if($row['id']==2){
            $comic2 = $row['cost'];
        }
        if($row['id']==3){
            $comic3 = $row['cost'];
        }
        if($row['id']==4){
            $comic4 = $row['cost'];
        }
    }
}else{
    echo "No results were found";
}
mysqli_close($db_conn);
?>

<html>
<head>
    <meta charset = "UTF-8">
    <title>Marvel</title>
    <meta http-equiv="Content-Type">
    <link rel="stylesheet" href="comics.css">
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
<div class = "flex_parent">
    <div class = "side_column">
        <div class = "ind_items">
            <div class = "item1">
                <img src="https://imgix.ranker.com/user_node_img/50028/1000557665/original/amazing-fantasy-15-comic-book-series-photo-u1?w=650&q=50&fm=jpg&fit=crop&crop=faces">
            </div>
        </div>
        <div id = "descript">
            <?php echo $comic1?>$
        </div>

        <button id = "button">Buy</button>
    </div>
    <div class = "side_column">
        <div class="grid_parent">
            <div class = "ind_items">
                <div class = "item2">
                    <img src="https://imgix.ranker.com/user_node_img/50028/1000557665/original/amazing-fantasy-15-comic-book-series-photo-u1?w=650&q=50&fm=jpg&fit=crop&crop=faces">
                </div>
            </div>
            <div class = "ind_items">
                <div class = "item2">
                    <img src="https://i.stack.imgur.com/qVML6l.jpg">
                </div>
            </div>
            <div class = "ind_items">
                <div class = "item2">
                    <img src="https://imgix.ranker.com/user_node_img/104/2075534/original/spider-man-photo-u76?w=650&q=50&fm=jpg&fit=crop&crop=faces">
                </div>
            </div>
            <div class = "ind_items">
                <div class = "item2">
                    <img src="https://static.comicvine.com/uploads/original/5/55074/1161661-x_men136.jpg">
                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <p>©2018 MARVEL </p>
    Team project for web course
    <p>Zharryssov Galym,  Baikadamova Gauhar, Sekerbekova Ainur</p>
</footer>
</body>

<script>
    function fun(event){
        document.getElementsByTagName("img")[0].src=event.currentTarget.src;
    }
    const im = document.querySelectorAll("img");
    var btn = document.getElementById("Button");

    for(var i = 0; i<5;i++){
        im[i].addEventListener("click",fun);
    }
    im[1].addEventListener("click",function(){
        document.getElementById("descript").innerHTML = <?php echo $comic1 ?>+"$"
    });
    im[2].addEventListener("click",function(){
        document.getElementById("descript").innerHTML = <?php echo $comic2 ?>+"$"
    });
    im[3].addEventListener("click",function(){
        document.getElementById("descript").innerHTML = <?php echo $comic3 ?>+"$"
    });
    im[4].addEventListener("click",function(){
        document.getElementById("descript").innerHTML = <?php echo $comic4 ?>+"$"
    });
</script>
</html>


