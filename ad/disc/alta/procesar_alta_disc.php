<?php 
	include("../../../ruta.php");
	include("../../../config.php");

	echo $id_disc = $_POST['id_disc']; 

	$cambio    = "UPDATE discusiones SET alta='si' WHERE id_disc='$id_disc'";
	$e_cambio  = $conexion->query($cambio) or die("Hubo un error al ejecutar la consulta");

	header("Location: $ruta/ad/administrador.php?ty=discusiones&mens='La-alta-fue-existosa'");

?>