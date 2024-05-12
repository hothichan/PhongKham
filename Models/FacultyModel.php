<?php 
    class FacultyModel extends BaseModel {
        const TABLE = 'khoakham';
        public function getAll($columns = ['*']) {
            return $this->all(self::TABLE, $columns);
        }

        public function searchFaculty($columns = ['*'], $id, $value) {
            return $this->search(self::TABLE, $columns, $id, $value);
        }
    }
?>