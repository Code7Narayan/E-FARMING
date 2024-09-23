<?php
require "dbcon.php";
if(isset($_GET["save"])) {
    $dname=$_GET["dname"];
    $dchar=$_GET["dchar"];
    $description=$_GET["description"];
    $sql="insert into solu(dname,dchar,description) values('$dname','$dchar','$description')";
    mysqli_query($con,$sql);
    echo "save";
    mysqli_close($con);
    echo "save";
    }
?>