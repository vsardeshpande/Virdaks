<?php
error_reporting(0);
try {
    include("config.php");
    $data = json_decode(stripslashes($_REQUEST['EmpCode']));
    $sql = "update employee_leave_details set status = 'Approved' where EmployeeCode in (";
    foreach ($data as $x) {
        $emp_code_list[] = "'$x'";
    }
    $sql .= implode(',', $emp_code_list);
    $sql .= ")";

    if (mysqli_query($con, $sql)) {
        echo "Approved";
    } else {
        echo "Failed";
    }
} catch (Exception $e) {
    echo "Check with TS";
}

//echo $sql;
