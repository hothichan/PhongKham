<?php 
    class serviceController extends BaseController {
        public $serviceModel;
        function __construct() {
            $this->model("serviceModel");
            $this->serviceModel = new serviceModel();
        }
        public function index() {
            $data = $this->serviceModel->getAll();
            return $this->view("service.index",
            ['data' => $data]);
        }

        public function insert() {
            if($_SERVER['REQUEST_METHOD'] === 'POST') {
                $TenKhoa = $_POST['TenKhoa'];
                $data = $this->serviceModel->insertservice(
                ['TenKhoa'], 
                ["'{$TenKhoa}'"]);
    
                if($data) {
                    header('location: index.php?controller=service&action=index');
                } else {
                    // header('location: index.php?controller=user&action=index');
                    echo 'lỗi';
                }
            }
        }

        public function delete() {
            $id = $_REQUEST['id'] ?? '';
            if(empty($id)) {
                echo "Lỗi";
            } else {
                $this->serviceModel->deleteservice($id, 'MaKhoa');
                header('location: index.php?controller=service&action=index');
            }

        }
    }

?>