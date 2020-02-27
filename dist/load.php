<?php

//load.php

include("config.php");

$res = mysqli_query($con, "SELECT * FROM attendence where EmployeeCode='1001'");

$data = array();

while ($row = mysqli_fetch_array($res)) {
    $data[] = array(
        'id' => $row["ID"],
        'title'   => $row["EmployeeCode"],
        'start'   => $row["AttendanceDate"],
        'end'   => $row["StatusCode"]
    );
}
$data = json_encode($data);
echo $data;
