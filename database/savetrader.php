<?php

    require "dbcon.php";
    if (isset($_GET["save"])){
    $name=$_GET["tname"];
    $pname=$_GET["mname"];
    $address=$_GET["taddress"];
    $pincode=$_GET["tpin"];
    $sql="insert into trader(tname,mname,Address,pincode) value('$name','$pname','$address','$pincode')";
    mysqli_query($con,$sql);
    mysqli_close($con);
    echo "<script> alert('save');</script>";
    }
    if (isset($_GET["save"])) {
        $id=$_GET["txtid"];
        $pass=$_GET["txtpass"];
        $utype=$_GeT["utype"];
        $sql="insert into login(user,pass,utype) values('$id','$pass')";
        mysqli_query($con,$sql);
        mysqli_close($con);}
    elseif (isset($_GET["action"]))
    {
        //require "dbcon.php";
        $name=$_GET["name"];
        $sql="delete from trader where tname='$name'";
         echo "record delete";
    $extra="../admine/traderrecord.php";
    $host=$_SERVER['HTTP_HOST'];
    $uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
    echo "<script>open('http://$host$uri/$extra','self')</script>";
    mysqli_query($con,$sql);
    
        mysqli_close($con);
    
    }
    
?>