<?php 
	if ($materia=='Calculo diferencial') {
		$redi_listas = $ruta."/calculodif/panel-practicas?op=modulos";
	}
	if ($materia=='Calculo integral') {
		$redi_listas = $ruta."/calculointegral/panel-practicas?op=modulos";
	}
	if ($materia=='Calculo avanzado') {
		$redi_listas = $ruta."/c-avanzado/panel-practicas?op=modulos";
	}
	if ($materia=='Algebra lineal') {
		$redi_listas = $ruta."/lineal/panel-practicas?op=modulos";
	}
	if ($materia=='Ecuaciones diferenciales') {
		$redi_listas = $ruta."/diferenciales/panel-practicas?op=modulos";
	}

	$redi_guardar = "<a href='$redi_listas'>Regresar al indice</a>"
?>
