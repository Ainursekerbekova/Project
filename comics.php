<?php
	$host = 'localhost';
	$username ='root';
	$password = '';
	$db = 'comics';
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
		<style>
			body{
				background-image: url("https://img3.akspic.com/image/25915-star-apple-cosmos-atmosphere-galaxy-1600x1000.jpg");
			}
			a{	
				color: white;
				text-decoration: none;
			}
			a hover{
				color:red;
				}
			.header{
				display:flex;
				justify-content: space-between;
				padding:20px;
				background: black;
				color: white;
				font-family: Georgia;
			}
			.header_section{
				display:flex;
				align-items: center;
			}
			.header_item_headerButton{
				padding:10px 15px;
				font-size: 20px;
				margin-left: 5px;
			}
			.header_item_headerlogo{
				font-size:40px;
				color:red;
				border: 2px solid red;
			}

			.flex_parent{
				display: flex;
				padding-top:10px;
			}
			.side_column{
				display:flex;
				flex-direction: column;
				padding: 30px;
				flex-basis: 50%;
			}
			.grid_parent{
				display:flex;
				flex-wrap: wrap;
				justify-content: center;	
				margin: -30px;
			}
			.ind_items{
				display:flex;
				flex-wrap: wrap;
				padding: 10px;
				justify-content: center;
			}
			#cost{
				font-size:50px;
			}
			.item1 img{
				display:flex;
				max-height:600px;
				max-width:600px;
				border: 3px solid green;
			}
			.item2{
				display:flex;
				margin-top:33px;
				flex-wrap:wrap;
				background-color: green;
				padding:5px;
				min-height:200px;
				min-width:200px;
				justify-content:center;
			}
			.item2 img{
				max-height:280px;
				max-width:280px;
			}
			#button {
			  margin-top: 5px;
			  display: inline-block;
			  padding: 15px 25px;
			  font-size: 24px;
			  cursor: pointer;
			  text-align: center;
			  text-decoration: none;
			  outline: none;
			  color: #fff;
			  background-color: #4CAF50;
			  border: none;
			  border-radius: 15px;
			  box-shadow: 0 9px #999;
			}
			#descript{
				color: white;
				font-size: 30px;
				font-weight: bold;
				border: 2px solid red;
				border-radius:20px;
				background-color: red;
				text-align: center;
			}
			.item2 img:hover{
				cursor: pointer;
				max-height:300px;
				max-width:300px; 
			}
			#button:hover {background-color: #3e8e41}

			#button:active {
			  background-color: #3e8e41;
			  box-shadow: 0 5px #666;
			  transform: translateY(4px);
			}
		</style>
	</head>
	<body>
		<div class = "header">
			<div class = "header_section">
				<div class = "header_item_headerlogo">
					Marvel Universe
				</div>
				<div class = "header_item_headerButton"><a href = "#">
					Comics</a></div>
				<div class = "header_item_headerButton"><a href = "#">
					Games</a></div>
			    <div class = "header_item_headerButton"><a href = "#">
					Movies</a></div>
			</div>
			<div class = "header_section">
			<div class = "header_item_headerButton"><a href = "#">
				Sign in</a></div>
			</div>
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
			

