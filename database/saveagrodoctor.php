<?php
echo "hii";
require "dbcon.php";
if (isset($_GET["save"])) {
    $dname=$_GET["dname"];
$daddress=$_GET["daddress"];
$eduction=$_GET["eduction"];
$ddescription=$_GET["ddescription"];
$sql="insert into doctor(dname,eduction,daddress,ddescription) values('$dname','$eduction','$daddress','$ddescription')";
mysqli_query($con,$sql);
echo "save";
//mysqli_close($con);
echo "save";
}
if (isset($_GET["save"])) {
    $id=$_GET["txtid"];
    $pass=$_GET["txtpass"];
    $utype=$_GET["utype"];
    $sql="insert into login(username,password,utype) values('$id','$pass','$utype')";
    mysqli_query($con,$sql);
    $extra="../agrodoctor.php";
    $host=$_SERVER['HTTP_HOST'];
    $uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
    echo "<script>open('http://$host$uri/$extra','self')</script>";
    
    mysqli_close($con);
}

elseif (isset($_GET["action"]))
{
    //require "dbcon.php";
    $dname= $_GET["dname"];
    $sql="delete from doctor where dname='$dname'";
    echo "record delete";
       $extra="../admine/agrrecord.php";
$host=$_SERVER['HTTP_HOST'];
$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
echo "<script>open('http://$host$uri/$extra','self')</script>";
mysqli_query($con,$sql);

    mysqli_close($con);

}
//else{
  // $sql="update doctor set dname='$dname'";
   // mysqli_query($con,$sql);
    //mysqli_close($con);
//}
?>
