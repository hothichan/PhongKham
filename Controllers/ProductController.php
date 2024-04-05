<?php 
    class ProductController extends BaseController {
        public $productModel;
        public function __construct()
        {
            $this->model("productModel");
            $this->productModel = new ProductModel();
        }
        public function index() {
            $data = $this->productModel -> getAll(['name']); 
            return $this->view("controller.index",
            ['data' => $data]);
        }
    }
?>