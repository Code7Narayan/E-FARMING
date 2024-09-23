<?php
require "dbcon.php";
if (isset($_GET["save"])) {
$dname=$_GET["wn"];
$daddress=$_GET["nw"];
$eduction=$_GET["cno"];
$ddescription=$_GET["wp"];
$workername=$_GET["now"];

$sql="insert into hirelabour(nwork,con,onername,workplace,workername) values('$dname','$eduction','$daddress','$ddescription','$workername')";
mysqli_query($con,$sql);
echo "save";
mysqli_close($con);
echo "save";
}
elseif (isset($_GET["action"]))
{
    //require "dbcon.php";
    $dname= $_GET["dname"];
    $sql="delete from doctor where dname='$dname'";
    echo "record delete";
       $extra="agrrecord.php";
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
