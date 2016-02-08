<?php 
	$name_b = "SELECT name_lprc,name_limpio FROM practicas_url WHERE name_limpio='$prc'";
	$name_e = $conexion->query($name_b);
	$name_a = $name_e->fetch_array();

	echo $name_n = $name_a[0];

?>