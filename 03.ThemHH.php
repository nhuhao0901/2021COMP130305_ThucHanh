<?php
include_once('DataProvider.php');

$sqlLoai = "SELECT * FROM loai";
$dsLoai = DataProvider::ExecuteQuery($sqlLoai);
?>
<form action="" enctype="multipart/form-data" method="post">
    <h2>THÊM SẢN PHẨM</h2>
    Loại:
    <select name="cboLoaiHH" id="cboLoaiHH">
        <?php
        while ($loai = mysqli_fetch_array($dsLoai)) {
            $selected = $_REQUEST["MaLoai"] == $loai['MaLoai'] ? "selected" : "";
            echo "<option value='{$loai['MaLoai']}' {$selected}>{$loai['TenLoai']}</option>";
        }
        ?>
    </select><br>
    Tên sản phẩm: <input name="txtTenSP"><br>
    Giá bán: <input type="number" name="txtDonGia" id=""><br>
    Mô tả:
    <textarea name="txtMoTa" id="" cols="30" rows="10"></textarea><br>
    Hình:
    <input type="file" name="txtHinh" id=""><br>
    <button>Thêm</button>
</form>
<?php
if (isset($_FILES["txtHinh"]) && isset($_REQUEST['txtTenSP'])) {
    if ($_FILES["txtHinh"]["error"] == 0) {
        $hinh = $_FILES["txtHinh"]["name"];
        if (move_uploaded_file($_FILES["txtHinh"]["tmp_name"], "./hoa/" . $hinh)) {
            echo $hinh;
            $sqlThemHoa = "INSERT INTO `hanghoa`(`TenLoai`, `TenHH`, `DonGIa`, `MoTa`, `Hinh`) VALUES ('{$_REQUEST['cboLoaiHH']}', '{$_REQUEST['txtTenHH']}', {$_REQUEST['txtDonGia']}, '{$_REQUEST['txtMoTa']}', '{$hinh}');";
            echo $sqlThemHoa;
            DataProvider::ExecuteQuery($sqlThemHoa);
        }
    }
}
