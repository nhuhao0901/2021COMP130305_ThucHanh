<?php
include_once('DataProvider.php');

$sqlLoai = "SELECT * FROM loaihoa";
$dsLoai = DataProvider::ExecuteQuery($sqlLoai);
?>
<form action="" enctype="multipart/form-data" method="post">
    <h2">THÊM SẢN PHẨM</h2>
        Loại sản phẩm:
        <select name="cboLoai" id="cboLoai">
            <?php
            while ($loai = mysqli_fetch_array($dsLoai)) {
                $selected = $_REQUEST["MaLoai"] == $loai['MaLoai'] ? "selected" : "";
                echo "<option value='{$loai['MaLoai']}' {$selected}>{$loai['TenLoai']}</option>";
            }
            ?>
        </select><br>
        Tên sản phẩm: <input name="txtTenHH"><br>
        Đơn Giá: <input type="number" name="txtDonGia" id=""><br>
        Hình:
        <input type="file" name="txtHinh" id=""><br>
        <button>Thêm</button>
</form>
<?php
if (isset($_FILES["txtHinh"]) && isset($_REQUEST['txtTenHH'])) {
    if ($_FILES["txtHinh"]["error"] == 0) {
        $hinh = $_FILES["txtHinh"]["name"];
        if (move_uploaded_file($_FILES["txtHinh"]["tmp_name"], "./HangHoa/" . $hinh)) {
            echo $hinh;
            $sqlThemHH = "INSERT INTO `HangHoa`(`MaLoai`, `TenHH`, `DonGia`, `Hinh`) VALUES ('{$_REQUEST['cboLoai']}', '{$_REQUEST['txtTenHH']}', {$_REQUEST['txtDonGia']}, '{$hinh}');";
            echo $sqlThemHH;
            DataProvider::ExecuteQuery($sqlThemHH);
        }
    }
}
