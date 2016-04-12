 <?php 
 	$name_url = urls_amigables($name_lprc);

 	if ($materia=='Calculo diferencial') {
 		$url_prc="$ruta/calculodif/practica?prc=$name_url";
 	}
 	if ($materia=='Calculo integral') {
 		$url_prc="$ruta/calculointegral/practica?prc=$name_url";
 	}
 	if ($materia=='Calculo avanzado') {
 		$url_prc="$ruta/c-avanzado/practica?prc=$name_url";
 	}
 	if ($materia=='Algebra lineal') {
 		$url_prc="$ruta/lineal/practica?prc=$name_url";
 	}
 	if ($materia=='Ecuaciones diferenciales') {
 		$url_prc="$ruta/diferenciales/practica?prc=$name_url";
 	}
 ?>
