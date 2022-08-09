<?php
//!be*fa6m@20_20#
// if (!isset($_SESSION)) {
//     session_start();
//   }
$connection = mysqli_connect('localhost', 'root', '');
//$connection = mysqli_connect('localhost', 'ecomsale_vrou_db', 'D8B7BfA+QSbk');
if (!$connection){
    die("Database Connection Failed" . mysqli_error($connection));
}
$select_db = mysqli_select_db($connection, 'srm_tech');
//$select_db = mysqli_select_db($connection, 'ecomsale_vrou_db');

if (!$select_db){
    die("Database Selection Failed" . mysqli_error($connection));
}
?>
