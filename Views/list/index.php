<div class="infor-faculty">
        <p id="name-faculty">Cơ Xương Khớp</p>
        <p id="disease">Bệnh <span id="name-faculty">Cơ Xương Khớp</span>:</p>
        <p id="describe">
            /Gout
            |Thoái hóa khớp: khớp gối, cột sống thắt lưng, cột sống cổ
            |Viêm khớp dạng thấp, Viêm đa khớp, Viêm gân
            |Tràn dịch khớp gối, Tràn dịch khớp háng, Tràn dịch khớp khủy, Tràn dịch khớp vai
            |Loãng xương, đau nhức xương
            |Viêm xương, gai xương
            |Viêm cơ, Teo cơ, chứng đau mỏi cơ
            |Yếu cơ, Loạn dưỡng cơ
            |Các chấn thương về cơ, xương, khớp
            |...
        </p>
    </div>
    <div class="list-doctor">
        <p id="btn-Control">Xem thêm &darr;</p>
        <div class="doctor">
            <?php foreach($data as $list):?>
                <div class="sub-doctor">
                    <div class="img-doctor">
                        <img src="./Admin/public/img/doctor/<?php echo $list['anh']?>" alt="anh" id="avatar-doctor">
                        <span><a href="index.php?controller=doctor&action=detail&id=<?php echo $list['MaBS']?>">Xem thêm</a></span>
                    </div>
                    <div class="infor-doctor">
                        <p id="name-doctor"><?php echo $list['TenBS']?></p>
                        <p id="describe">
                            Hơn 30 năm kinh nghiệm khám và điều trị các bệnh nội cơ xương khớp và 40 năm kinh nghiệm khám Nội tổng quát\
                            Nguyên Phó Giám đốc Bệnh viện E\
                            Bác sĩ nhận khám bệnh nhân từ 4 tuổi trở lên\
                        </p>
                        <p>Đánh giá: 
                            <span id="evaluate">
                                <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                <span><img src="./public/icons/star-regular.svg" alt="icon"></span>
                                <span id="totalEvaluate"><a href="#">(120 đánh giá)</a></span>
                            </span>
                        </p>
                        <p>Giá khám: <span id="price"><?php echo $list['GiaKham']?></span></p>
                        <a href="index.php?controller=calendarContent&action=index&id=<?php echo $list['MaBS']?>"><button id="btn-calendar">Đặt lịch</button></a>
                    </div>
                </div>
            <?php endforeach;?>
        </div>
    </div>