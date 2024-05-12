<?php 
    class FacultyController extends BaseController {
        public $facultyModel;

        public function __construct() {
            $this->model('FacultyModel');
            $this->facultyModel = new FacultyModel();
        }
        public function index() {
            $data = $this->facultyModel->getAll();
            return $this->view('faculty.index',[
                'data' => $data
            ]);
        }
        public function search() {
            if($_SERVER['REQUEST_METHOD'] === 'post') {
                $TenKhoa = $_POST['search_tenkhoa'];
                $data = $this->facultyModel->searchFaculty(['MaKhoa','TenKhoa', 'HinhAnh'], 'TenKhoa',$TenKhoa);
                if(!empty($data)) {
                    return $this->view('faculty.index',[
                        'data' => $data
                    ]);
                } else {
                    return $this->view('faculty.index',[
                        'data' => $data
                    ]);
                }
            }
        }
    }
?>