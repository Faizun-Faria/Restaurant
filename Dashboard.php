<?php
    require_once('config.php');
?>
<!DOCTYPE html>
<html>
<body>
<style> form { text-align: center; padding-top: 100px} </style>

<form id="Show All Restaurant Info" action="nameOfRestaurants.php" method="post">	
<input type="submit" value="Show All Restaurant Info">

</form>

<br>

<form id="Show Dish List" action="dish.php" method="post"> 
	
<input type="submit" value="Show Dish List">

</form>

<br>

<form id="Show all" action="order.php" method="post"> 
	
<input type="submit" value="Show all">

</form>

<br>

<form id="Search" action="search.php" method="post"> 
	
<input type="submit" value="Search">

</form>

</body>
</html>