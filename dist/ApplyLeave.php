<?php
include("config.php");
$EmpCode = $_REQUEST["EmpCode"];
$EmpName = $_REQUEST["EmpName"];
$LeaveType = $_REQUEST["LeaveType"];
$Reasone = $_REQUEST["Reasone"];
$From = $_REQUEST["From"];
$To = $_REQUEST["To"];
$Count = $_REQUEST["Count"];

//$sql = "UPDATE employee_leave_details SET  LeaveType = '".$LeaveType."' , DateFrom = '".$From."' , DateTo = '".$To."' , Total = '".$Count."' WHERE EmployeeCode = '".$EmpCode."'";
$sql = "INSERT INTO employee_leave_details (EmployeeCode, EmployeeName, LeaveType, DateFrom, DateTo, Total, Reasone) VALUES (".$EmpCode.",'".$EmpName."','".$LeaveType."','".$From."','".$To."','".$Count."','".$Reasone."') ";
// $result = mysqli_query($con,$sql);
if( mysqli_query($con,$sql)){
    echo "Done";
}else{
    echo "Failed";
}