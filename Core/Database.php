<?php 
    class Database {
        const HOST = 'localhost';
        const USER = 'root';
        const PASS = 'root';
        const DB_NAME = 'phongkham';

        public function connect() {
            $connect = mysqli_connect(self::HOST, self::USER, self::PASS, self::DB_NAME);
            mysqli_set_charset($connect, 'utf8');
            if($connect-> connect_errno) {
                die("Connection failed: ". $connect-> connect_error);
            }
            return $connect;
        }   
    }
?>