<?php
    
       $name = $_POST["username"];
        $pwd = $_POST["password"];
        //$name = "admin";
		//$pwd = "admin";
		$con = mysqli_connect("localhost","root","root");
        if (!$con)
        {
        die('Could not connect: ' . mysqli_error());
        }
        mysqli_select_db($con, "employee");
        $result = mysqli_query($con,"SELECT * FROM signup WHERE username = '".$name."' AND  password = '".$pwd."'");
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
       	if($row['username'] == $name && $row['password'] == $pwd)
        {
		echo "success";
        }
        else
       	{
         	echo "failure";
        }
        mysqli_close($con);
?>