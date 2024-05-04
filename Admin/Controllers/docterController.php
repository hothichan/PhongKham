<?php
    class docterController extends BaseController {
        public $docterModel;
        public $serviceModel;
        function __construct(){
            $this->model("docterModel");
            $this->docterModel = new docterModel();

            $this->model("serviceModel");
            $this->serviceModel = new serviceModel();
        }
        function index() {
            $data = $this->docterModel->getAll(['MaBS', 'TenBS', 'sdt', 'DiaChi', 'email', 'NgaySinh', 'GioiTinh', 'GioiThieu', 'TenKhoa', 'khoakham.MaKhoa', 'anh']);
            $services = $this->serviceModel->getAll();
            return $this->view("docter.index",
            [
                'data' => $data,
                "services" => $services
            ]);
        }

        public function insert() {
            // Kiểm tra có dữ liệu fileupload trong $_FILES không
            // Nếu không có thì dừng
            if (!isset($_FILES["avatar"]))
            {
                echo "Dữ liệu không đúng cấu trúc";
                die;
            }
            // Kiểm tra dữ liệu có bị lỗi không
            if ($_FILES["avatar"]['error'] != 0)
            {
                echo "Dữ liệu upload bị lỗi";
                die;
            }

            //Thư mục bạn sẽ lưu file upload
            $target_dir    = "./public/img/docter/";
            //Vị trí file lưu tạm trong server (file sẽ lưu trong uploads, với tên giống tên ban đầu)
            $target_file   = $target_dir . basename($_FILES["avatar"]["name"]);

            $allowUpload   = true;

            //Lấy phần mở rộng của file (jpg, png, ...)
            $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);

            // Cỡ lớn nhất được upload (bytes)
            $maxfilesize   = 800000;

            ////Những loại file được phép upload
            $allowtypes    = array('jpg', 'png', 'jpeg', 'gif');


            if(isset($_POST["submit"])) {
                //Kiểm tra xem có phải là ảnh bằng hàm getimagesize
                $check = getimagesize($_FILES["avatar"]["tmp_name"]);
                if($check !== false)
                {
                    echo "Đây là file ảnh - " . $check["mime"] . ".";
                    $allowUpload = true;
                }
                else
                {
                    echo "Không phải file ảnh.";
                    $allowUpload = false;
                }
            }

            // Kiểm tra nếu file đã tồn tại thì không cho phép ghi đè
            // Bạn có thể phát triển code để lưu thành một tên file khác
            if (file_exists($target_file))
            {
                echo "Tên file đã tồn tại trên server, không được ghi đè";
                $allowUpload = false;
            }
            // Kiểm tra kích thước file upload cho vượt quá giới hạn cho phép
            if ($_FILES["avatar"]["size"] > $maxfilesize)
            {
                echo "Không được upload ảnh lớn hơn $maxfilesize (bytes).";
                $allowUpload = false;
            }

            // Kiểm tra kiểu file
            if (!in_array($imageFileType,$allowtypes ))
            {
                echo "Chỉ được upload các định dạng JPG, PNG, JPEG, GIF";
                $allowUpload = false;
            }

            if ($allowUpload)
            {
                // Xử lý di chuyển file tạm ra thư mục cần lưu trữ, dùng hàm move_uploaded_file
                if (move_uploaded_file($_FILES["avatar"]["tmp_name"], $target_file))
                {
                    echo "File ". basename( $_FILES["avatar"]["name"]).
                    " Đã upload thành công.";

                    echo "File lưu tại " . $target_file;

                }
                else
                {
                    echo "Có lỗi xảy ra khi upload file.";
                }
            }
            else
            {
                echo "Không upload được file, có thể do file lớn, kiểu file không đúng ...";
            }
            if($_SERVER['REQUEST_METHOD'] === 'POST') {
                $TenKH = $_POST['TenBS'];
                $sdt = $_POST['sdt'];
                $DiaChi = $_POST['DiaChi'];
                $email = $_POST['email'];
                $NgaySinh = $_POST['NgaySinh'];
                $GioiTinh = $_POST['GioiTinh'];
                $MaKhoa = $_POST['MaKhoa'];
                $GioiThieu = $_POST['GioiThieu'];


                $anh = basename( $_FILES["avatar"]["name"]);
                $data = $this->docterModel->insertDocter(
                ['TenBS','sdt','DiaChi','email' ,'NgaySinh' ,'GioiTinh', 'MaKhoa', 'anh', 'GioiThieu'], 
                ["'{$TenKH}'", "'{$sdt}'", "'{$DiaChi}'", "'{$email}'", "'{$NgaySinh}'", "'{$GioiTinh}'", "'{$MaKhoa}'", "'{$anh}'", "'{$GioiThieu}'"]);
    
                if($data) {
                    header('location: index.php?controller=docter&action=index');
                } else {
                    echo 'lỗi';
                }
            }
        }

        public function update() {
            if (!isset($_FILES["avatarUpdate"]))
            {
                echo "Dữ liệu không đúng cấu trúc";
                die;
            }
            // Kiểm tra dữ liệu có bị lỗi không
            if ($_FILES["avatarUpdate"]['error'] != 0)
            {
                echo "Dữ liệu upload bị lỗi";
                die;
            }
            // Kiểm tra có dữ liệu fileupload trong $_FILES không
            // Nếu không có thì dừng

            //Thư mục bạn sẽ lưu file upload
            $target_dir    = "./public/img/docter/";
            //Vị trí file lưu tạm trong server (file sẽ lưu trong uploads, với tên giống tên ban đầu)
            $target_file   = $target_dir . basename($_FILES["avatarUpdate"]["name"]);

            $allowUpload   = true;

            //Lấy phần mở rộng của file (jpg, png, ...)
            $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);

            // Cỡ lớn nhất được upload (bytes)
            $maxfilesize   = 800000;

            ////Những loại file được phép upload
            $allowtypes    = array('jpg', 'png', 'jpeg', 'gif');


            if(isset($_POST["submit"])) {
                //Kiểm tra xem có phải là ảnh bằng hàm getimagesize
                $check = getimagesize($_FILES["avatarUpdate"]["tmp_name"]);
                if($check !== false)
                {
                    $allowUpload = true;
                }
                else
                {
                    echo "Không phải file ảnh.";
                    $allowUpload = false;
                }
            }

            // Kiểm tra nếu file đã tồn tại thì không cho phép ghi đè
            // Bạn có thể phát triển code để lưu thành một tên file khác
            if (file_exists($target_file))
            {
                echo "Tên file đã tồn tại trên server, không được ghi đè";
                $allowUpload = false;
                die;
            }
            // Kiểm tra kích thước file upload cho vượt quá giới hạn cho phép
            if ($_FILES["avatarUpdate"]["size"] > $maxfilesize)
            {
                echo "Không được upload ảnh lớn hơn $maxfilesize (bytes).";
                $allowUpload = false;
            }

            // Kiểm tra kiểu file
            if (!in_array($imageFileType,$allowtypes ))
            {
                echo "Chỉ được upload các định dạng JPG, PNG, JPEG, GIF";
                $allowUpload = false;
            }

            if ($allowUpload)
            {
                // Xử lý di chuyển file tạm ra thư mục cần lưu trữ, dùng hàm move_uploaded_file
                if (move_uploaded_file($_FILES["avatarUpdate"]["tmp_name"], $target_file))
                {
                    echo "File ". basename( $_FILES["avatarUpdate"]["name"]).
                    " Đã upload thành công.";

                    echo "File lưu tại " . $target_file;

                }
                else
                {
                    echo "Có lỗi xảy ra khi upload file.";
                }
            }
            else
            {
                echo "Không upload được file, có thể do file lớn, kiểu file không đúng ...";
            }

            $id = $_REQUEST['id'] ?? '';
            if(empty($id)) {
                echo "Lỗi";
            } else {

                if($_SERVER['REQUEST_METHOD'] === 'POST') {
                    $anh = basename( $_FILES["avatarUpdate"]["name"]);
                    $img = $this->docterModel->getDocter(['anh'], 'MaBS', $id);
                    $img = $this->docterModel->getDocter(['anh'], 'MaBS', $id);
                    $imgString = $img[0]['anh'];
                    $link = "public/img/docter/{$imgString}";
                    if(unlink($link)) {
                        $this->docterModel->updateDocter(
                        ['TenBS','sdt', 'DiaChi', 'email', 'NgaySinh', 'GioiTinh', 'MaKhoa', 'anh'],
                        [$_POST['TenBS'],  $_POST['sdt'], $_POST['DiaChi'], $_POST['email'],$_POST['NgaySinh'], $_POST['GioiTinh'], $_POST['MaKhoa'], $anh], 
                        'MaBS', $id);
                        header('location: index.php?controller=docter&action=index');
                    } else {
                        echo 'lỗi';
                    }
                } else {
                    echo 'Lỗi rồi' ;
                }
            }
        }
        
        public function showForm() {
            $id = $_REQUEST['id'] ?? '';

            if(empty($id)) {
                echo "Lỗi";
            } else {
                $data = $this->docterModel->getDocter( 
                ['MaBS', 'TenBS','sdt', 'DiaChi', 'email', 'NgaySinh', 'GioiTinh', 'MaKhoa', 'anh'], 
                'MaBS', $id);
                $services = $this->serviceModel->getAll();
                return $this->view("update.formUpdateDocter",
                [
                    'data' => $data,
                    'services' => $services
                ]);
            }
        }

        public function delete() {
            $id = $_REQUEST['id'] ?? '';

            if(empty($id)) {
                echo "Lỗi";
            } else {
                $img = $this->docterModel->getDocter(['anh'], 'MaBS', $id);
                $imgString = $img[0]['anh'];
                $link = "public/img/docter/{$imgString}";
                if(unlink($link)) {
                    $this->docterModel->deleteDocter($id, 'MaBS');
                    header('location: index.php?controller=docter&action=index');
                }else {
                    echo "Lỗi xảy ra";
                }
                
            }

        }
    }
?>