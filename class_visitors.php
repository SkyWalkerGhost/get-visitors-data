<?php 

    class VISITORS {

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

        // table name
        public $table;

        // connection db with PDO
        public $PDO;

        
        public function __construct($PDO) {
            $this->pdo = $PDO;
            
        }

    
        public function getVisitors($IP_Address,$country,$city,$region_name,$continent_name,$time_zone,$latitude,$longitude,$visitTime) {

            $this->ip           = $IP_Address;
            $this->country      = $country;
            $this->city         = $city;
            $this->region       = $region_name;
            $this->continent    = $continent_name;
            $this->latitude     = $latitude;
            $this->longitude    = $longitude;
            $this->time_zone    = $time_zone;
            $this->visitTime    = $visitTime;

        if(strlen($this->ip) !=0 ) {

            $sql = "INSERT INTO `visit`(`visitors_ip_address`, `visitors_country`, `visitors_city`, `visitors_region`, `visitors_continent`, `visitors_latitude`, `visitors_longitude`, `visitors_timezone`, `visitors_time`) 
            VALUES (:ip, :country, :city, :region, :continent, :latitude, :longitude, :zone,  :time)";

            $stmt = $this->pdo->prepare($sql);

            $stmt->bindParam(':ip',             $this->ip);
            $stmt->bindParam(':country',        $this->country);
            $stmt->bindParam(':city',           $this->city);
            $stmt->bindParam(':region',         $this->region);
            $stmt->bindParam(':continent',      $this->continent);
            $stmt->bindParam(':latitude',       $this->latitude);
            $stmt->bindParam(':longitude',      $this->longitude);
            $stmt->bindParam(':zone',           $this->time_zone);
            $stmt->bindParam(':time',           $this->visitTime);

            if($stmt->execute()){
                    
                    $this->message = " Successfully Added to Database ";
                    // header("location: v.php");

            } else {

                    $this->message = " Error ";
            }
            

            }
        }


    }




?>