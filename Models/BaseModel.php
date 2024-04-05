<?php 
    class BaseModel extends Database {
        protected $connect;
        public function __construct() {
            $this->connect = $this->connect();
        }

        public function all($table, $select = ['*']) {
            $columns = implode(', ', $select);
            $sql = "SELECT {$columns} FROM {$table}" ;
            $query = $this->_query($sql);

            $data = [];
            while ($row = mysqli_fetch_assoc($query)) {
                array_push($data, $row);
            }
            return $data;
        }

        public function getTable($table, $select = ['*'], $options = []) {
            $columns = implode(', ', $select);
            $sql = "SELECT {$columns} FROM {$table} WHERE name = '{$options[0]}' AND pass = '{$options[1]}'" ;
            $query = $this->_query($sql);

            $data = [];
            while ($row = mysqli_fetch_assoc($query)) {
                array_push($data, $row);
            }
            return $data;
        }

        public function insert($table, $data = []) {
                $columns = implode(', ', array_keys($data));
                $values = implode(', ', array_values($data));
                $sql = "INSERT INTO {$table} ({$columns}) VALUES ({$values})";
                $query = $this->_query($sql);
                return $query;
        }

        private function _query($sql) {
            $query = mysqli_query($this->connect, $sql);
            return $query;
        }
    }
?>