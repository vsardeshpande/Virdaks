<?php
session_start();
$x = $_SESSION["ID"];
if ($x == "") {
    echo "<script>alert('session expires')</script>";
    header("refresh:0;url=login.html");
}
$cnt = 0;
include("config.php");
if (isset($_POST["UploadAt"])) {
    if ($_FILES['file']['name']) {
        $filename = explode(".", $_FILES['file']['name']);
        if (end($filename) == "csv") {
            $handle = fopen($_FILES['file']['tmp_name'], "r");
            while ($data = fgetcsv($handle)) {
                $EmployeeCode = mysqli_real_escape_string($con, $data[0]);
                $mn = mysqli_real_escape_string($con, $data[2]);
                $m = strtotime($mn);

                $AttendanceDate = date('y-m-d', $m);
                $InTime = mysqli_real_escape_string($con, $data[8]);
                $InDeviceName = mysqli_real_escape_string($con, $data[9]);
                $OutTime = mysqli_real_escape_string($con, $data[10]);
                $OutDeviceName = mysqli_real_escape_string($con, $data[11]);
                $Status = mysqli_real_escape_string($con, $data[12]);
                $StatusCode = mysqli_real_escape_string($con, $data[13]);
                $Duration = mysqli_real_escape_string($con, $data[14]);
                $LateBy = mysqli_real_escape_string($con, $data[15]);
                $EarlyBy = mysqli_real_escape_string($con, $data[16]);
                $Overtime = mysqli_real_escape_string($con, $data[17]);
                $IsOnLeave = mysqli_real_escape_string($con, $data[18]);
                $LeaveType = mysqli_real_escape_string($con, $data[19]);
                $IsOnOutDoorEntries = mysqli_real_escape_string($con, $data[20]);
                $OutDoorDuration = mysqli_real_escape_string($con, $data[21]);
                $PuchRecords = mysqli_real_escape_string($con, $data[22]);
                $ShiftName = mysqli_real_escape_string($con, $data[23]);

                if ($cnt != 0) {
                    $query = "INSERT INTO attendence(EmployeeCode,AttendanceDate,InTime,InDeviceName,OutTime,OutDeviceName,Status,StatusCode,Duration,LateBy,EarlyBy,Overtime,IsOnLeave,LeaveType,IsOnOutDoorEntries,OutDoorDuration,PunchRecords,ShiftName)VALUES('$EmployeeCode','$AttendanceDate','$InTime','$InDeviceName','$OutTime','$OutDeviceName','$Status','$StatusCode','$Duration','$LateBy','$EarlyBy','$Overtime','$IsOnLeave','$LeaveType','$IsOnOutDoorEntries','$OutDoorDuration','$PuchRecords','$ShiftName')";
                    if (mysqli_query($con, $query)) {
                        //echo "Success ".$AttendenceDate;
                        $cnt = $cnt + 1;
                    } else {
                        echo "Something wrong ";
                        header("refresh:0;url=Admin.html");
                    }
                } else {
                    $cnt = $cnt + 1;
                }
            }
            fclose($handle);

            echo "<script type='text/javascript'>alert('Done')</script>";

            header("refresh:0;url=Admin.html");
        } else {
            echo "Select only csv file";
        }
    } else {
        echo "Select file";
    }
}
