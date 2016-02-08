<?php
	global $total;
	$total=ceil($x/$limit_end);

	$select_fichas_b = "SELECT * FROM l_prc WHERE clasf='$condicional' and materia='$materia'ORDER BY id_lprc desc LIMIT $init, $limit_end";
	$select_fichas_e = $conexion->query($select_fichas_b);
	while ($row = mysqli_fetch_array($select_fichas_e)) {

		$id_practica   = $row['id_lprc'];
		$nombre        = $row['name_lprc'];
		$clasificacion = $row['clasf'];
		$num_ejerc     = $row['num_ejerc'];
		$dificultad    = $row['nivel'];

		include("../scripts/practicas/enlaces.php");
   		include("../vistas_principales/practicas/asiva_ficha.php");	
	
	}

?>