<?php 
	include("../../../../config.php");
	$mat=$_POST["elegid"];
	$busqueda="SELECT * FROM unidades_materias WHERE materia='$mat'";
	$e_b=$conexion->query($busqueda);
	while ($a_b=mysqli_fetch_array($e_b)) {
		$mate=$a_b['unidad'];
		echo "<option value='$mate'>$mate</option>";
	}
 ?>