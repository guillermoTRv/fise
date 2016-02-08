<?php
	ECHO $url=$_SERVER["PHP_SELF"].$_SERVER["REQUEST_URI"];
/*
	function urls_amigables($url) {

		$url = strtolower($url);

		//Rememplazamos caracteres especiales latinos

		$find = array('á', 'é', 'í', 'ó', 'ú', 'ñ');

		$repl = array('a', 'e', 'i', 'o', 'u', 'n');

		$url = str_replace ($find, $repl, $url);

		// Añaadimos los guiones

		$find = array(' ', '&', '\r\n', '\n', '+'); 
		$url = str_replace ($find, '-', $url);

		// Eliminamos y Reemplazamos demás caracteres especiales

		$find = array('/[^a-z0-9\-<>]/', '/[\-]+/', '/<[^>]*>/');

		$repl = array('', '-', '');

		$url = preg_replace ($find, $repl, $url);

		return $url;
	}



	include("config.php");
	$b_un="SELECT * FROM l_prc";
	$eb=$conexion->query($b_un);
	while ($a_un=mysqli_fetch_array($eb)) {
		$unidad_s=$a_un[1];
		echo "<br>".$unidad_sl=utf8_encode($a_un[1]);
		echo "<br>".$unidad_l=urls_amigables($unidad_sl);

			$ia="INSERT INTO practicas_url(name_lprc,name_limpio) VALUES('$unidad_s','$unidad_l')";
		    $e_ia=$conexion->query($ia) or die("que pex");
		echo "si";

	}*/
 ?>
