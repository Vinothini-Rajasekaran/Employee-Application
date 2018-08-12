<?php
    
       $tname = $_POST["taskname"];
        $dur = $_POST["duration"];
        $sd = $_POST["start_date"];
        $ed = $_POST["end_date"];
        $status = $_POST["status"];
        $desc = $_POST["desc"];
        $emp_no = $_POST["emp_no"];
        
        /*$tname = "hey";
        $dur = "23";
        $sd = "12/12/18";
        $ed = "12/12/20";
        $status = "not done";
        $desc = "not started";
        $emp_no = "1234";*/
		
	$con = mysqli_connect("localhost","root","root");
        if (!$con)
        {
        die('Could not connect: ' . mysqli_error());
        }
        mysqli_select_db($con, "employee");
	$result = mysqli_query($con,"INSERT INTO to_do_list VALUES ('".$tname."','".$dur."','".$sd."','".$ed."','".$status."','".$desc."','".$emp_no."')");
       
       	if($result == 1)
        {
		echo "success";
        }
        else
       	{
         	echo "failure";
        }
        mysqli_close($con);
?>






