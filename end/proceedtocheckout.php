<?php
session_start();
require_once("dbcontroller.php");
$db_handle = new DBController();
if(!empty($_GET["action"])) {
switch($_GET["action"]) {
	case "add":
		if(!empty($_POST["quantity"])) {
			$productByCode = $db_handle->runQuery("SELECT * FROM tblproduct WHERE code='" . $_GET["code"] . "'");
			$itemArray = array($productByCode[0]["code"]=>array('name'=>$productByCode[0]["name"], 'code'=>$productByCode[0]["code"], 'quantity'=>$_POST["quantity"], 'price'=>$productByCode[0]["price"], 'image'=>$productByCode[0]["image"]));
			
			if(!empty($_SESSION["cart_item"])) {
				if(in_array($productByCode[0]["code"],array_keys($_SESSION["cart_item"]))) {
					foreach($_SESSION["cart_item"] as $k => $v) {
							if($productByCode[0]["code"] == $k) {
								if(empty($_SESSION["cart_item"][$k]["quantity"])) {
									$_SESSION["cart_item"][$k]["quantity"] = 0;
								}
								$_SESSION["cart_item"][$k]["quantity"] += $_POST["quantity"];
							}
					}
				} else {
					$_SESSION["cart_item"] = array_merge($_SESSION["cart_item"],$itemArray);
				}
			} else {
				$_SESSION["cart_item"] = $itemArray;
			}
		}
	break;
	case "remove":
		if(!empty($_SESSION["cart_item"])) {
			foreach($_SESSION["cart_item"] as $k => $v) {
					if($_GET["code"] == $k)
						unset($_SESSION["cart_item"][$k]);				
					if(empty($_SESSION["cart_item"]))
						unset($_SESSION["cart_item"]);
			}
		}
	break;
	case "empty":
		unset($_SESSION["cart_item"]);
	break;	
}
}
?>
<HTML>
<HEAD>
<TITLE>Marvel Shopping Cart</TITLE>
<link href="games2.css" type="text/css" rel="stylesheet" />
</HEAD>
<BODY>
<div id="shopping-cart">
<div class="txt-heading">Marvel Shop</div>

<a id="btnEmpty" href="index.php?action=empty">Clear</a>
<?php
if(isset($_SESSION["cart_item"])){
    $total_quantity = 0;
    $total_price = 0;
	$Total_price=0;
	$TP=0;
	$Sale=0;
	$Shipping=0;
?>	
<table class="tbl-cart" cellpadding="10" cellspacing="1">
<tbody>
<tr>
<th style="text-align:left;">Name of game</th>
<th style="text-align:left;">Release date</th>
<th style="text-align:right;" width="5%">Quantity</th>
<th style="text-align:right;" width="10%">Unit Price</th>
<th style="text-align:right;" width="10%">Price</th>
<th style="text-align:center;" width="5%">Remove</th>
</tr>	
<?php	

   foreach ($_SESSION["cart_item"] as $item){
	   $Shipping=$total_quantity*5;
	   $total_quantity += $item["quantity"];
	   if($total_quantity==3){
			echo "<div class='text'>Congratulations, you have a 10% discount</div>";
			$item_price = $item["price"]*$item["quantity"];
			$TP += $item_price;
			$Sale=$TP*10/100;
			$TP=$TP-$Sale;
		}
		else{	
		$item_price = ($item["price"])*$item["quantity"];
		$TP+=$item_price;
		}
		?>
				<tr>
				<td><img src="<?php echo $item["image"]; ?>" class="cart-item-image" /><?php echo $item["name"]; ?></td>
				<td><?php echo $item["code"]; ?></td>
				<td style="text-align:right;"><?php echo $item["quantity"]; ?></td>
				<td  style="text-align:right;"><?php echo "$ ".$item["price"]; ?></td>
				<td  style="text-align:right;"><?php echo "$ ". number_format($item_price,2); ?></td>
				<td style="text-align:center;"><a href="index.php?action=remove&code=<?php echo $item["code"]; ?>" class="btnRemoveAction"><img src="icon-delete.png" alt="Remove Item" /></a></td>
				</tr>
				<?php
				$Shipping=$total_quantity*5;
				$total_price =$TP+$Shipping;
		}
		?>

<tr>
<td colspan="2" align="right">Total:</td>
<td align="right"><?php echo $total_quantity; ?></td>
<td align="right" colspan="2"><strong><?php echo "$ ".number_format($total_price, 2); ?></strong></td>
<td></td>
</tr>
</tbody>
</table>		
  <?php
} else {
?>
<div class="no-records">Your Cart is Empty</div>
<?php 
}
?>
</div>

<div id="product-grid">
	<?php
	$product_array = $db_handle->runQuery("SELECT * FROM tblproduct ORDER BY id ASC");
	if (!empty($product_array)) { 
		foreach($product_array as $key=>$value){
	?>
	
	<?php
		}
	}
	?>
</div>
<button id ="back" onclick= "window.location.href='index.php'">Back to Shop</button>
</BODY>
</HTML>