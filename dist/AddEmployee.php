<?php
include("config.php");
if (isset($_POST["submit"])) {
    $EmpCode = $_POST["EmpCode"];
    $EmpName = $_POST["EmpName"];
    $Company = $_REQUEST["CompanyName"];
    $EmailID = $_REQUEST["EmailAddress"];
    $DOB = $_REQUEST["DOB"];
    $DOJ = $_REQUEST["DOJ"];
    $Dept = $_REQUEST["Department"];
    $Designation = $_REQUEST["Designation"];
    $EmpType = $_REQUEST["EmpType"];
    $Gender = $_REQUEST["gender"];
    $PL = $_REQUEST["PL"];
    $SL = $_REQUEST["SL"];
    $CL = $_REQUEST["CL"];
    $OL = $_REQUEST["OL"];
}

$sql = "INSERT INTO employee (EmployeeCode, EmployeeName, Company, Department, Designation, EmploymentType, Gender, DOJ, DOB, PL, SL, CL, OL, Email) VALUES (" . $EmpCode . ",'" . $EmpName . "','" . $Company . "','" . $Dept . "','" . $Designation . "','" . $EmpType . "','" . $Gender . "','" . $DOJ . "','" . $DOB . "','" . $PL . "','" . $SL . "','" . $CL . "','" . $OL . "','" . $EmailID . "') ";
//$LeaveSQL = "INSERT INTO employee_leave_details (EmployeeCode, EmployeeName, PL, SL, CL, OL) VALUES (" . $EmpCode . ",'" . $EmpName . "','".$PL."','".$SL."','".$CL."','".$OL."')";

try {
    if ((mysqli_query($con, $sql))) {
        echo "<script type='text/javascript'>alert('Done...!')</script>";
        //sleep(1500);
        header("Refresh:0; url=AddEmployee.html");
    } else {
        header("location:500.html");
    }
} catch (Exception $ex) {
    echo $ex;
}
