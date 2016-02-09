<?php 
	include("../../../../config.php");
	error_reporting(E_ALL ^ E_NOTICE);
	$campos="
		<div id='campo_abloquear'>
		<div class='form-group'>
			<label class='col-sm-4 control-label'>Texto del opcion</label>
			<div class='col-sm-8'>
				<input class='form-control' type='text' name='texto_op'>
			</div>
		</div>
		</div>
		<div class='form-group'>
			<div class='col-sm-8 col-sm-offset-4'>
				<input type='file' name='img_op'>
			</div>
		</div>
	";	

	$texto_op  =  $_POST['texto_op'];
	$id_ejerc  =  $_POST['id_ejerc'];
	

	$b_uno     =  "SELECT COUNT(*) FROM opcion WHERE id_ejerc='$id_ejerc'";
	$e_b_uno   =  $conexion->query($b_uno);
	$a_b_uno   =  $e_b_uno->fetch_array();
	$cantidad  =  $a_b_uno[0];

	if ($cantidad==0 ) {global $inciso; $insiso='a';}
	if ($cantidad==1 ) {global $inciso; $insiso='b';}
	if ($cantidad==2 ) {global $inciso; $insiso='c';}
	if ($cantidad==3 ) {global $inciso; $insiso='d';}
	if ($cantidad==4 ) {global $inciso; $insiso='e';}
	if ($cantidad==5 ) {global $inciso; $insiso='f';}

	$insertar_inciso="INSERT INTO opcion(inciso,id_ejerc,text_opt) VALUES('$insiso','$id_ejerc','$texto_op')";
	$ejecutar_insert=$conexion->query($insertar_inciso);

	$b_dos       =  "SELECT COUNT(*) FROM opcion WHERE id_ejerc='$id_ejerc'";
	$e_b_dos     =  $conexion->query($b_dos);
	$a_b_dos     =  $e_b_dos->fetch_array();
	$cantidad_d  =  $a_b_dos[0];

	$traeme_b    =  "SELECT id_option,id_ejerc FROM opcion ORDER BY id_option DESC"; 
	$traeme_e    =  $conexion->query($traeme_b);
	$traeme_a	 =  $traeme_e->fetch_array();
	$id_option   =  $traeme_a[0];

	include("insertar_imagen_op.php");

	if ($cantidad_d>=2) {
		global $mensaje;
		$mensaje="
			<div class='col-md-8 col-md-offset-4' style='margin-bottom:20px;'>
			<p>Los datos fueron incertados correctamente</p>
			<button type='button' id='btnop' value='enviar' class='btn btn-success btn-sm'>Añadir campo de opcion multiple</button></div>";
		global $definir_inciso;
		$definir_inciso="
			<hr style='border:1px solid #f2f2f2;'>
			<div class='col-md-8 col-md-offset-4'>
			<p>Si haz terminado de agregar insisos, haz click en el boton de abajo para definir el insiso correcto</p>
			<form id='colocar_correcto' method='POST' enctype='multipart/form-data'>
			  <input type='hidden' name='idman' value='$id_ejerc'>
				<button type='button' id='btn_inciso' value='enviar' class='btn btn-success btn-sm'>
						Definir inciso correcto
				</button>
			</form>
			<br><br><br>
			</div>
			";
	}
	else{
		global $mensaje;
		$mensaje="
			<div class='col-md-8 col-md-offset-4' style='margin-bottom:20px;'>
			<p>Los datos fueron incertados correctamente y necesitas añadir un insiso mas</p>
			<button type='button' id='btnop' value='enviar' class='btn btn-success btn-sm'>Añadir campo de opcion multiple</button></div>
				";
		global $definir_inciso;
		$definir_inciso="";
	}

	$r= [
		'in_uno'  => $campos,
		'in_dos'  => $mensaje,
		'in_tres' => $definir_inciso
	];

	echo json_encode($r);
	
	
?>