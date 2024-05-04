<?php 
    require "./Core/Database.php";
    require "./Models/BaseModel.php";
    require "./Controllers/BaseController.php";

    require "./Views/header.php";


    $controllerName = ucfirst(strtolower(($_REQUEST['controller']) ?? 'home') . 'Controller'); 
    $actionName = $_REQUEST['action'] ?? "index";
    require "./Controllers/{$controllerName}.php";
    $controllerObject = new $controllerName;
    $controllerObject -> $actionName();

    // require "./Views/home/index.php";
    require "./Views/footer.php";
?>