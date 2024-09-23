<?php
require "dbcon.php";
if (isset($_POST["save"])) {
    $pname=$_POST["pname"];
$pcompany=$_POST["pcompany"];
$description=$_POST["description"];
$pprice=$_POST["pprice"];
$files=$_FILES['file'];
    $filename =$files['name'];
    $fileerror=$files['error'];
    $filetemp =$files['tmp_name'];
    $fileext=explode('.',$filename);
    $filecheck =strtolower(end($fileext));
    $fileextstored=array('png','jpg','jpeg');
    if (in_array($filecheck,$fileextstored)) {
        $destinationfile='../product/'.$filename;
        move_uploaded_file($filetemp,$destinationfile);
    $sql="insert into product(pimg,pname,pcompany,pprice,description)values('$filename','$pname','$pcompany','$pprice','$description')";
mysqli_query($con,$sql);
echo "save";
mysqli_close($con);

    }

$extra="../product.php";
$host=$_SERVER['HTTP_HOST'];
$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
echo "<script>open('http://$host$uri/$extra','self')</script>";

}
elseif (isset($_GET["action"])) {
    $pname=$_GET["pname"];
    $uname="select * from product whare pname='$pname'";
    $query=mysqli_query($con,$uname);
    $num_count=mysqli_num_rows($query);
    if($num_count){
        $pass=mysqli_fetch_assoc($query);
        $img =$pass['pimg'];
        echo $img;
        unlink("../product/$img");
   
   $sql="delete from product where pname='$pname'";
    echo "<script>alert('record delete')</script>";
    mysqli_query($con,$sql);
    $extra="../admine/productrecord.php";
$host=$_SERVER['HTTP_HOST'];
$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
echo "<script>open('http://$host$uri/$extra','self')</script>";

    mysqli_close($con);
} 
}
?>