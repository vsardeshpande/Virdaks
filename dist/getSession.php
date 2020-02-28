<?php
include("Config.php");
session_start();
$sessionid = '';
if(isset($_SESSION["UN"])){
    $sessionid = $_SESSION["UN"];
}else{
    $sessionid = 'UN';
}
echo $sessionid;
?>