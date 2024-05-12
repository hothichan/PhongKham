<?php 
    class ListController extends BaseController {
        public $ListModel;
        public function __construct() {
            $this->model('ListModel');
            $this->ListModel = new ListModel();
        }
        public function index() {
            $value = $_REQUEST['id'] ?? '';
            $data = $this->ListModel->getById(['MaBS', 'TenBS', 'anh', 'DanhGia','GiaKham'],"MaKhoa", $value);
            return $this->view('list.index',[
                'data' => $data
            ]);
        }
    }
?>