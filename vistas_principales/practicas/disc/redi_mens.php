<?php 
	if ($materia=='Calculo diferencial') {
 		$indice_mat="/calculodif/panel-practicas?op=discusion-actual&mens=$mensaje";
 	}
	if ($materia=='Calculo integral') {
		$indice_mat="/calculointegral/panel-practicas?op=discusion-actual&mens=$mensaje";
	}
	if ($materia=='Calculo avanzado') {
		$indice_mat="/c-avanzado/panel-practicas?op=discusion-actual&mens=$mensaje";
	}
	if ($materia=='Algebra lineal') {
		$indice_mat="/lineal/panel-practicas?op=discusion-actual&mens=$mensaje";
	}
	if ($materia=='Ecuaciones diferenciales') {
		$indice_mat="/diferenciales/panel-practicas?op=discusion-actual&mens=$mensaje";
	}
	#header("Location: $ruta/$indice_mat");
?>