<?php
    $first_name=$_POST['username'];
    $con = mysqli_connect("localhost","root","root");
        if (!$con)
        {
        die('Could not connect: ' . mysqli_error());
        }
        mysqli_select_db($con, "employee");
    $result = mysqli_query($con,"SELECT e.image,e.emp_no,e.birth_date,e.first_name,e.last_name,e.gender,d.dept_name,e.hire_date from employees e, departments d, dept_emp de, signup s where e.first_name = '".$first_name."' and s.employee_id = e.emp_no and e.emp_no = de.emp_no and de.dept_no = d.dept_no ");
    
    if($result) {
    while($row = mysqli_fetch_assoc($result))
    {

        $output[]=$row;
    }
    print(json_encode($output));
}
    mysqli_close($con);
?>