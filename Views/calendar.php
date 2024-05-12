<!-- calendar -->
<div class="calendar">
    <div class="title">
        <span>Lịch hẹn</span>
        <button type="button" id="btn-close"><img src="./public/icons/xmark-solid.svg" alt="icon"></button>
    </div>
    <div class="content">
        <?php if(isset($_SESSION['sdt'])):?>
            <?php foreach($data as $calendar):?>
                <div class="sub-content">
                    <img src="./public/icons/calendar-regular.svg" alt="icon">
                    <div class="infor-calendar">
                        <p>Mã phiếu khám: <span id="id-calendar"><?php echo $calendar['MaLichKham']?></span></p>
                        <p>Thời gian khám: <span id="time">
                            <?php 
                                $date = date('d/m/Y', strtotime($calendar['NgayKham']));
                                echo $calendar['ThoiGianKham'] . " | ". $date;
                            ?>
                        </span></p>
                        <p>Phòng khám: <span id="room"><?php echo $calendar['TenPhongKham']?></span></p>
                        <p>Khoa: <span id="name-faculty"><?php echo $calendar['TenKhoa']?></span></p>
                        <p>Bác sĩ: <span id="name-doctor"><?php echo $calendar['TenBS']?></span></p>
                        <p>Trạng thái: <span id="status"><?php echo $calendar['TenTrangThai']?></span></p>
                    
                        <p><a href="index.php?controller=calendar&action=delete&id=<?php echo $calendar['MaLichKham']?>"><span id="status" style="color: red; font-size: 16px;">Hủy lịch</span></a></p>
                    </div>
                </div>
            <?php endforeach;?>
        <?php endif;?>
        <?php if(!isset($_SESSION['sdt'])):?>
            <h3>Chưa có thông tin</h3>
        <?php endif;?>
    </div>
    <div class="total">
        <span style="font-weight: 700;">Tổng: </span><span id="totalCalendar"></span>
    </div>
</div>