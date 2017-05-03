<?php
include_once('baseclass.php');
$p = new Work_withDB();
$p->ShowProductDetail($_GET['pid'],$_GET['cid']);
?>