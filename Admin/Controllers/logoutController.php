<?php 
    class logoutController extends BaseController {
        public function logout() {
            unset($_SESSION['name']);
            header('location: index.php?controller=home&action=index' );
        }
    }
?>