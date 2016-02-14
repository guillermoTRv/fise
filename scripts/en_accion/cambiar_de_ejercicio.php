<?php 

	#tambien deberia de existir un if que me detecte si la id del ejercicio es la ultima o no
	#tambien falta el algoritmo para que se sepa en donde va la barra
	include("../../input_toquen.php");
	include("../../config.php");
	include("../../ruta.php");

	$id_lista         = addslashes(htmlspecialchars(strip_tags(trim($_POST['lista']))));	
	$id_ejerc         = addslashes(htmlspecialchars(strip_tags(trim($_POST['ejerc']))));
	$id_ejerc_actual  = $id_ejerc+1;
	$puntuaje         = addslashes(htmlspecialchars(strip_tags(trim($_POST['punt']))));
	$errores          = addslashes(htmlspecialchars(strip_tags(trim($_POST['error']))));

	$id_ultimo_b    = "SELECT id_ejerc 
	                   FROM   ejercicios 
	                   WHERE  id_lprc='$id_lista' order by id_ejerc desc";
	$id_ultimo_e    = $conexion->query($id_ultimo_b);
	$id_ultimo_a    = $id_ultimo_e->fetch_array();
	$id_ultimo      = $id_ultimo_a[0];

	if ($id_ejerc == $id_ultimo) {
		echo "Felicidades ya acabaste la practica estos son tus resultados";	
	}
	else{

		$primer_ejerc_b = "SELECT id_ejerc,lugar,pregunta,clasf,type,mens_err,mens_acert,nivel,puntuaje 
		                   FROM   ejercicios 
		                   WHERE  id_lprc='$id_lista' and id_ejerc='$id_ejerc_actual'";
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

		if ($type=='te') {
			$tipo_b = "SELECT placeh,rang_one,rang_two FROM ejercicios WHERE  id_lprc='$id_lista' and id_ejerc='$id_ejerc_actual'";
			$tipo_e = $conexion->query($tipo_b);
			$tipo_a = $tipo_e->fetch_array();
			global $placeh;   $placeh   = $tipo_a[0];
			global $rang_one;  $rang_one = $tipo_a[1];
			global $rang_two;  $rang_two = $tipo_a[2];
		}
		if ($type=='op' ) 
		{
			$tipo_b = "SELECT true_op FROM ejercicios WHERE  id_lprc='$id_lista' and id_ejerc='$id_ejerc_actual'";
			$tipo_e = $conexion->query($tipo_b);
			$tipo_a = $tipo_e->fetch_array();
			global $true_op;  $true_op   = $tipo_a[0]; 
		}
		include("imagen_ejercicio.php");
		include("../../vistas_principales/en_accion/plantilla_primer_ejerc.php");
	}
?>