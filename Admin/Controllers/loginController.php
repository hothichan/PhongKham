<?php
    class loginController extends BaseController {
        public $loginModel;
        public $data;
        public function __construct() {
            $this->model("loginModel");
            $this->loginModel = new LoginModel();
        }
        public function index() {
            // $data; 
            if($_SERVER['REQUEST_METHOD'] ===  'POST') {
                $name = $_POST['name'];
                $pass = $_POST['pass'];
                $this->data = $this->loginModel->login(['name', 'pass'], [$name, $pass]);
                
            }

            if(!empty($this->data)) {
                $_SESSION['name'] = $name;
                $_SESSION['pass'] = $pass;
                return $this->view('home.index');
            } else {
                $warning = "tên đăng nhập hoặc mật khẩu không đúng";
                return $this->view('login.index', 
                ['warning' => $warning]);
            }
        }
    }
?>