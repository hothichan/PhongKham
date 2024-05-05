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
        <link rel="stylesheet" href="./public/css/dsBacSi.css">
        <?php endif;?>
        <?php if(isset($_REQUEST['controller']) && $_REQUEST['controller'] === 'list'):?>
            <link rel="stylesheet" href="./public/css/dsKhoaBacSi.css">
        <?php endif;?>
        <link rel="stylesheet" href="./public/css/datLich.css">
        <?php if(isset($_REQUEST['controller']) && $_REQUEST['controller'] === 'detail'):?>
            <link rel="stylesheet" href="./public/css/chiTietBS.css">
        <?php endif;?>
</head>
<body>
    <header>
        <div class="logo">
            <img src="./public/img/logo.png" alt="logo">
            <p>Phước Thịnh</p>
        </div>
       <div class="search">
            <div class="sub-search">
                <input type="text" placeholder="Tìm kiếm">
                <span><img src="./public/icons/search.svg" alt="icon"></span>
            </div>
        </div>
        <div class="content-right">
            <div class="icon-calendar">
                <img src="./public/icons/clock-regular.svg" alt="icon">
                <p>Lịch hẹn</p>
                <span id="notification-calendar"></span>
            </div>
            <div class="icon-account">
                <a href="#">
                    <img src="./public/icons/user-regular.svg" alt="icon"></i>
                    <p>Đăng nhập</p>
                </a>
            </div>
        </div>  
    </header>

    <nav>
        <ul class="menu">
            <li><a href="index.php?controller=home&action=index">Trang chủ</a></li>
            <li><a href="index.php?controller=faculty&action=index">Đặt lịch</a></li>
            <li><a href="index.php?controller=doctor&action=index">Bác sĩ</a></li>
            <li><a href="index.php?controller=faculty&action=index">Khoa</a></li>
            <li><a href="#">Tin tức</a></li>
        </ul>
    </nav>
    <?php if(!isset($_REQUEST['controller']) || $_REQUEST['controller'] === 'home'):?>
        <div class="space"></div>
    <?php endif;?>

    <!-- calendar -->
    <div class="calendar">
        <div class="title">
            <span>Lịch hẹn</span>
            <button type="button" id="btn-close"><img src="./public/icons/xmark-solid.svg" alt="icon"></button>
        </div>
        <div class="content">
            <div class="sub-content">
                <img src="./public/icons/calendar-regular.svg" alt="icon">
                <div class="infor-calendar">
                    <p>Mã phiếu khám: <span id="id-calendar">123</span></p>
                    <p>Thời gian khám: <span id="time">10h-25/4</span></p>
                    <p>Phòng khám: <span id="room">Số 1</span></p>
                    <p>Khoa: <span id="name-faculty">Răng hàm mặt</span></p>
                    <p>Bác sĩ: <span id="name-doctor">Trần Văn A</span></p>
                    <p>Trạng thái: <span id="status">Đang xử lý</span></p>
                </div>
            </div>
            <div class="sub-content">
                <img src="./public/icons/calendar-regular.svg" alt="icon">
                <div class="infor-calendar">
                    <p>Mã phiếu khám: <span id="id-calendar">1243</span></p>
                    <p>Thời gian khám: <span id="time">8h-23/4</span></p>
                    <p>Phòng khám: <span id="room">Số 1</span></p>
                    <p>Khoa: <span id="name-faculty">Răng hàm mặt</span></p>
                    <p>Bác sĩ: <span id="name-doctor">Trần Văn A</span></p>
                    <p>Trạng thái: <span id="status">Đang xử lý</span></p>
                </div>
            </div>
        </div>
        <div class="total">
            <span style="font-weight: 700;">Tổng: </span><span id="totalCalendar"></span>
        </div>
    </div>