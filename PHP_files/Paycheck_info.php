<?php
    $uname=$_POST['username'];
    $con = mysqli_connect("localhost","root","root");
        if (!$con)
        {
        die('Could not connect: ' . mysqli_error());
        }
        mysqli_select_db($con, "employee");
    $result = mysqli_query($con,"SELECT from_date, to_date, salary from salaries where emp_no in (SELECT  employee_id from signup s where s.username = '".$uname."') ");
         

    if($result) {
    while($row = mysqli_fetch_assoc($result))
    {

        $output[]=$row;
    }
    print(json_encode($output));
}
    mysqli_close($con);
?>