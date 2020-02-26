<?php
session_start();
error_reporting(0);
$x = $_SESSION["ID"];
if ($x == "") {
    echo "<script>alert('session expires')</script>";
    header("refresh:0;url=login.html");
}
$cnt = 0;
$flag = 0;
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

                $count_date = "select count(AttendanceDate) as 'count' from attendence where AttendanceDate = '" . $AttendanceDate . "'";
                $res_cnt = mysqli_query($con, $count_date);

                try {
                    $time1 = strtotime($InTime);
                    $starttime = date('H:i:s', $time1);

                    $time2 = strtotime($OutTime);
                    $endtime = date('H:i:s', $time2);

                    // $d1 = new DateTime($starttime);
                    // $d2 = new DateTime($endtime);
                    // $interval = $d2->diff($d1);

                    $diff = strval(abs($endtime - $starttime));
                    $ot = 
                    //echo 'Login Time : ' . date('H:i:s', $loginTime) . '<br>';
                    //echo ($diff < 0) ? 'Late!' : 'Right time!';
                    // echo '<br>';
                    // echo 'Time diff in sec: ' . $diff . " EmpCode : " . $EmployeeCode;


                    if ($cnt != 0) {

                        $query = "INSERT INTO attendence(EmployeeCode,AttendanceDate,InTime,InDeviceName,OutTime,OutDeviceName,Status,StatusCode,Duration,LateBy,EarlyBy,Overtime,IsOnLeave,LeaveType,IsOnOutDoorEntries,OutDoorDuration,PunchRecords,ShiftName)VALUES('$EmployeeCode','$AttendanceDate','$InTime','$InDeviceName','$OutTime','$OutDeviceName','$Status','$StatusCode','$diff','$LateBy','$EarlyBy','$Overtime','$IsOnLeave','$LeaveType','$IsOnOutDoorEntries','$OutDoorDuration','$PuchRecords','$ShiftName')";
                        if (mysqli_query($con, $query)) {
                            $flag += 1;
                            //echo "Success ".$flag;
                            $cnt = $cnt + 1;
                        } else {
                            $flag -= 0;
                            echo "failed" . $flag . "Query = " . $query;
                            //echo "Something wrong ";                        
                            //header("refresh:0;url=Admin.html");
                        }
                    } else {
                        $cnt = $cnt + 1;
                    }
                } catch (Exception $ex) {
                    //echo "some errors";
                }
            }
            fclose($handle);
            // echo "<script type='text/javascript'>alert('Done')</script>";
            //header("refresh:0;url=Admin.html");
            // if ($flag == 1) {
            //     echo "<script type='text/javascript'>alert('Done')</script>";
            //     //header("refresh:0;url=Admin.html");
            // } elseif($flag == 0) {
            //     echo "<script type='text/javascript'>alert('Failed...check employee record or attendance sheet for any mismatch constraints')</script>";
            //     echo $flag;
            //     //header("refresh:0;url=Admin.html");
            // }
            if ($flag > 0) {
                echo "<script type='text/javascript'>alert('Attendance recorded for employees present in database')</script>";
                header("refresh:0;url=Admin.html");
            } else {
                echo "<script type='text/javascript'>alert('Failed...check employee record or attendance sheet for any mismatch constraints')</script>";
                //echo $flag;
                header("refresh:0;url=Admin.html");
            }
        } else {
            echo "Select only csv file";
        }
    } else {
        echo "Select file";
    }
}
