<?php 
    class UserController extends BaseController {
        public $userModel;
        public $data;
        public function __construct() {
            $this->model("UserModel");
            $this->userModel = new UserModel();
        }
        public function index() {
            return $this->view("user.login");
        }
        public function register() {
            return $this->view('user.register');
        }

        public function login() {
            if($_SERVER['REQUEST_METHOD'] ===  'POST') {
                $sdt = $_POST['sdt'];
                $pass = $_POST['password'];
                $this->data = $this->userModel->loginUser(['sdt', 'MatKhauDangNhap'], [$sdt, $pass]);
            }
            
            if(!empty($this->data)) {
                $_SESSION['sdt'] = $_POST['sdt'];
                header('location: index.php?controller=home&action=index');
            } else {
                $warning = "Số điện thoại hoặc mật khẩu không đúng";
                return $this->view('user.login', 
                ['warning' => $warning]);
            }
        }
        public function logout() {
            unset($_SESSION['sdt']);
            header('location: index.php?controller=home&action=index' );
        }

        public function createAccount() {
            if($_SERVER['REQUEST_METHOD'] == 'POST') {
                $username = $_POST['username'];
                $sdt = $_POST['sdt'];
                $email = $_POST['email'];
                $password = $_POST['password'];
                if($password !== $_POST['repeatpw']) {
                    return $this->view('user.register',[
                        'warning' => 'Mật khẩu không khớp'
                    ]);
                } 

                $userByPhone = $this->userModel->getUser(["*"], 'sdt', $sdt);
                $userByEmail = $this->userModel->getUser(["*"], 'email', $email);

                if(!empty($userByPhone)) {
                    return $this->view('user.register',[
                        'warning' => 'Số điện thoại đã tồn tại'
                    ]);
                } else if(!empty($userByEmail)) {
                    return $this->view('user.register',[
                        'warning' => 'Email đã tồn tại'
                    ]);
                } else {
                    $data = $this->userModel->insertUser(['TenKH','sdt', 'email', 'MatKhauDangNhap'], ["'{$username}'", "'{$sdt}'", "'{$email}'", "'{$password}'"]);
                    if($data) {
                        $_SESSION['sdt'] = $sdt;
                        header('location: index.php?controller=home&action=index');
                    } else {
                        // header('location: index.php?controller=user&action=index');
                        echo 'lỗi';
                    }
                }

            }
        }

    } 
?>