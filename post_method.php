<?php
require_once __DIR__ . '/config.php';


$first_name = $_POST['firstName'];
$last_name = $_POST['lastName'];
$mobile_number = $_POST['userMobil'];
$user_email = $_POST['userEmail'];
$user_designation = $_POST['userDepart'];
$user_department = $_POST['userRole'];
date_default_timezone_set('Asia/Kolkata');
$date = date('Y-m-d h:i:s');

$result = array();

$get_cat_qty = "INSERT INTO srm_emp_master (emp_fname,emp_lname,emp_role,emp_mobile,emp_email,emp_department,is_active,created_by,created_date)
VALUES ('$first_name','$last_name','$user_designation','$mobile_number','$user_email','$user_department','Y','SRM','$date')";
$query = mysqli_query($connection, $get_cat_qty) or die(mysqli_error($connection));



if($query){
    $result["success"] = "Adding task was done";
    echo json_encode($result);
}else{
    $result["error"] = "Adding task failed";
    echo json_encode($result);
}

$connection->close();

?>