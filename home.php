<?php
session_start();
include_once 'dbconnect.php';

if(!isset($_SESSION['user']))
{
 header("Location: index.php");
}
$query = "SELECT * FROM users WHERE user_id=".$_SESSION['user'] ;
$result = $connection->query($query);
$userRow=mysqli_fetch_array($result);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome - <?php echo $userRow['email']; ?></title>
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
<div id="header">
 <div id="left">
    <label>cleartuts</label>
    </div>
    <div id="right">
     <div id="content">
         hi' <?php echo $userRow['username']; ?>&nbsp;<a href="logout.php?logout">Sign Out</a>
        </div>
    </div>
    <div class="contact_info">
    	<table>
    		<tr>
    			<td><?php echo $userRow['fname']; ?></td>
    		</tr>
    		<tr>
    			<td><?php echo $userRow['email']; ?></td>
    		</tr>
    		<tr>
    			<td><?php echo $userRow['username']; ?></td>
    		</tr>
    	</table>
    </div>
</div>
</body>
</html>