<?php
    include "functions.php"; 
    error_reporting(0);
    session_start();
    
    is_logged_in_admin();
    
    echo '<div id=log_out>Logged in as, <span class="dyn_patient">Admin</span></div>' ;
?> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link type="text/css" rel="stylesheet" href="style.css" />
</head>
<body>
<h1>Sheba Clinic</h1>
<center>
	<table>
        <tr>
        	<td><a href="admin_room.php" target= '_blank'><div class="buttons">Rooms</div></a></td>
            <td><a href="admin_employee.php" target= '_blank'><div class="buttons">Employees</div></a></td>
            <td><a href="admin_account.php" target= '_blank'><div class="buttons">Accounts</div></a></td>
        	
        </tr>
    </table>
</center>
</body>
<a href="log-out.php" id="log_out"><button>Log - out</button></a> <!-- update the log-out -->
<p> </p>
<a href="admin_change_pass.php" id="log_out"><button>Change Password</button></a>

<?php 
function connect_server(){
    $link = mysql_connect('localhost','root','asdlkj') or die('Could not connect to the Server: ');
    //echo "Connected !!<br/>";

    $db = mysql_select_db('370') or die('Could not connect to database');
}
?>