<?php 
    class DoctorController extends BaseController {
        public function index() {
            return $this->view("doctor.index");
        }
    }

?>