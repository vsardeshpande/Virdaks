<?php
try
{
    $server="localhost";
    $un="root";
    $pass="";
    $db="db_virdask";

    $con=mysqli_connect($server,$un,$pass,$db);

    if(!$con)
    {
        echo "<script type='text/javascript'>alert('Error in connection')</script>";
    }
}
catch(Exception $e)
{
    echo "<script type='text/javascript'>alert(.$e.)</script>";
}
