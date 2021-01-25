<?php
    require_once('config.php');
    ?>

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

<body>

<br><br>

<style> form{ text-align: center; } </style>

<form action="" method="post"> 
	
<p>
	<label>Search for</label> <br>
	<input type="text" id="name" name="name" />
</p
<p>
	<input type="submit" id="btn" value="Search" />
	</p>
</form>

<?php

if (isset($_POST['name'])){
	// Assigning POST values to variables.
	$name = $_POST['name'];
	// CHECK FOR THE RECORD FROM TABLE
	$query1 = "select Name,Dish_name,price from (restaurant join dish on restaurant.id = dish.Restaurant_id) where Dish_name='$name'";
	$result1 = $conn->query($query1);
	$count1 = mysqli_num_rows($result1);

	$query2 = "select Name,Dish_name,price from (restaurant join dish on restaurant.id = dish.Restaurant_id) where name='$name'";
	$result2 = $conn->query($query2);
	$count2 = mysqli_num_rows($result2);

if ($count1> 0){
	echo "<table align = 'center'> 
	     <tr>
		<th> Restaurant Name </th>
		<th> Dish Name </th>
		<th> Price </th>
	     </tr>";
	while($row = $result1 -> fetch_assoc()){
		echo "<tr><td> ". $row["Name"]. 
		"</td><td> ". $row["Dish_name"].
		"</td><td> ". $row["price"]. 
		"</td></tr>";
	}
	echo "</table>";
}else if($count2> 0){
	
echo "<table align = 'center'>
	     <tr>
		<th> Restaurant Name </th>
		<th> Dish Name </th>
		<th> Price </th>
	     </tr>";
	while($row = $result2 -> fetch_assoc()){
		echo "<tr><td> ". $row["Name"]. 
		"</td><td> ". $row["Dish_name"].
		"</td><td> ". $row["price"]. 
		"</td></tr>";
	}
	echo "</table>";

} 
else{
	echo "No result found";
}
}
?>


</body>
</html>
