<?php
include("Config.php");

$x = '';

session_start();
$sessionid = '';
if (isset($_SESSION["UN"])) {
    $sessionid = $_SESSION["UN"];
} else {
    $sessionid = 'na';
}

$sql1 = "Select EmployeeCode as 'EmployeeCode' from employee where Email='$sessionid'";
$result1 = mysqli_query($con, $sql1);
if (mysqli_num_rows($result1) > 0) {
    
    while ($r = mysqli_fetch_assoc($result1)) {
        $data = $r["EmployeeCode"];
    }
    echo $data;
} else {
    echo "NA";
}
