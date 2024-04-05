<form action="index.php?controller=login&action=index" method="post">
    Tên:
    <input type="text" name="name"> <br>
    mật khẩu:
    <input  type="password" name="pass"> <br>
    <button  type="submit" name="login" >Đăng nhập</button> <br>
    <?php
        // foreach ($warning as $user) 
        if(!empty($warning)) {
            echo $warning;
        }
    ?>
    <br>
    <a href="index.php?controller=product&action=index">Quay lại</a>
</form>