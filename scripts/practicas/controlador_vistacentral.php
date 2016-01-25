<?php 
	/*class despachador {
		private $titlle;
		private $contenidol;

		function __construct(){
			$this->titlle= $this->contenidol="";
		}
	}*/
	switch ($op) {
	case "listado":
		$title = "";
		include("../vistas_principales/practicas/encabezado.php");
		$contenido = "";
		include("../vistas_principales/practicas/espacio.php");
		include("../scripts/practicas/controlador_fichas.php");
		break;

	case "practicas-generales":
		$title = "";
		include("../vistas_principales/practicas/encabezado.php");
		$contenido = "";
		include("../vistas_principales/practicas/espacio.php");
		include("../scripts/practicas/controlador_fichas.php");
		break;

	case "aplicaciones-particulares":
		$title = "";
		include("../vistas_principales/practicas/encabezado.php");
		$contenido = "";
		include("../vistas_principales/practicas/espacio.php");
		include("../scripts/practicas/controlador_fichas.php");
		break;

	case "batalla":
		$title = "";
		include("../vistas_principales/practicas/encabezado.php");
		$contenido = "";
		include("../vistas_principales/practicas/espacio.php");
		include("../scripts/practicas/controlador_fichas.php");
		break;

	case "discusion-actual":
		$title = "";
		include("../vistas_principales/practicas/encabezado.php");
		$contenido = "";
		include("../vistas_principales/espacio.php");
		include("../vistas_principales/vista_fichas.php");
		break;

	case "discusiones-anteriores":
		$title = "";
		include("../vistas_principales/practicas/encabezado.php");
		$contenido = "";
		include("../vistas_principales/espacio.php");
		include("../vistas_principales/vista_fichas.php");
		break;

	case "ayuda":
		$title = "";
		include("../vistas_principales/practicas/encabezado.php");
		$contenido = "";
		include("../vistas_principales/espacio.php");
		include("../vistas_principales/vista_fichas.php");
		break;

	default:
		$title = "";
		include("../vistas_principales/practicas/encabezado.php");
		$contenido = "";
		include("../vistas_principales/espacio.php");
		include("../vistas_principales/vista_fichas.php");
		break;
}
?>