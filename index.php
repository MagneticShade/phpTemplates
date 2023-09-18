<?php
error_reporting(E_ALL);

$DIR_IMAGE="images";

$target_dir=__DIR__."/".$DIR_IMAGE."/";
$altTarget=__DIR__."\\".$DIR_IMAGE."\\";

if(isset($_FILES["files"])){
    foreach($_FILES["files"]["tmp_name"] as $key=>$tmp_name){
        $file_name=$_FILES["files"]["name"][$key];
        $file_tmp=$_FILES["files"]["tmp_name"][$key];
        $file_size=$_FILES["files"]['size'][$key];
        $file_error=$_FILES["files"]["error"][$key];
    }

    if($file_error==0){
        $target_file=$target_dir . basename($file_name) . PHP_EOL;
        echo $target_file;
        // "D:/OpenServer/domains/templatesUsage/images/". basename($file_name)
        move_uploaded_file($file_tmp,$target_file);
    }
}
require_once (__DIR__."/php/link.php");

$file=scandir($target_dir);
$arr=[];
foreach(array_slice($file,2) as $val){
    array_push($arr,$target_dir. '/' . $val);
}
foreach($arr as $value){
    $file_name=basename($value);
    $file_size=filesize($value);
    $url=mysqli_real_escape_string($link,$value);
    $sql_find = mysqli_query($link,"SELECT `name` FROM `images` WHERE `name` = '$file_name'");
    if(mysqli_num_rows($sql_find)==0){
        mysqli_query($link,"INSERT INTO `images`(`name`,`url`,`size`,views) VALUES ('$file_name','$url','$file_size','0')");

    }
}



$image_insert='';
$my_query = mysqli_query($link,"SELECT * FROM `images` ORDER BY `views` DESC");

$link->close();

while($result = mysqli_fetch_assoc($my_query)){
    $pictures_id=$result['id'];
    $pictures_views=$result['views'];
    $pictures_name=$result['name'];

    $image_insert .=<<<EOF
    <div class="subHolder">
    <a href="php/page.php?link=../$DIR_IMAGE/$pictures_name&id=$pictures_id&views=$pictures_views "<div class="counter"><img src="../$DIR_IMAGE/$pictures_name" class="preview"></a>
    <p> Количество просмотров: $pictures_views </p>
    </div>
    EOF;
}
$tmp = file_get_contents('templates/gallery.tpl');
$tmp = str_replace('{{GALLERY}}',$image_insert,$tmp); 
echo $tmp;

?>