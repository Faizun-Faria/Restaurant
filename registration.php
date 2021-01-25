<?php
    require_once('config.php');
?>
 <?php
if(isset($_POST['Registration'])){
//$query ="Insert into Customer (name, email, password) values ('$_POST[name]', '$_POST[email]', '$_POST['password]')";
	$query1 = "select * from Customer";
	$result = mysqli_query($conn, $query1) or die(mysqli_error($conn));
	$count = mysqli_num_rows($result);
	$num = $count+1;
	$id = '2019'.''.$num;
	$query2="insert into Customer (Customer_ID,Name,Password,Email_ID) values ('$id','$_POST[name]', '$_POST[password]', '$_POST[email]')";
	$result2 = mysqli_query($conn,$query2)  or die(mysqli_error($conn));
if ($result2) header('location: index.php');
}
?>
<html>
    <title>
        Registration
    </title>
    <div align="center">
        <form method="post" top = "50%">
  		<fieldset>
    		<legend>Registration form</legend>
        	Name </br>
	    	<input type="text" name="name" required></br>
        	Email </br> 
        	<input type="email" name="email" required></br>
        	Password </br>
        	<input type="password" name="password" required></br>
        	<input type="button" name="Back" value="Back" onclick="window.location = 'index.php'">
        	<input type="submit" name="Registration" value="Registration">
  		</fieldset>
		</form>
	</div>
</html>
