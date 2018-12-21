<?php
setcookie("user", "", time() - 100);
setcookie("admin", "", time() - 100);

header("Location: index.php");
die();

?>