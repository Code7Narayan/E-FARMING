<?php
require "dbcon.php";
echo "save";
if (isset($_POST["save"])){
    $technology=$_POST["ntc"];
    $files=$_FILES['file'];
    $filename =$files['name'];
    $fileerror=$files['error'];
    $filetemp =$files['tmp_name'];
    $fileext=explode('.',$filename);
    $filecheck =strtolower(end($fileext));
    $fileextstored=array('png','jpg','jpeg');
    if (in_array($filecheck,$fileextstored)) {
        $destinationfile='../tech/'.$filename;
        move_uploaded_file($filetemp,$destinationfile);
      $contact=$_POST["num"];
    $info=$_POST["info"];
    echo "save";
    $sql="insert into newtech(tname,timage,contact,tinfo)values('$technology','$filename','$contact','$info')";
    echo "save";
    mysqli_query($con,$sql);
    mysqli_close($con);
}$extra="../newtech.php";
$host=$_SERVER['HTTP_HOST'];
$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
echo "<script>open('http://$host$uri/$extra','self')</script>";
}
elseif (isset($_GET["action"]))
{
    //require "dbcon.php";s
    //$technology=$_POST["ntc"];
    $contact=$_GET["tname"];
    $sql="delete from newtech where tname='$contact'";
    echo "record delete";
      $extra="../admine/newtechrecord.php";
$host=$_SERVER['HTTP_HOST'];
$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
echo "<script>open('http://$host$uri/$extra','self')</script>";
mysqli_query($con,$sql);

    mysqli_close($con);

}
?>