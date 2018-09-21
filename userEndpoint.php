<?php

require_once('mysql_connect.php');

header("Access-Control-Allow-Origin: *");

$query = "";

$result = mysqli_query($conn, $query);

$output = [
	'success'=> false,
	'users'=>[]
];

if($result){
	if(mysqli_num_rows($result)>0){
		$output['success']=true;
		while($row = mysqli_fetch_assoc($result)){
			$output['users'][] = $row;
		}
	} else {
		$output['error'] = 'no data';
	}
} else {
	$output['error'] = 'database error';
}

$json_output = json_encode($output);

print($json_output);

?>