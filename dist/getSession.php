<?php
include("Config.php");
session_start();
$sessionid = '';
if(isset($_SESSION["ID"])){
    $sessionid = $_SESSION["ID"];
}else{
    $sessionid = 'na';
}
echo $sessionid;
?>