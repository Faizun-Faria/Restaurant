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
$sql = "select Dish_name,Price from dish";
$result = $conn->query($sql);
$row = mysqli_num_rows($result);
if ($row > 0){
	echo "<table align = 'center'>
	     <tr><th> Dish_Name</th>
		 <th> Price </th>
		 
	     </tr>";
	while($row = $result -> fetch_assoc()){
		echo "<tr><td> ". $row["Dish_name"]. 
		"</td><td> ". $row["Price"].
		"</td></tr>";
	}
	echo "</table>";
} else {
	echo "0 result";
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