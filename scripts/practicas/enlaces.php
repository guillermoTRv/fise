<?php 
	$url_b  = "SELECT * FROM practicas_url WHERE name_lprc='$nombre'";
	$url_e  = $conexion->query($url_b);
	$url_a  = $url_e->fetch_array();
	$url    = $url_a[2];

	if ($materia=="Calculo diferencial") {
		global $enlace;
		$enlace        = $ruta."/calculodif/practica?prc=$url";
	}
	if ($materia=="Calculo integral") {
		global $enlace;
		$enlace        = $ruta."/calculointegral/practica?prc=$url";
	}
	if ($materia=="Algebra lineal") {
		global $enlace;
		$enlace        = $ruta."/lineal/practica?prc=$url";
	}
	if ($materia=="Calculo avanzado") {
		global $enlace;
		$enlace        = $ruta."/c-avanzado/practica?prc=$url";
	}
	if ($materia=="Ecuaciones diferenciales") {
		global $enlace;
		$enlace        = $ruta."/diferenciales/practica?prc=$url";
	}
?>


