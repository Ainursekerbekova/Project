<?php
$host = 'localhost';
$user='root';
$password = 'root';
$db = 'project';
$conn = mysqli_connect($host,$user,$password,$db);
$conn_error = mysqli_connect_error();
$query="SELECT * FROM `users`";
$results = mysqli_query($conn, $query);
$Name=filter_input(INPUT_POST,'Name');
$Password=filter_input(INPUT_POST,'Password');
$ConfPassw=filter_input(INPUT_POST,'ConfPassw');
$free=true;
if (isset($Name)){
    while ($row = mysqli_fetch_array($results)) {
        if ($row['login']==$Name){
            $free=false;
            break;
        }
    }
    if ($free && $Password==$ConfPassw){
        $query="INSERT INTO `users` (`login`, `password`, `admin`) VALUES ('".$Name."', '".$Password."', '0');";
        $results = mysqli_query($conn, $query);
        setcookie("admin", "", time() - 100);
        setcookie("user", $Name);
        header("Location: index.php");
        die();
    }
}
if ($conn_error != null){
    echo "There is some connection error:<p>  $conn_error </p>";
}
?>

<html>
<head>
    <meta charset="UTF-8">
    <title>Movies</title>
    <link rel="stylesheet" href="signin.css">
</head>
<body>
<div class = "header_section">
    <div class = "headerlogo"><a href="index.php">Marvel Universe</a></div>
    <div class = "headerButton"><a href = "characters.php">Characters</a></div>
    <div class = "headerButton"><a href = "comics.php">Comics</a></div>
    <div class = "headerButton"><a href = "games.php">Games</a></div>
    <div class = "headerButton"><a href = "movies.php">Movies</a></div>
    <div class = "headerButton"><a href = "signin.php">Sign in</a></div>
</div>
<?php
if (isset($Name)){
    echo "<div id='errors'>";
    if(!$free){
        echo "<div class='error'>";
        echo "This username " .$Name . " is already reserved!!!";
        echo "</div>" ;
        echo "<br>";
    }
    if($Password!=$ConfPassw){
        echo "<div class='error'>";
        echo "Password and Confirm password does not equal to each other";
        echo "</div>";
        echo "<br>";
    }
    echo "</div>";

}
mysqli_close($conn);
?>
<form action = "signup.php" method="post">
  <div class="container">
    <h1>Sign up</h1>
    <hr>
    <label for="username"><b>Username:</b></label>
    <input type="text" name="Name" placeholder="Enter Username" required>
    <label for="psw"><b>Password:</b></label>
    <input type="password" name="Password" placeholder="Enter Password" required>
	<label for="ConfPassw"><b>Confirm Password:</b></label>
    <input type="password" name="ConfPassw" placeholder="Password one more time" required>
    <hr>
    <button type="submit" id="signin">Enter</button>
  </div>
</form>
</body>
</html>
