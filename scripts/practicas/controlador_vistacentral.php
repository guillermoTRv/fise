<?php 
	$ruta_scripts = "scripts/practicas/controlador_fichas.php";

	switch ($op) {
	
	case "modulos":
        include("../scripts/practicas/modulos_script.php");
		break;

	case "listado":
		$title          = "Listado de todas las practicas para $materia";
        $ruta_archivo   = $ruta_scripts;        
        include("../scripts/practicas/contador_practicas_todos.php");
        include("../scripts/practicas/includs.php");
		break;


	case "practicas-generales":
		$title          = "Listado de practicas tipo generales";
        $ruta_archivo   = $ruta_scripts; 
        $cond_one       = "general";  
        include("../scripts/practicas/contador_practicas_where.php");     
        include("../scripts/practicas/includs.php");
		break;

	case "aplicaciones-particulares":
		$title          = "Listado de practicas tipo aplicaciones particulares";
        $ruta_archivo   = $ruta_scripts;    
        $cond_one       = "aplicaciones particulares";      
        include("../scripts/practicas/contador_practicas_where.php");
        include("../scripts/practicas/includs.php");
		break;

	case "batalla":
		$title          = "Bienvenido a batalla de ejercicios";
        $cont_esp       = "";
        $ruta_archivo   = "vistas_principales/practicas/batalla_ejercicios.php";        
        include("../scripts/practicas/includs.php");
		break;

	case "discusion-actual":
		$title          = "Tema para discutir";
        $cont_esp       = "";
        $ruta_archivo   = "/vistas_principales/practicas/discusion_materia.php";        
        include("../scripts/practicas/includs.php");
		break;

	case "discusiones-anteriores":
		$title          = "Discusiones anteriores";
        $cont_esp       = "";
        $ruta_archivo   = $ruta_vistas;        
        include("../scripts/practicas/includs.php");
		break;

	case "ayuda":
		$title          = "Ayuda al usuario, dudas comunes y soporte";
        $cont_esp       = "";
        $ruta_archivo   = "/vistas_principales/practicas/vista_soporte.php";        
        include("../scripts/practicas/includs.php");
		break;

	default:
		if ($mod=='') {
			$title          = "Bienvenido al espacio de practica para la materia de $materia";
	        $cont_esp       = "";
	        $ruta_archivo   = "/vistas_principales/practicas/vista_presentacion.php";        
	        include("../scripts/practicas/includs.php");
		}
		
		break;
	}

	if ($mod!='') {
		include("../scripts/practicas/listado_por_modulos.php");
	}

?>