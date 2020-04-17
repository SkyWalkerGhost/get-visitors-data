<?php 
	
	// ბაზასთან კავშირის გამოძახება
	require_once "config.php";

	// IP ADDRESS
	require_once "ip_address.php";

	//მომხმარებლის ip მისამართის გაგების შემდეგ შეგვიძლია მონაცემი გავგაზნოთ ბმულის საშუალებით geoplugin.net-ზე რის შემდეგაც მივიღებთ წვდომას სხვადასხვა მონაცემებზე
	$geopluginURL = 'http://www.geoplugin.net/php.gp?id='.getIPAddress();
    $addrDetailsArr = unserialize(file_get_contents($geopluginURL));

    $country        = trim(strip_tags(htmlentities(filter_var($addrDetailsArr['geoplugin_countryName'],FILTER_SANITIZE_STRIPPED))));
    $city           = trim(strip_tags(htmlentities(filter_var($addrDetailsArr['geoplugin_city'],FILTER_SANITIZE_STRIPPED))));
    $region_name    = trim(strip_tags(htmlentities($addrDetailsArr['geoplugin_regionName'])));
    $continent_name = trim(strip_tags(htmlentities(filter_var($addrDetailsArr['geoplugin_continentName'],FILTER_SANITIZE_STRIPPED))));
    $latitude       = trim(strip_tags(htmlentities(filter_var($addrDetailsArr['geoplugin_latitude'],FILTER_SANITIZE_STRIPPED))));
    $longitude      = trim(strip_tags(htmlentities(filter_var($addrDetailsArr['geoplugin_longitude'],FILTER_SANITIZE_STRIPPED))));
    $time_zone      = trim(strip_tags(htmlentities(filter_var($addrDetailsArr['geoplugin_timezone'],FILTER_SANITIZE_STRIPPED))));

    // თარიღის და დროის გაგება
	date_default_timezone_set("Asia/Tbilisi");
    $Date =  Date("d/m/Y");
    $Hours =  Date("H:i:s");
    $visitTime = $Hours . ' ' . $Date;

    // ასატვირთი ფაილის გამოძახება
    require_once "class_visitors.php";
    $class_visitors = new VISITORS($PDO);
    $class_visitors->getVisitors($IP_Address,$country,$city,$region_name,$continent_name,$time_zone,$latitude,$longitude,$visitTime);
?>



<!DOCTYPE html>
<html>
<head>
	<title> VISITORS </title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>	

		<div class="alert alert-success text-center">
				<?=$class_visitors->message;?>
		</div>

</body>
</html>