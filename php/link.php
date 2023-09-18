<?php

    $host="localhost";
    $username="root";
    $password="";
    $db="phpNew";

    $link=new mysqli($host,$username,$password,$db);
    if ($link -> connect_errno) {
        die( "Failed to connect to MySQL: " . $link -> connect_error);
    }
?>