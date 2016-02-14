<?php
	include("../../evaluar_toquen.php");
	include("../../config.php"); 
	$resp       = addslashes(htmlspecialchars(strip_tags(trim($_POST['respuesta']))));
	$id_lista   = addslashes(htmlspecialchars(strip_tags(trim($_POST['lista']))));
	$id_ejerc   = addslashes(htmlspecialchars(strip_tags(trim($_POST['ejerc']))));
	$puntos     = addslashes(htmlspecialchars(strip_tags(trim($_POST['punt']))));
	$error      = addslashes(htmlspecialchars(strip_tags(trim($_POST['error']))));

	$opresp_b   = "SELECT * FROM ejercicios WHERE id_ejerc='$id_ejerc' and id_lprc='$id_lista'";
	$opresp_e   =  $conexion->query($opresp_b);
	$opresp_a   =  $opresp_e->fetch_array();

	$op_resp    =  $opresp_a['true_op'];
	
	if ($resp == $op_resp) {
		$puntuaje = $puntos+1;
		include("definir_barra.php");
		$errores = $error;
		$boton = '';
		$mens  = "<p style='margin-top:10px;'>tu respuesta es correcta</p>
				  <form id='pasar_ejercicio' method='post'>
				  	<button type='button' value='enviar' id='btn-pasar' class='btn btn-success btn-sm'>Siguiente ejercicio 
				      <span class='glyphicon glyphicon-arrow-right'></span>
				  	</button>
				  	<input type='hidden' name='lista' value='$id_lista'>
                    <input type='hidden' name='ejerc' value='$id_ejerc'>
                    <input type='hidden' name='punt'  value='$puntuaje'>
                    <input type='hidden' name='error' value='$errores'>
                    $puntuaje
				  </form>
		";
		
		$r=[
			'uno'   => $boton,
			'dos'   => $mens,
			'tres'  => $barra,
			'cinco' => $puntuaje,
			'seis'  => $errores,
		];

		echo json_encode($r);
	}
	else{
		$puntuaje = $puntos;
		$errores  = $error + 1;
		include("definir_barra.php");
		$boton = '';
		$mens  = "<p style='margin-top:10px;'>Estas equivocado</p>
					<form id='pasar_ejercicio' method='post'>
				  	<button type='button' value='enviar' id='btn-pasar' class='btn btn-success btn-sm'>Siguiente ejercicio 
				      <span class='glyphicon glyphicon-arrow-right'></span>
				  	</button>
				  	<input type='hidden' name='lista' value='$id_lista'>
                    <input type='hidden' name='ejerc' value='$id_ejerc'>
                    <input type='hidden' name='punt'  value='$puntuaje'>
                    <input type='hidden' name='error' value='$errores'>
                    $puntuaje
				  </form>
		";
		
		$r=[
			'uno'   => $boton,
			'dos'   => $mens,
			'tres'  => $barra,
			'cinco' => $puntuaje,
			'seis'  => $errores,
		];

		echo json_encode($r);
	}
?>