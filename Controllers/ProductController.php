<?php 
    class ProductController extends BaseController {
        public function index() {
            return $this->view("controller.index",[
                'productTitle' => "view Product",
            ]);
        }

        public function show() {
            echo __METHOD__;
        }
    }
?>