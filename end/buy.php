<?php
$cost=filter_input(INPUT_POST,'cost');
echo $cost;

$host = 'localhost';
$user='root';
$password = 'root';
$db = 'project';
$conn = mysqli_connect($host,$user,$password,$db);
$conn_error = mysqli_connect_error();
$query="SELECT * FROM `users`";
$results = mysqli_query($conn, $query);
if ($conn_error != null){
    echo "There is some connection error:<p>  $conn_error </p>";
}




?>

<html>
<head>
    <meta charset="UTF-8">
    <title>Buy the comics</title>
    <link rel="stylesheet" href="buy.css">
</head>
<body>
<?php

mysqli_close($conn);
?>
<form action = "buy.php" method="post">
    <div id="container">
        <div class="side">
            <h1>Payment</h1>
            <hr>
            <label><b>Your sum:</b></label>
            <input type="text" id="cvc"  placeholder="<?php echo "$cost"; ?>" disabled> $
            <hr>
        </div>
        <div class="side">
            <h1>Payment</h1>
            <hr>
            <label><b>Card number:</b></label>
            <input type="number" name="number" placeholder="Enter cardnumber" required>
            <label><b>Name Surname:</b></label>
            <input type="text" name="name" placeholder="Enter holder Name" required>
            <label ><b>CVC:</b></label>
            <input type="password" name="cvc" id="cvc" placeholder="CVC code of your card" required>
            <label ><b>Date:</b></label>
            <input type="date" name="date" id="cvc" placeholder="End date of your card" required>
        </div>
    </div>
    <button type="submit" id="signin">Enter</button>
</form>
</body>
</html>
