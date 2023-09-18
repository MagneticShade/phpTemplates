<?php
error_reporting(E_ALL);

$link_image=$_GET['link'];
$id_image=$_GET['id'];
$views=$_GET['views'];

require_once('../php/link.php');

// // $views=mysqli_query($link,"SELECT `views` from `images` WHERE `id`='$id_image'");
// // $views=mysqli_fetch_array($views)[0];
$tmp=$views+1;


mysqli_query($link,"UPDATE `images` SET `views`='$tmp' WHERE `id`=$id_image");

$picture_insert=<<<EOF
<img src="$link_image">
EOF;
$link_template=file_get_contents('../templates/page.tpl');
$link_template=str_replace('{{IMAGE}}',$picture_insert,$link_template);
$link_template=str_replace('{{VIEWS}}',$views+1,$link_template);
echo $link_template;

$link->close();
