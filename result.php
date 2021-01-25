<head>
	<style>
		table{
			font-family: arial, sans-serif;
			border-collapse: collapse;
			width: 100%;
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

if (isset($_POST['name'])){
	// Assigning POST values to variables.
	$name = $_POST['name'];
	// CHECK FOR THE RECORD FROM TABLE
	$query1 = "select Name,Dish_name,price from (restaurant join dish on restaurant.id = dish.Restaurant_id) where name='name'";
	$result1 = mysqli_query($conn, $query) or die(mysqli_error($conn));
	$count1 = mysqli_num_rows($result);

	$query2 = "select Name,Dish_name,price from (restaurant join dish on restaurant.id = dish.Restaurant_id) where name='dish_name'";
	$result2 = mysqli_query($conn, $query) or die(mysqli_error($conn));
	$count2 = mysqli_num_rows($result);
	
//$sql = "select Name,Dish_name,price from (restaurant join dish on restaurant.id = dish.Restaurant_id)";
//$result = $conn->query($sql);
//$row = mysqli_num_rows($result);
if (($count1> 0)||($count2>0)){
	echo "<table>
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
}
?>