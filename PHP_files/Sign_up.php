<?php
    
        $name = $_POST["username"];
        $pwd = $_POST["password"];
	$eid = $_POST['employee_id'];
	$con = mysqli_connect("localhost","root","root");
        if (!$con)
        {
        die('Could not connect: ' . mysqli_error());
        }
        mysqli_select_db($con, "employee");
	$result = mysqli_query($con,"INSERT INTO Employee (username, password, employee_id) VALUES ('".$uname."','".$pwd."','".$eid."')");
       	if($result)
        {
		echo "success";
        }
        else
       	{
         	echo "failure";
        }
        mysqli_close($con);
?>






