<?php
require "dbcon.php";
if (isset($_GET["action"]))
    {
    //require "dbcon.php";
    $dname=$_GET["tname"];
    $uname="select * from login where username='$dname'";
    $query=mysqli_query($con,$uname);
    $num_count=mysqli_num_rows($query);
    if ($num_count) {
$pass=mysqli_fetch_assoc($query);
$db_pass =$pass['password'];
//echo $db_pass;
//echo $password;
$utype=$pass['utype'];
echo $utype;
    
    $sql="delete from login where username='$dname'and password='$db_pass'and utype='$utype'";
    echo "record delete";
       $extra="../admine/pass.php";
$host=$_SERVER['HTTP_HOST'];
$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
echo "<script>open('http://$host$uri/$extra','self')</script>";
mysqli_query($con,$sql);

    mysqli_close($con);
    }

}

    ?>
    