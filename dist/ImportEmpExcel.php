<?php
$cnt = 0;
include("config.php");
$Company = '';
if (isset($_POST["Upload"])) {
    if ($_FILES['file']['name']) {
        $filename = explode(".", $_FILES['file']['name']);
        if (end($filename) == "csv") {
            $handle = fopen($_FILES['file']['tmp_name'], "r");
            while ($data = fgetcsv($handle)) {
                $EmployeeCode = mysqli_real_escape_string($con, $data[0]);
                $EmployeeName = mysqli_real_escape_string($con, $data[1]);
                $DeviceCode = mysqli_real_escape_string($con, $data[2]);
                //$Company=mysqli_real_escape_string($con,$data[3]);
                $Department = mysqli_real_escape_string($con, $data[4]);
                $Location = mysqli_real_escape_string($con, $data[5]);
                $Designation = mysqli_real_escape_string($con, $data[6]);
                $Grade = mysqli_real_escape_string($con, $data[7]);
                $Team = mysqli_real_escape_string($con, $data[8]);
                $Category = mysqli_real_escape_string($con, $data[9]);
                $EmployemntType = mysqli_real_escape_string($con, $data[10]);
                $Gender = mysqli_real_escape_string($con, $data[11]);
                $DOJ = mysqli_real_escape_string($con, $data[12]);
                //$DOC=mysqli_real_escape_string($con,$data[13]);
                $CardNumber = mysqli_real_escape_string($con, $data[14]);
                $ShiftRoaster = mysqli_real_escape_string($con, $data[15]);
                $Status = mysqli_real_escape_string($con, $data[16]);
                //$DOR=mysqli_real_escape_string($con,$data[17]);

                if (substr($EmployeeCode, 0, 1) == '1') {
                    $Company = 'Virdaks Engineering';
                } else if (substr($EmployeeCode, 0, 1) == '2') {
                    $Company = 'Ganesh';
                } else if (substr($EmployeeCode, 0, 1) == '3') {
                    $Company = 'XYZ';
                }

                

                if ($cnt != 0) {
                    $query = "INSERT INTO employee(EmployeeCode,EmployeeName,DeviceCode,Company,Department,Location,Designation,Grade,Team,Category,EmploymentType,Gender,DOJ,CardNumber,ShiftRoaster,Status)VALUES('$EmployeeCode','$EmployeeName','$DeviceCode','$Company','$Department','$Location','$Designation','$Grade','$Team','$Category','$EmployemntType','$Gender','$DOJ','$CardNumber','$ShiftRoaster','$Status')";
                    // echo $query;
                    if (mysqli_query($con, $query)) {
                        //echo "Success ";
                        $cnt = $cnt + 1;
                    } else {
                        echo "Something went wrong";
                        header("refresh:+0;url=401.html");
                    }
                } else {
                    $cnt = $cnt + 1;
                }
            }
            fclose($handle);
            echo "<script type='text/javascript'>alert('Done')</script>";
            header("refresh:0;url=index.html");
        } else {
            echo "Select only csv file";
        }
    } else {
        echo "Select file";
    }
}
