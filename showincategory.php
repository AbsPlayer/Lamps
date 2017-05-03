<?php
include_once('baseclass.php');
$p = new Work_withDB();
$p->ShowProducts($_GET['cid']);
?>