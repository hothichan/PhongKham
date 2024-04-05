<?php 
    class LoginModel extends BaseModel{
        const TABLE = 'user';
        public function login($data = ['*'], $option=[]) {
            return $this->getTable(self::TABLE, $data, $option);
        }
    }
?>