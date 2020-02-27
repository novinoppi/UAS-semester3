<?php
include('koneksi.php');
if(isset($_POST['save'])){
	$query_barang="imsert into barang(id_barang, nama_barang, kategori_id, saturan_id)
	values('".$_POST['id_barang']."',
	'".$_POST['nama_barang']."',
	'".$_POST['kategori_id']."',
	'".$_POST['satuan_id']."')";
	$proses=mysql_query($save);
	if($proses){
		header("location:tampil_barang.php");
	}else{
		echo mysql_errno();
	}
}
?><form method="post">
<table border="1">
<tr>
<td> kategori id</td>
<td><input type="text"
name="kategori_id"></td>
</tr>
<tr>
	<td>nama</td>
	<td><input type="text"
name="nama_barang"></td>
	</tr>
	<tr>
	<td></td>
	<td><input type="submit"
name="save"></td>
</tr>
</table>
</form?
<a href="menu.php">menu utama</a>