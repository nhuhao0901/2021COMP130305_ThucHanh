<link href="hanghoa.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<?php
include_once('DataProvider.php');
//chọn loại nào để xem ds 
$sqlLoai = "SELECT * FROM loai";
$dsLoai = DataProvider::ExecuteQuery($sqlLoai);
?>
Loại:
<select name="cboLoaiHH" id="cboLoaiHH">
    <?php
    while ($loai = mysqli_fetch_array($dsLoai)) {
        $selected = $_REQUEST["MaLoai"] == $loai['MaLoai'] ? "selected" : "";
        echo "<option value='{$loai['MaLoai']}' {$selected}>{$loai['TenLoai']}</option>";
    }
    ?>
</select><br>
<!-- ds sản phẩm-!>
<?php
$sqlHanghoa = "select MaHH, TenHH, DonGia, Hinh, TenLoai from hanghoa join loai loHH on loHH.MaLoai = hanghoa.MaLoai
";
if (isset($_REQUEST["MaLoai"])) {
    $sqlHanghoa .= " WHERE hanghoa.MaLoai = " . $_REQUEST["MaLoai"];
}

$result = DataProvider::ExecuteQuery($sqlHanghoa);
while ($hanghoa = mysqli_fetch_array($result)) {
    $gia = number_format($hanghoa['DonGia']);
    $chuoiSP = <<< EOD
    <div class="hh-box">	
        <div class="hh-box-promotion"></div>
        <div class="hh-box-qua"></div>
        <img src="hanghoa/{$hanghoa['Hinh']}" class="hh-box-image">
        <img src="images/moi-icon.png" class="hh-box-new" >
        <div class="hh-box-name">{$hanghoa["TenHH"]}</div>
        <div class="hh-box-gia">{$gia} đ</div>
    </div>
EOD;
    echo $chuoiSP;
}
?>

<script>
$(function(){

    $("#cboLoaiHoa").change(function(){
        window.location.href = '03.DanhSachHoa.php?MaLoai=' + $(this).val();
    });

});
</script>