<?php
include("config.php");
$EmpCode = $_REQUEST["EmpCode1"];
$pl = $_REQUEST["PL"];
$sl = $_REQUEST["SL"];
$cl = $_REQUEST["CL"];
$ol = $_REQUEST["OL"];
//echo "hello".$EmpCode;

$sql = "UPDATE employee SET  PL = '".$pl."' , SL = '".$sl."',CL = '".$cl."', OL = '".$ol."' WHERE EmployeeCode = '".$EmpCode."'";
// $result = mysqli_query($con,$sql);
if( mysqli_query($con,$sql)){
    echo "Done";
}else{
    echo "Failed";
}
//echo "hello";