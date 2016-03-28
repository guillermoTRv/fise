<?php 
	$listas_b = "SELECT * FROM l_prc WHERE materia='$materia' AND modulo='$rel_modulo' and prod='si'";
    $listas_e = $conexion->query($listas_b);
    $listas_n = mysqli_num_rows($listas_e);
    echo $contenido = "Número total de practicas encontradas <strong>$listas_n</strong>"
?>