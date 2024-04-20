<form action="index.php?controller=insert&action=index" method="post">
    <input type="text" name="name" id="">
    <button type="submit">Thêm</button>
</form> 
<?php 
    if(!empty($warning)) {
        echo $warning;
    }
?>