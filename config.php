<?php 

    $server ="";
    $user ="";
    $password ="";
    $dbname ="";
    $charset ="";

    class Database_Connection {

        public $server;
        public $user;
        public $password;
        public $dbname;
        public $charset;


        public function __construct($server,$user,$password,$dbname,$charset) {

            $this->servername = "localhost";
            $this->user = "root";
            $this->password = "";
            $this->dbname = "dbname_eagblogge";
            $this->charset = "utf8";
        }

        public function getConnect() {
        
        try{

                $dsn = "mysql:host=".$this->servername.";dbname=".$this->dbname.";charset=".$this->charset;
                $pdo  = new PDO($dsn, $this->user, $this->password);
                $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                return $pdo;

    
            } catch (PDOException $e) {
                    die("Connection Error : " . $e->getMessage()) ;
                        exit();
            }
        }
    }

    $Connect = new Database_Connection($server,$user,$password,$dbname,$charset);
    $PDO = $Connect->getConnect();




?>