<?php
    require "dbcon.php"; 
if(isset($_POST["save"])) echo""; {
    $date=$_POST["date"];
    $market=$_POST["mark"];
    $state=$_POST["state"]; 
    $dist=$_POST["dist"];
    $product=$_POST["mp"];
    $productrate1=$_POST["min"];
    $productrate2=$_POST["max"];
    $sql="insert into market(date,market,state,dist,product,minrate,maxrate) value('$date','$market','$state','$dist','$product','$productrate1',$productrate2)";
    mysqli_query($con,$sql);
   // mysqli_close($con);
    echo "<script> alert('save');</script>";
    }
 if (isset($_GET["action"])) {
    //require "dbcon.php";s
    //$technology=$_POST["ntc"];
   $contact=$_GET["tname"];
    $sql="delete from market where product='$contact'";
    echo "record delete";
      $extra="admine/market1.php";
$host=$_SERVER['HTTP_HOST'];
$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
echo "<script>open('http://$host$uri/$extra','self')</script>";
mysqli_query($con,$sql);

    mysqli_close($con);

 }
?>