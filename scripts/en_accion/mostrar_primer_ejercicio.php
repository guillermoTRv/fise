<?php 
	include("../../config.php");
	include("../../ruta.php");
	$id_lista     = addslashes(htmlspecialchars(strip_tags(trim($_POST['comenzar']))));	

	if ($id_lista=='') {
		header("Location: $ruta");
	}

	$primer_ejerc_b = "SELECT id_ejerc,lugar,pregunta,clasf,type,mens_err,mens_acert,nivel,puntuaje 
	                   FROM   ejercicios 
	                   WHERE  id_lprc='$id_lista'";
	$primer_ejerc_e =  $conexion->query($primer_ejerc_b);
	$primer_ejerc_a =  $primer_ejerc_e->fetch_array();
	#-------------------------------------------------
	$id_ejerc       =  $primer_ejerc_a[0];
	$lugar			=  $primer_ejerc_a[1];
	$pregunta		=  $primer_ejerc_a[2];
	$clasf			=  $primer_ejerc_a[3];
	$type			=  $primer_ejerc_a[4];
	$mens_err		=  $primer_ejerc_a[5];
	$mens_acert		=  $primer_ejerc_a[6];
	$nivel			=  $primer_ejerc_a[7];
	$puntuaje		=  $primer_ejerc_a[8];

	if ($type=='te') {
		$tipo_b = "SELECT placeh,rang_one,rang_two FROM ejercicios WHERE  id_lprc='$id_lista'";
		$tipo_e = $conexion->query($tipo_b);
		$tipo_a = $tipo_e->fetch_array();
		global $placeh;   $placeh   = $tipo_a[0];
		global $rang_one;  $rang_one = $tipo_a[1];
		global $rang_two;  $rang_two = $tipo_a[2];
	}
	if ($type=='op' ) 
	{
		$tipo_b = "SELECT true_op FROM ejercicios WHERE  id_lprc='$id_lista'";
		$tipo_e = $conexion->query($tipo_b);
		$tipo_a = $tipo_e->fetch_array();
		global $true_op;  $true_op   = $tipo_a[0]; 
	}
	include("imagen_ejercicio.php");
	include("../../vistas_principales/en_accion/plantilla_primer_ejerc.php");
	include("mostrar_primera_barra.php");

?>