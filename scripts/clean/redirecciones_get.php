<?php 

	if ($by!='') {
		$permitidos = array("videos","presentaciones","apuntes-usuarios","pdf","examenes-o-series","aplicaciones-digitales","sitios","retos","formularios","otros");
		
		if (!in_array($by, $permitidos)) {
			header("Location: $ruta");
		}
	}
	
?>