<?php
    class BaseController {
        const VIEW_FORDER_NAME = 'Views';
        protected function view($viewPath, array $data = []) {
            foreach ($data as $key => $value) {
                $$key = $value;
            }
             require(self::VIEW_FORDER_NAME .'/'. str_replace('.', '/', $viewPath).'.php');
        }
    }
?>