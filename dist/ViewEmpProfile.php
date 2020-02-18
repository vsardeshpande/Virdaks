<?php
include("config.php");
$EmpCode = $_REQUEST["EmpCode"];

$sql = "select * from employee where EmployeeCode = '".$EmpCode."'";
$result = mysqli_query($con,$sql);
$data = mysqli_fetch_assoc($result);
echo json_encode($data);

