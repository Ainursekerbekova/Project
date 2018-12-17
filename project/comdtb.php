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
	$lol="";
	if(mysqli_num_rows($result)>0){
		while($row=mysqli_fetch_assoc($result)){
			if($row['id']==1){
				$lol = "<script>document.getElementById('descript').innerHTML =".$row['cost']."</script>";
			}
		}	
	}else{
			echo "No results were found";
		}
	mysqli_close($db_conn);
?>