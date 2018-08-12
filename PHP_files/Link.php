<?php
    $tname=$_POST['taskname'];

       //$tname = "design plan";

    $con = mysqli_connect("localhost","root","root");
        if (!$con)
        {
        die('Could not connect: ' . mysqli_error());
        }
        mysqli_select_db($con, "employee");
    $result = mysqli_query($con,"SELECT task_name,duration,start_date,end_date,status from to_do_list  where task_name='".$tname."'");
         

    if($result) {
    while($row = mysqli_fetch_assoc($result))
    {

        $output[]=$row;
    }
    print(json_encode($output));
}
    mysqli_close($con);
?>