<!-- Start docter-->
<div class="user">
    <button class="docter-Insert__btn"><a href="#">Thêm bác sĩ</a></button>

    <table>
        <thead>
            <tr>
                <th>STT</th>
                <th>Tên bác sĩ</th>
                <th>Email</th>
                <th>Số điện thoại</th>
                <th>Địa chỉ</th>
                <th>Ngày sinh</th>
                <th>Giới tính</th>
                <th>Khoa làm việc</th>
                <th>Giới thiệu</th>
                <th>Ảnh</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <?php $i=0;?>
            <?php foreach($data as $value):?>
                <?php $i++;?>
            <tr>
                <td><?php echo $i;?></td>
                <td><?php echo $value['TenBS']?></td>
                <td><?php echo $value['email']?></td>
                <td><?php echo $value['sdt']?></td>
                <td><?php echo $value['DiaChi']?></td>
                <td><?php echo $value['NgaySinh']?></td>
                <td><?php echo $value['GioiTinh']?></td>
                <td><?php echo $value['TenKhoa']?></td>
                <td><?php echo $value['GioiThieu']?></td>
                <td class="avatar">
                    <img src="../Admin/public/img/docter/<?php echo $value['anh']?>" alt="ảnh bác sĩ">
                </td>
                <td>
                    <button><a href="index.php?controller=docter&action=showForm&id=<?php echo $value['MaBS']?>">Sửa</a></button>
                    <button><a href="index.php?controller=docter&action=delete&id=<?php echo $value['MaBS']?>">Xóa</a></button>
                </td>
            </tr>
            <?php endforeach;?>
        </tbody>
    </table>
</div>
<!-- End docter -->
</div>
</div>
<div class="form__insert form__insert-docter">
    <div class="form__insert-content">
        <h2>Thêm bác sĩ</h2>
        <button class="close-btn close-btn__docter">
            <i class="fa-solid fa-xmark"></i>
        </button>
        <form action="index.php?controller=docter&action=insert" method="post" enctype="multipart/form-data">
            <label for="name">Tên bác sĩ</label>
            <input type="text" name="TenBS" id="name" /> <br />
            <label for="name">Số điện thoại</label>
            <input type="text" name="sdt" id="name" /><br />
            <label for="name">Địa chỉ</label>
            <input type="text" name="DiaChi" id="name" /><br />
            <label for="name">Email</label>
            <input type="text" name="email" id="name" /><br />
            <label for="name">Ngày sinh</label>
            <input type="date" name="NgaySinh" id="name" /><br />
            <label for="name">Giới tính</label>
            <select name="GioiTinh" id="">
                <option value="">-----Giới tính-----</option>
                <option value="Nam">Nam</option>
                <option value="Nữ">Nữ</option>
            </select>
            <label for="">Khoa</label>
            <select name="MaKhoa">
                <option value="">-----Khoa-----</option>
                    <?php foreach($services as $value): ?>
                        <option value="<?php echo $value['MaKhoa']?>"><?php echo $value['TenKhoa']?></option>
                    <?php endforeach;?>
            </select>
            <label for="">Giới thiệu</label>
            <textarea name="introduceDoctor" id="" cols="45" rows="10"></textarea>
            <label for="avatar">Ảnh</label>
            <input type="file" name="avatar" id=""> <br>
            
            <button type="submit" name="insert" class="insert">
                Thêm
            </button>
        </form>
    </div>
</div>
<script>
    $(document).ready(function () {
    CKEDITOR.replace("introduceDoctor");
});

</script>