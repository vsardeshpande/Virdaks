<?php
include("config.php");
$sal_mon = $_REQUEST["mon"];
$sal_year = $_REQUEST["year"];
//echo $sal_mon;

$sql = "SELECT * FROM attendence INNER JOIN employee_salary_details on attendence.EmployeeCode=employee_salary_details.EmployeeCode WHERE MONTH(AttendanceDate) = ".$sal_mon." and YEAR(AttendanceDate)=".$sal_year."";
$res = mysqli_query($con, $sql);
$data = array();
while ($row = mysqli_fetch_assoc($res)) {
    //$data[] = $row;
    array_push($data,$row);
}

$data = json_encode($data);
echo $data;
