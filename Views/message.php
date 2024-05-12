<?php if(($_REQUEST['controller'] === 'calendar' && $_REQUEST['action'] === 'delete') || ($_REQUEST['controller'] === 'CalendarContent' && $_REQUEST['action'] === 'booking')):?>
    <div class="message">
        <h2><?php echo $title?></h2>

        <p><?php echo $message?></p>

        <a href="index.php">về trang chủ</a>
    </div>
<?php endif;?>

