<?php 
    class ProductModel extends BaseModel{
        const TABLE = 'products';
        public function getAll($columns = ['*']) {
            return $this->all(self::TABLE, $columns);
        }
    }
?>