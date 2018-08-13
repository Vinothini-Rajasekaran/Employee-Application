<?php
    $fdate=$_POST['fromdate'];

       //$tname = "design plan";

    $con = mysqli_connect("localhost","root","root");
        if (!$con)
        {
        die('Could not connect: ' . mysqli_error());
        }
        mysqli_select_db($con, "employee");
    $result = mysqli_query($con,"SELECT from_date,to_date,salary,(salary*0.1) as federal_tax,(salary*0.03) as state_tax from salaries where from_date='".$fdate."'");
         

    if($result) {
    while($row = mysqli_fetch_assoc($result))
    {

        $output[]=$row;
    }
    print(json_encode($output));
}
    mysqli_close($con);
?>