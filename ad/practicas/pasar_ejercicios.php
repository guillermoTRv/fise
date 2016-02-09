<?php
	include("../../config.php");

	$idlist=$_POST['fo'];
	$datos_lista     =   "SELECT id_lprc,name_lprc,materia FROM l_prc where id_lprc='$idlist'";
	$e_datos_lista   =   $conexion->query($datos_lista);
	$a_datos_lista   =   $e_datos_lista->fetch_array();
	$nombre			 =   $a_datos_lista[1];
	$materia	     =   $a_datos_lista[2];
	
	$cont_lista      =   "SELECT COUNT(*) FROM ejercicios WHERE id_lprc='$idlist'";
	$e_cont_lista    =   $conexion->query($cont_lista);
	$a_cont_lista 	 =   $e_cont_lista->fetch_array();

	$n_n_lista       =   $a_cont_lista[0];

	$numero_lista    =   $n_n_lista+1; 


?>
<?php include("ejercicios/vista_crear_ejercicio.php"); ?>