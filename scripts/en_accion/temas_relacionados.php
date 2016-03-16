<?php 
	$relacionados_b="SELECT * FROM tm_relacion WHERE id_lprc='$id_lista'";
	$relacionados_e=$conexion->query($relacionados_b);
	while ($relacionados_a=mysqli_fetch_array($relacionados_e)) {
		$unidad_rel  = $relacionados_a['unidad'];
 		$tema_rel    = $relacionados_a['tema'];
 		$ruta_rel    = $relacionados_a['ruta'];
		
		if ($tema_rel=='') {
		 	echo "<center><a href='$ruta_rel' class='list-group-item fenmat' target='_blank'>$unidad_rel</a></center>";
		}
		if ($tema_rel!='') {
		 	echo "<center><a href='$ruta_rel' class='list-group-item fenmat' target='_blank'>$tema_rel</a></center>";	
		} 
	}
?>