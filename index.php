<?php
    require_once('config.php');
?>
<?php
if (isset($_POST['email']) and isset($_POST['password'])){
	// Assigning POST values to variables.
	$email = $_POST['email'];
	$password = $_POST['password'];
	// CHECK FOR THE RECORD FROM TABLE
	$query = "Select Name from Customer where Email_ID= '$email' and Password='$password'";
	$result = mysqli_query($conn, $query) or die(mysqli_error($conn));
	$count = mysqli_num_rows($result);
	if ($count == 1){
		header('location: Dashboard.php');
	//include 'dashboard.php';
	}else{
		echo "Invalid Login Credentials";
	}
}
?>
<html>
    <title>
        Login
    </title>
    <div align="center">
	    <form method="post" align = "center" top = "50%" >
		<fieldset>
		<legend>Login</legend>
		<table border="0.5" align="center" >
			
            <tr>
                <td><label for="email">Email</label></td>
                <td><input type="text" name="email" id="email" required></td>
            </tr>
            <tr>
                <td><label for="password">Password</label></td>
                <td><input type="password" name="password" id="password" required></input></td>
            </tr>
      
            <tr>
        		<td><input type="button" value="Registration" onclick="window.location = 'Registration.php'" /> </td>
                <td><input type="submit" value="Login"/> </td>
        	</tr>
        </table>
        </fieldset>
    </form>
</div>
</html>
