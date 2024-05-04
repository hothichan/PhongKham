<!-- Start docter-->
<div class="user">
    <button class="service-Insert__btn"><a href="#">Thêm khoa</a></button>

    <table>
        <thead>
            <tr>
                <th>STT</th>
                <th>Tên Khoa</th>
                <th>Hình ảnh</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <?php $i=0;?>
            <?php foreach($data as $value):?>
                <?php $i++;?>
            <tr>
                <td><?php echo $i;?></td>
                <td><?php echo $value['TenKhoa']?></td>
                <td class="avatar">
                    <img src="../Admin/public/img/service/<?php echo $value['HinhAnh']?>" alt="ảnh bác sĩ">
                </td>
                <td>
                    <button><a href="index.php?controller=service&action=delete&table=khoakham&id=<?php echo $value['MaKhoa']?>">Xóa</a></button>
                </td>
            </tr>
            <?php endforeach;?>
        </tbody>
    </table>
</div>
<!-- End docter -->
</div>
</div>
<div class="form__insert form__insert-service">
    <div class="form__insert-content">
        <h2>Thêm khoa</h2>
        <button class="close-btn close-btn__service">
            <i class="fa-solid fa-xmark"></i>
        </button>
        <form action="index.php?controller=service&action=insert&table=khachhang" method="post" enctype="multipart/form-data">
            <label for="name">Tên kkhoa</label>
            <input type="text" name="TenKhoa" id="name" /> <br />
            <label for="avatar">Ảnh</label>
            <input type="file" name="avatar" id=""> <br>
            <button type="submit" name="insert" class="insert">
                Thêm
            </button>
        </form>
    </div>
</div>