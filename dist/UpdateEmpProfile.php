<?php
include("config.php");
$EmpCode = $_REQUEST["EmpCode"];
$EmpName = $_REQUEST["EmpName"];
$Company = $_REQUEST["Company"];
$Email = $_REQUEST["Email"];
$DOB = $_REQUEST["DOB"];
$Designation = $_REQUEST["Designation"];
$EmpType = $_REQUEST["EmpType"];

$sql = "UPDATE employee SET EmployeeName='".$EmpName."' , Company = '".$Company."' , Designation = '".$Designation."' , EmploymentType = '".$EmpType."' ,DOB = '".$DOB."', Email = '".$Email."' WHERE EmployeeCode = '".$EmpCode."'";
// $result = mysqli_query($con,$sql);
if( mysqli_query($con,$sql)){
    echo "Done";
}else{
    echo "Failed";
}