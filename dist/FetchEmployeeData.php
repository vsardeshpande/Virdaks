<?php
    include("config.php");

    $sql = "select * from employee where 1";
    $res = mysqli_query($con,$sql);
    $data = array();
    while($row = mysqli_fetch_assoc($res))
    {
        $data[] = $row;
    }
    $data = json_encode($data);
    echo $data;
   