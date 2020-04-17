<?php

	// ბაზასთან კავშირის გამოძახება
	require_once "config.php";

	class VisitorsData {

		// visitors information
        public $IP_Address;
        public $country;
        public $city;
        public $region_name;
        public $continent_name;
        public $latitude;
        public $longitude;
        public $time_zone;
        public $visitTime;

        // default visitors status 
        public $message;

        // connection db with PDO
        public $PDO;

        
        public function __construct($PDO) {
            $this->pdo = $PDO;
            
        }


        public function getData() {

        	$sql = "SELECT * FROM visit ORDER BY visit_id DESC LIMIT 100 ";
        	$stmt = $this->pdo->query($sql);
        	$count = $stmt->rowCount();

        	if($count > 0) {

        		$this->visitorsNumbers = $count;

        		while ($visitors_row = $stmt -> fetch(PDO::FETCH_BOTH)) :

        			// create array

        			$visitorsArr[] = $visitors_row;

        		endwhile;

        		return $visitorsArr;
        	}
        }
	}

	$class_data = new VisitorsData($PDO);
	$Data = $class_data->getData();


 ?>

<!DOCTYPE html>
<html>
<head>
	<title> Visitors Table </title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>

	<div class="container">


	<div class="alert alert-info text-center">
		<h3> საიტზე შემოსული მნახველების მონაცემები </h3>
	</div>

	<span> მონაცემების რაოდენობა : <b> [ <?=$class_data->visitorsNumbers;?> ] </b> </span>

	<table class="table table-striped table-dark">

	  <thead>
	    <tr>

	      <th scope="col"> ID: </th>
	      <th scope="col"> IP: </th>
	      <th scope="col"> ქვეყანა </th>
	      <th scope="col"> ქალაქი </th>
	      <th scope="col"> რეგიონი </th>
	      <th scope="col"> კონტინენტი </th>
	      <th scope="col"> გრძედი </th>
	      <th scope="col"> განედი </th>
	      <th scope="col"> დ. ზონა </th>
	      <th scope="col"> სტ. დრო </th>

	    </tr>
	  </thead>

	  <tbody>

	  	<?php foreach($Data as $data) : ?>

	    	<tr>
	      		<th> <?=$data['visit_id'];?> </th>
	      		<th> <?=$data['visitors_ip_address'];?> </th>
	      		<th> <?=$data['visitors_country'];?> </th>
	      		<th> <?=$data['visitors_city'];?> </th>
	      		<th> <?=$data['visitors_region'];?> </th>
	      		<th> <?=$data['visitors_continent'];?> </th>
	      		<th> <?=$data['visitors_latitude'];?> </th>
	      		<th> <?=$data['visitors_longitude'];?> </th>
	      		<th> <?=$data['visitors_timezone'];?> </th>
	      		<th> <?=$data['visitors_time'];?> </th>
	    	</tr>

		<?php endforeach;?>

	  </tbody>

	</table>
</div>

</body>
</html>