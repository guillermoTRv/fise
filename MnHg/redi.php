<?php 
	if ($materia=="Algebra basica") {
		header("Location:$ruta/basica/panel-algebra-basica?un=".$unidad_fichal."&sub=true&mens=".$mensaje."");
	}
    if ($materia=="Algebra intermedia") {
		header("Location:$ruta/algintermedia/panel-algebra-intermedia?un=".$unidad_fichal."&sub=true&mens=".$mensaje."");
	}
	if ($materia=="Trigonometria") {
		header("Location:$ruta/trigonometria/panel-trigonometria?un=".$unidad_fichal."&sub=true&mens=".$mensaje."");
	}
	if ($materia=="Geometria analitica") {
		header("Location:$ruta/geometrianalitica/panel-geometria?un=".$unidad_fichal."&sub=true&mens=".$mensaje."");
	}
	if ($materia=="Estadistica") {
		header("Location:$ruta/estadistica/panel-estadistica?un=".$unidad_fichal."&sub=true&mens=".$mensaje."");
	}
	if ($materia=="Calculo diferencial") {
		header("Location:$ruta/calculodif/panel-calculodiferencial?un=".$unidad_fichal."&sub=true&mens=".$mensaje."");
	}
	if ($materia=="Calculo integral") {
		header("Location:$ruta/calculointegral/panel-calculointegral?un=".$unidad_fichal."&sub=true&mens=".$mensaje."");
	}
    if ($materia=="Calculo avanzado") {
		header("Location:$ruta/c-avanzado/panel-calculoavanzado?un=".$unidad_fichal."&sub=true&mens=".$mensaje."");
	}
    if ($materia=="Algebra lineal") {
		header("Location:$ruta/lineal/panel-algebra-lineal?un=".$unidad_fichal."&sub=true&mens=".$mensaje."");
	}
    if ($materia=="Ecuaciones diferenciales") {
		header("Location:$ruta/diferenciales/panel-ecuaciones-diferenciales?un=".$unidad_fichal."&sub=true&mens=".$mensaje."");
	}
 ?>