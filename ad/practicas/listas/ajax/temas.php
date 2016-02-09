<?php 
	echo "<option value=''>--</option>";
	include("../../../../config.php");
	$unidad=$_POST["elegido"];
	$buno="SELECT * FROM unidades_materias WHERE unidad='$unidad'";
	$e_buno=$conexion->query($buno);
	$aid=$e_buno->fetch_array();
	$id=$aid[0];

	$busqueda="SELECT * FROM tema_unidad_materias WHERE id_unidades='$id'";
	$e_b=$conexion->query($busqueda);
	while ($a_b=mysqli_fetch_array($e_b)) {
		$tema=$a_b['tema'];
		echo "<option value='$tema'>$tema</option>";
	}
 ?>