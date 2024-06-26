
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <link rel="stylesheet" href="./public/Css/index.css"/>
        <link rel="stylesheet" href="./public/css/dangnhap.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
            rel="stylesheet"
        />
        <link
            rel="stylesheet"
            href="./public/fonts/fontawesome-free-6.5.2-web/css/all.min.css"/>
            
    </head>
    <body>
        
        <div id="main">
            <!-- Start Header -->
            <div class="header">
                <div>
                    <button>
                        <i class="fa-solid fa-bars"></i>
                    </button>
                </div>
                <div>
                    <button><a href="index.php?controller=auth&action=logout">Đăng xuất</a></button>
                </div>
            </div>
            <!-- End header -->
            <!-- Start menu -->
            <div class="content">
                <div class="menu">
                    <ul class="menu__nav">
                        <li><a href="index.php?controller=home&action=index">Trang chủ</a></li>
                        <li><a href="index.php?controller=user&action=index">Khách hàng</a></li>
                        <li><a href="index.php?controller=service&action=index">Khoa</a></li>
                        <li><a href="index.php?controller=doctor&action=index">Bác sỹ</a></li>
                        <li><a href="index.php?controller=room&action=index">Phòng khám</a></li>
                        <li><a href="index.php?controller=appointment&action=index">Đặt lịch</a></li>
                        <li><a href="index.php?controller=home&action=index">Tin tức</a></li>
                    </ul>
                </div>
                <!-- End menu -->