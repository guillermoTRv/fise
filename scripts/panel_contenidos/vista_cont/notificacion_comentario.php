<?php 
	if ($materia=="Algebra basica") {
		global $url_notification;
		$url_notification="$ruta/basica/panelalgbas?un=".$unidad."&cont=".$id_fichamat;
	}
    	if ($materia=="Algebra intermedia") {
		global $url_notification;
		$url_notification="$ruta/algintermedia/panelalg?un=".$unidad."&cont=".$id_fichamat;
	}
		if ($materia=="Trigonometria") {
		global $url_notification;
		$url_notification="$ruta/trigonometria/paneltrig?un=".$unidad."&cont=".$id_fichamat;
	}
		if ($materia=="Geometria analitica") {
		global $url_notification;
		$url_notification="$ruta/geometrianalitica/panelgeo?un=".$unidad."&cont=".$id_fichamat;
	}
		if ($materia=="Estadistica") {
		global $url_notification;
		$url_notification="$ruta/estadistica/panelest?un=".$unidad."&cont=".$id_fichamat;
	}
		if ($materia=="Calculo diferencial") {
		global $url_notification;
		$url_notification="$ruta/calculodif/panelint?un=".$unidad."&cont=".$id_fichamat;
	}
		if ($materia=="Calculo integral") {
		global $url_notification;
		$url_notification="$ruta/calculointegral/paneldif?un=".$unidad."&cont=".$id_fichamat;
	}
                if ($materia=="Calculo avanzado") {
		global $url_notification;
		$url_notification="$ruta/c-avanzado/panelcalculo?un=".$unidad."&cont=".$id_fichamat;
	}
                if ($materia=="Algebra lineal") {
	 	global $url_notification;
		$url_notification="$ruta/lineal/panel-lineal?un=".$unidad."&cont=".$id_fichamat;
	}
                if ($materia=="Ecuaciones diferenciales") {
	 	global $url_notification;
		$url_notification="$ruta/diferenciales/ecuaciones-diferenciales?un=".$unidad."&cont=".$id_fichamat;
	}
 ?>