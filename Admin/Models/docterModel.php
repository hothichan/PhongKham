<?php 
    class docterModel extends BaseModel {
        const TABLE = 'bacsi INNER JOIN khoakham ON bacsi.MaKhoa = khoakham.MaKhoa';
        const GETTABLE = 'bacsi';
        public function getAll($columns = ['*']) {
            return $this->all(self::TABLE, $columns);
        }

        public function insertDocter($keys, $data)
        {
            return $this->insert(self::GETTABLE, $keys, $data);
        }

        public function updateDocter($columns, $value, $id, $option) {
            return $this->update(self::GETTABLE, $columns, $value, $id, $option);
        }

        public function getDocter($select, $id, $value) {
            return $this->getOption(self::GETTABLE, $select, $id, $value);
        }

        public function deleteDocter($id, $columns) {
            return $this->delete(self::GETTABLE, $id, $columns);
        }
    }
?>