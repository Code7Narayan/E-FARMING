<?php
    require "dbcon.php";
    if (isset($_POST["save"])) {
    $name=$_POST["dname"];
    $char=$_POST["dchar"]; 
    $number=$_POST["cnumber"];
    $state=$_POST["state"];
    $distric=$_POST["dis"];
    $sdistric=$_POST["sdis"];
    $area=$_POST["area"];
    $pincode=$_POST["pcode"];
    $sql="insert into dr(name,charector,contact,state,distric,subdistric,area,pincode)values('$name','$char','$number','$state','$distric','$sdistric','$area','$pincode')";
    mysqli_query($con,$sql);
    mysqli_close($con);
    echo "<script> alert('save');</script>";
    }
?>