<?php 
    class ListController extends BaseController {
        public function index() {
            return $this->view('list.index');
        }
    }
?>