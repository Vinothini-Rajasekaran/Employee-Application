<?php
   //$uname=$_POST['username'];
   $uname = "vino";
    $con = mysqli_connect("localhost","root","root");
        if (!$con)
        {
        die('Could not connect: ' . mysqli_error());
        }
        mysqli_select_db($con, "employee");
    $result = mysqli_query($con,"SELECT t.task_name from to_do_list t where emp_no in (select s.employee_id from signup s where s.username = '".$uname."')");
    
    //echo "<table>";
    if($result) {
    while($row = mysqli_fetch_assoc($result))
    {
       // echo "<tr><td>".$row['image']."</td><td>".$row['birth_date']."</td><tr>";
        $output[]=$row;
    }
    print(json_encode($output));
}
    //echo "</table>";
    mysqli_close($con);
?>