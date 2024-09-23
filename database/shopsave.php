<?php
require "dbcon.php";
if (isset($_GET["save"])) {
$owner=$_GET["owner"];
$sname=$_GET["sname"];
$saddress=$_GET["saddress"];
$ownumber=$_GET["ownumber"];
$gst=$_GET["gst"];
$sql="insert into shop(owner,sname,saddress,ownumber,gst)value('$owner','$sname','$saddress','$ownumber','$gst')";
//$id=$_GET["txtid"];
//$pass=$_GET["txtpass"];
//$sql="insert into login(username,password) values('$id','$pass')";
mysqli_query($con,$sql);
echo "save";
//mysqli_close($con);
//$extra="shop.php";
//$host=$_SERVER['HTTP_HOST'];
//$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
//echo "<script>open('http://$host$uri/$extra','self')</script>";
//echo "<script>alert('Save Shop')</script>";
}
if (isset($_GET["save"])) {
    $id=$_GET["txtid"];
    $pass=$_GET["txtpass"];
    $utype= "Shop";
    echo "save login";
    $sql="insert into login(username,password,utype)values('$id','$pass','$utype')";
    mysqli_query($con,$sql);
    mysqli_close($con);
}
elseif (isset($_GET["action"])) {
   $owner= $_GET["owner"];
    $sql="delete from shop where owner='$owner'";
    echo "record delete";
    mysqli_query($con,$sql);
    $extra="../admine/shoprecord.php";
$host=$_SERVER['HTTP_HOST'];
$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
echo "<script>open('http://$host$uri/$extra','self')</script>";

    mysqli_close($con);
}
?>