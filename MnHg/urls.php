<?php 
        if ($materia=="Algebra basica") {
		global $url_notification;
		$url_notification=$bas."?un=".$unidad_fichal."&cont=".$id;
	}
	if ($materia=="Algebra intermedia") {
		global $url_notification;
		$url_notification=$algi."?un=".$unidad_fichal."&cont=".$id;
	}
	if ($materia=="Trigonometria") {
		global $url_notification;
		$url_notification=$trig."?un=".$unidad_fichal."&cont=".$id;
	}
	if ($materia=="Geometria analitica") {
		global $url_notification;
		$url_notification=$geo."?un=".$unidad_fichal."&cont=".$id;
	}
	if ($materia=="Estadistica") {
		global $url_notification;
		$url_notification=$est."?un=".$unidad_fichal."&cont=".$id;
	}
	if ($materia=="Calculo diferencial") {
		global $url_notification;
		$url_notification=$dif."?un=".$unidad_fichal."&cont=".$id;
	}
	if ($materia=="Calculo integral") {
		global $url_notification;
		$url_notification=$int."?un=".$unidad_fichal."&cont=".$id;
	}
        if ($materia=="Calculo avanzado") {
		global $url_notification;
		$url_notification=$avn."?un=".$unidad_fichal."&cont=".$id;
	}
        if ($materia=="Algebra lineal") {
		global $url_notification;
		$url_notification=$lineal."?un=".$unidad_fichal."&cont=".$id;
	}
        if ($materia=="Ecuaciones diferenciales") {
		global $url_notification;
		$url_notification=$ecudif."?un=".$unidad_fichal."&cont=".$id;
	}
 ?>
