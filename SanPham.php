<div class="article">
	<h2><span><a>SẢN PHẨM</a></span></h2>
	<p>
	<table width="100%">
		<tr class="title">
			<td>Tên sản phẩm</td>
			<td>Loại sản phẩm</td>
			<td>Giá</td>
			<td>Hình</td>
			<td>Xóa</td>
			<td>Sửa</td>
		</tr>
		<?php
		$conn = mysqli_connect('localhost', 'root', '', 'qlsp');

		mysqli_query($conn, 'SET NAMES utf8');

		$sql = "SELECT MaHH,TenHoa,DonGia,Hinh FROM HangHoa ORDER BY TenHH";

		$reusult = mysqli_query($conn, $sql);
		while ($row = mysqli_fetch_array($reusult)) {
			echo "<tr><td>";
			echo $row['TenHH'] . "</td><td>";
			echo $row['TenLoai'] . "</td><td>";
			echo number_format($row["DonGia"], 0) . " đ</td><td>";
			echo "<img src=\"HangHoa/$row[Hinh]\" width=\"50\" /></td><td>";
			echo "<a href=\"admin.php?mod=Product&act=Xoa&id=$row[MaHH]\" onclick=\"return IsDelete()\"><img src=\"Images/Delete.gif\" /></a></td><td>";
			echo "<a href=\"admin.php?mod=Product&act=Sua&id=$row[MaHH]\"><img src=\"Images/Edit.png\" /></a>";
			echo "</td></tr>";
		}

		mysqli_close($conn);
		?>
	</table>
	</p>
	<p class="btn-more box noprint"><strong><a href="admin.php?mod=Product&act=Them">Thêm sản phẩm</a></strong></p>
</div>
<hr class="noscreen">