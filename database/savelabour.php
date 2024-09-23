<?php
require "dbcon.php";
echo "save";
if(isset($_POST["save"]))
{
$name=$_POST["lname"];
$number=$_POST["number"];
echo $number;
$work=$_POST["lwork"];
$address=$_POST["laddress"];
$files=$_FILES["file"];
$filename=$files["name"];
$fileerror=$files["error"];
$filetemp=$files["tmp_name"];
$fileext=explode('.',$filename);
$filecheck=strtolower(end($fileext));
$fileextstored=array("png","jpeg","jpg","pdf");
if(in_array($filecheck,$fileextstored)) {
$destinationfile='../labour/'.$filename;
echo "dr";
move_uploaded_file($filetemp,$destinationfile);
$sql="insert into labour(name,work,address,limg,number)values('$name','$work','$address','$filename','$number')";
mysqli_query($con,$sql);
//mysqli_close($con);
echo "<script> alert('save');</script>";
$extra="../labour.php";
$host=$_SERVER['HTTP_HOST'];
$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
echo "<script>open('http://$host$uri/$extra','self')</script>";

}
}
if (isset($_POST["save"])) {
    $id=$_POST["txtid"];
    $utype=$_POST["utype"];
    $pass=$_POST["txtpass"];
    $sql="insert into login(username,password,utype) values('$id','$pass','$utype')";
    mysqli_query($con,$sql);
    mysqli_close($con);
}
elseif (isset($_GET["action"]))
{
    //require "dbcon.php";
    $name=$_GET["name"];
    $sql="delete from labour where name='$name'";
     echo "record delete";
$extra="../admine/labourrecord.php";
$host=$_SERVER['HTTP_HOST'];
$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
echo "<script>open('http://$host$uri/$extra','self')</script>";
mysqli_query($con,$sql);

    mysqli_close($con);

}

?>