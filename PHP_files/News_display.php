<?php
   $desc=$_POST["desc"];
   //$img="~/images/1.jpg";
    $con = mysqli_connect("localhost","root","root");
        if (!$con)
        {
        die('Could not connect: ' . mysqli_error());
        }
        mysqli_select_db($con, "employee");
    $result = mysqli_query($con,"SELECT img,info from news where info='".$desc."'");
    
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