<?php 
    class appointmentController extends BaseController {
        public $appointmentModel;
        public function __construct() {
            $this->model("appointmentModel");
            $this->appointmentModel = new appointmentModel();
        }

        public function index() {
            $data = $this->appointmentModel->getAll([
                'MaLichKham', 'ThoiGianDat', 'ThoiGianKham', 'NoiDungKham', 'GhiChu', 'TenKH', 'TenPhongKham', 'TenBS', 'lichkham.id_TrangThai', 'TenTrangThai', 'TenKhoa'
            ]);
            return $this->view("appointment.index",
            ['data' => $data]);
        }

        public function update() {
            $id = $_REQUEST['id'] ?? '';
            $status = $_REQUEST['status'] ?? '';
            if(empty($id) || empty($status)) {
                echo "Lỗi";
            } else {
                if($status === 'confirm') {
                    $this->appointmentModel->updateAppointment(
                    ['id_TrangThai'], ['2']
                    , 'MaLichKham', $id);
                } else {
                    $this->appointmentModel->updateAppointment(
                    ['id_TrangThai'], ['3']
                    , 'MaLichKham', $id);
                }
                header('location: index.php?controller=appointment&action=index');
            }
        }
    }
?>