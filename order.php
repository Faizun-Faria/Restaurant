<head>
	<style>
		table{
			font-family: arial, sans-serif;
			border-collapse: collapse;
			width: 50%;
		}
		td,th{
			border: 1px solid #dddddd;
			text-align: center;
			padding: 8px;
		}
		tr:nth-child(even){
			background-color: #dddddd;
		}

	</style>
</head>


<?php
    require_once('config.php');
?>
<?php
$sql = "select Name,Dish_name,price from (restaurant join dish on restaurant.id = dish.Restaurant_id)";
$result = $conn->query($sql);
$row = mysqli_num_rows($result);
if ($row > 0){
	echo "<table align = 'center'>
	     <tr>
		<th> Restaurant Name </th>
		<th> Dish Name </th>
		<th> Price </th>
	     </tr>";
	while($row = $result -> fetch_assoc()){
		echo "<tr><td> ". $row["Name"]. 
		"</td><td> ". $row["Dish_name"].
		"</td><td> ". $row["price"]. 
		"</td></tr>";
	}
	echo "</table>";
} else{
	echo "No result found";
}

?>

<!DOCTYPE html>
<html>
<body>

<br><br>

<style> form{ text-align: center; } </style>

<form action="dashboard.php" method="post"> 
	
<input type="submit" value="Back">

</form>

</body>
</html>