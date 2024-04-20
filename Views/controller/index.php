<?php
    foreach ($data as $key => $name) {
        foreach($name as $value) {
            echo "<ul>
                    <li>{$value}</li>
                </ul>";

        }
    }
?> 
<a href="index.php?controller=form&action=index">link</a>