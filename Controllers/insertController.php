<?php 
    class insertController extends BaseController {
        public $insertModel;
        public function __construct(){
            $this->model("insertModel");
            $this->insertModel = new insertModel();
        }

        public function index() {
            if($_SERVER['REQUEST_METHOD'] ===  'POST') {
                $name = $_POST['name'];
                $data = $this->insertModel->insert(['TenKH'], [$name]);
                if(!empty($data)) {
                    header('location: index.php?controller=product&action=index');
                } else {
                    $warning = "tên đăng nhập hoặc mật khẩu không đúng";
                    return $this->view('insert.index', 
                    ['warning' => $warning]);
                }
            }
        }
    }
?>