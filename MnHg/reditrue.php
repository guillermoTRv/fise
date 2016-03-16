<?php 
    if ($materia=="Algebra basica") {
		header("Location:$bas"."?un=".$unidad_fichal."&cont=".$id."&mens=".$mensaje."");
	}
	if ($materia=="Algebra intermedia") {
		header("Location:$algi"."?un=".$unidad_fichal."&cont=".$id."&mens=".$mensaje."");
	}
	if ($materia=="Trigonometria") {
		header("Location:"."?un=".$unidad_fichal."&sub=true&mens=".$mensaje."");
	}
	if ($materia=="Geometria analitica") {
		header("Location:$geo"."?un=".$unidad_fichal."&cont=".$id."&mens=".$mensaje."");
	}
	if ($materia=="Estadistica") {
		header("Location:$est"."?un=".$unidad_fichal."&cont=".$id."&mens=".$mensaje."");
	}
	if ($materia=="Calculo diferencial") {
		header("Location:$dif"."?un=".$unidad_fichal."&cont=".$id."&mens=".$mensaje."");
	}
	if ($materia=="Calculo integral") {
		header("Location:$int"."?un=".$unidad_fichal."&cont=".$id."&mens=".$mensaje."");
	}
    if ($materia=="Calculo avanzado") {
		header("Location:$avn"."?un=".$unidad_fichal."&cont=".$id."&mens=".$mensaje."");
	}
    if ($materia=="Algebra lineal") {
		header("Location:$lineal"."?un=".$unidad_fichal."&cont=".$id."&mens=".$mensaje."");
	}
    if ($materia=="Ecuaciones diferenciales") {
		header("Location:$ecudif"."?un=".$unidad_fichal."&cont=".$id."&mens=".$mensaje."");
	}
 ?>