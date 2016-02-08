<?php 
	$tr_imagen_b = "SELECT * FROM img_ejerc WHERE id_ejerc='$id_ejerc'";
	$tr_imagen_e = $conexion->query($tr_imagen_b);
	$tr_imagen_a = $tr_imagen_e->fetch_array();

	$name_img = $tr_imagen_a[2];
  
?>