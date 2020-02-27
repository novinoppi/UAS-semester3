<?php 
include('koneksi.php');
//select column_name(s) from table1 inner join table2 on table1.column_name=table2.column_name;
//join dengan satuan dan ketegori
$tampil_barang=mysql_query("select id_barang, nama_barang, ktg.nama, stn.nama_satuan
from barang as br
inner join kategori as ktg 
on br.id_barang=ktg.id_kategori
inner join satuan as stn 
on br.id_barang=stn.id_satuan");
?>
<table border="1">
<tr>
<td>id barang</td>
<td>nama barang</td>
<td>nama kategori</td>
<td>nama satuan</td>
</tr>
<?php while($data=mysql_fetch_array($tampil_barang)) {?>
<tr>
	<td><?php echo $data['id_barang'];?></td>
	<td><?php echo $data['nama_barang'];?></td>
	<td><?php echo $data['nama'];?></td>
	<td><?php echo $data['nama_satuan'];?></td>
	</tr>
<?php }?>
</table>
<a href="menu.php">menu utama</a>