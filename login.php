<?php 
    session_start();     
    error_reporting(0);
    if(isset($_POST['submit'])){
        $job = $_POST['job'];
    if(empty($_POST['name']) && empty($_POST['password'])) {//problem 
        header("Location:login.php");
        echo "<h3>Please Fill up the empty text box.</h3>";//why its not working !
        exit();
    } 
    if($job == "Admin"){
     
    $link = mysql_connect('localhost','root','asdlkj') or die('Could not connect to the Server: ');
    $db = mysql_select_db('370') or die('Could not connect to database');
    

    $job = $_POST['job'];      
    $password = $_POST['password'];

    $data1 = "SELECT* FROM $job";   
    $query1 = mysql_query($data1);
    $value1 = mysql_fetch_assoc($query1);

    if($value1['password'] == $password){
        $_SESSION['position'] ='admin';
       header("Location: admin_room.php");
    
    }
    } else{
        $link = mysql_connect('localhost','root','asdlkj') or die('Could not connect to the Server: ');
        $db = mysql_select_db('370') or die('Could not connect to database');
    
    $job = $_POST['job'];    
    $name = $_POST['name'];    
    $password = $_POST['password'];
    
    $data = "SELECT* FROM $job where id='$name'";   
    $query = mysql_query($data);
    $value = mysql_fetch_assoc($query);

     if($value['password'] == $password){
                     
       if($job == "Receptionist"){  
       $data1 = "SELECT* FROM employee where employee_id='$name'";
       $query1 = mysql_query($data1);
       $value1 = mysql_fetch_assoc($query1);  
         $_SESSION['id'] = $value1['name'];
         $_SESSION['position'] ='receptionist';
         header("Location: rep_patient.php");
     }

     if($job == "Doctor"){
         $data1 = "SELECT* FROM employee where employee_id='$name'";
       $query1 = mysql_query($data1);
       $value1 = mysql_fetch_assoc($query1);  
         $_SESSION['id'] = $value1['name'];
         $_SESSION['position'] ='doctor';
         header("Location: doc_front.php");
     }

    if($job == "Patient"){
        $data1 = "SELECT* FROM patient where id='$name'";
       $query1 = mysql_query($data1);
       $value1 = mysql_fetch_assoc($query1); 
         $_SESSION['id'] = $value1['name'];
         $_SESSION['position'] ='patient';
         header("Location: patient_front.php");
     }

    if($job == "Nurse"){
         $data1 = "SELECT* FROM employee where employee_id='$name'";
       $query1 = mysql_query($data1);
       $value1 = mysql_fetch_assoc($query1);  
         $_SESSION['id'] = $value1['name'];
         $_SESSION['position'] ='nurse';
         header("Location: nurse_rooms.php");
     }
     
         }else{            
                 echo "Wrong password";
                 header("Location:login.php");
                }
     }         
     }
     
    
?>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style_login.css">
<title>Log in</title>
</head>

<body>
<div id="design" >
<center>
    <form action="login.php" method="POST">

    <h1>Sheba Clinic</h1>

	<table>

    <tr>/
            <td><br>Job Type</td>
            <td>
                <select name="job">
                        <option value="Admin">Admin</option>
                      <option value="Doctor">Doctor</option>
                      <option value="Nurse">Nurse</option>
                      <option value="Patient">Patient</option>
                      <option value="Receptionist">Receptionist</option>
                                            
                </select>
            </td>
        </tr>

    	<tr>
        	<td>ID</td>
            <td><input type="text" id="names" name="name" /></td>
        </tr>

        <tr>
        	<td>Password</td>
            <td><input type="password" id="pass" name="password" /></td>
        </tr>
        <tr>
            <td><input type="submit" value="Log-in" name="submit" class="submit"></td>
        </tr>
    </table>
    </form>
</center>

    <p id="error"><h3></h3></p>

</div>

</body>
</html>
