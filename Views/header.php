
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Phòng khám đa khoa Phước Thịnh</title>
    <link rel="icon" href="./public/img/logo.png" type="image/png">
    <link rel="stylesheet" href="./public/css/trangChu.css">
    <link rel="stylesheet" href="./public/css/dsKhoa.css">
    <?php if(isset($_REQUEST['controller']) && $_REQUEST['controller'] === 'doctor'):?>
        <?php if(isset($_REQUEST['action']) && $_REQUEST['action'] === 'index'):?>
            <link rel="stylesheet" href="./public/css/dsBacSi.css">
        <?php endif;?>

        <?php if(isset($_REQUEST['action']) && $_REQUEST['action'] === 'detail'):?>
            <link rel="stylesheet" href="./public/css/chiTietBS.css">
        <?php endif;?>
    <?php endif;?>
    <?php if(isset($_REQUEST['controller']) && $_REQUEST['controller'] === 'list'):?>
        <link rel="stylesheet" href="./public/css/dsKhoaBacSi.css">
    <?php endif;?>
        <link rel="stylesheet" href="./public/css/datLich.css">
        <link rel="stylesheet" href="./public/css/thongbao.css">
</head>
<body>
    <header>
        <div class="logo">
            <img src="./public/img/logo.png" alt="logo">
            <p>Phước Thịnh</p>
        </div>
       <div class="search">
           <div class="sub-search">
                <form action="index.php?controller=faculty&action=search" method="post">
                    <input type="text" placeholder="Tìm kiếm khoa" name="search_tenkhoa">
                    <span><img src="./public/icons/search.svg" alt="icon"></span>
                </form>
            </div>
        </div>
        <div class="content-right">
            <div class="icon-calendar">
                <img src="./public/icons/clock-regular.svg" alt="icon">
                <p>Lịch hẹn</p>
                <span id="notification-calendar"></span>
            </div>
            <div class="icon-account">
                <a href=" 
                    <?php 
                        if(isset($_SESSION['sdt'])) {
                            echo "index.php?controller=user&action=logout";
                        } else {
                            echo "index.php?controller=user&action=index";
                        }
                    ?> ">
                    <img src="./public/icons/user-regular.svg" alt="icon"></i>
                    <p> 
                        <?php
                            if(isset($_SESSION['sdt'])) {
                                echo "Đăng xuất";
                            } else {
                                echo "Đăng nhập";
                            }
                        ?>
                    </p>
                </a>
            </div>
        </div>  
    </header>

    <nav>
        <ul class="menu">
            <li><a href="index.php">Trang chủ</a></li>
            <li><a href="index.php?controller=faculty&action=index">Đặt lịch</a></li>
            <li><a href="index.php?controller=doctor&action=index">Bác sĩ</a></li>
            <li><a href="index.php?controller=faculty&action=index">Khoa</a></li>
            <li><a href="#">Tin tức</a></li>
        </ul>
    </nav>
    <?php if(!isset($_REQUEST['controller']) || $_REQUEST['controller'] === 'home'):?>
        <div class="space"></div>
    <?php endif;?>

    