<?php
require 'DaTaProvider.php';

function deletehd(){
    global $connection ;
    if(isset($_GET['MaHH']) && is_numeric($_GET['MaHH'])){
        
        $hoadonid = $_GET['MaHH'];
        $delete_cthoadon = mysqli_query($connection,"DELETE FROM chitiethoadon WHERE MaHH='$hoadonid'");
        $delete_hoadon = mysqli_query($connection, "DELETE FROM hoadon WHERE MaHH = '$hoadonid'")
        
        if($delete_hoadon){
            echo "<script>alert('Data Deleted');window.location.href = 'insert.php';</script>";
            exit;
            
        }else{
        echo "I think something went wrong"; 
        }
    }
}
