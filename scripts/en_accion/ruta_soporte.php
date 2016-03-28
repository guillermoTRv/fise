<?php 
	if ($materia=='Calculo diferencial') {
		$ruta_soporte = $ruta."/calculodif/panel-practicas?op=ayuda";
	}
	if ($materia=='Calculo integral') {
		$ruta_soporte = $ruta."/calculointegral/panel-practicas?op=ayuda";
	}
	if ($materia=='Calculo avanzado') {
		$ruta_soporte = $ruta."/c-avanzado/panel-practicas?op=ayuda";
	}
	if ($materia=='Algebra lineal') {
		$ruta_soporte = $ruta."/lineal/panel-practicas?op=ayuda";
	}
	if ($materia=='Ecuaciones diferenciales') {
		$ruta_soporte = $ruta."/diferenciales/panel-practicas?op=ayuda";
	}
?>

<a target="_blank" href="<?php echo $ruta_soporte ?>" class='list-group-item fenmat'>&nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-question-sign'></span> 
    	Funcionamiento y dudas</a>