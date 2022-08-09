<?php
require_once __DIR__ . '/config.php';



$get_cat_qty = "SELECT * FROM `srm_emp_master`;";
$result = mysqli_query($connection, $get_cat_qty) or die(mysqli_error($connection));

$response = array();

if($result->num_rows >0){
    while($row = $result->fetch_assoc()){
        array_push($response,$row);
    }
}

$connection->close();
header('Content-Type: application/json');
echo json_encode($response);
?>