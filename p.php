<?php

$server="localhost";
$username="root";
$password="root";
$db="placement";
$conn=mysqli_connect($server,$username,$password,$db);
if($conn)
echo "connected";
else
echo mysqli_error();
?>
