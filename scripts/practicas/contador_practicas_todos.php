<?php 
	$contador_b = "SELECT count(*) FROM l_prc WHERE materia='$materia'";
	$contador_e = $conexion->query($contador_b);
	$contador_a = $contador_e->fetch_array();
	$contador_n = $contador_a[0];
	global $x;    
	       $x=$contador_n; 
      echo $contenido = "Número total de practicas encontradas <strong>$x</strong>";
?>