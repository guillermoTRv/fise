<?php
	include("../../evaluar_toquen.php");
	include("../../config.php"); 
	$resp       = addslashes(htmlspecialchars(strip_tags(trim($_POST['respuesta']))));
	$id_lista   = addslashes(htmlspecialchars(strip_tags(trim($_POST['lista']))));
	$id_ejerc   = addslashes(htmlspecialchars(strip_tags(trim($_POST['ejerc']))));
	$puntos     = addslashes(htmlspecialchars(strip_tags(trim($_POST['punt']))));
	$error      = addslashes(htmlspecialchars(strip_tags(trim($_POST['error']))));

	if ($resp=='') {
		include("barra_pausada.php");
		$input = "<input type='text' ='' name='respuesta' class='form-control'>";
		$boton = " <button type='button' value='enviar' id='btn-evaluar-te' class='btn btn-success btn-sm'>Comprobar respuesta</button>";
		$mens = "No has ingresado nada";

		$r=[
				'uno'   => $input,
				'dos'   => $boton,
				'tres'  => $mens,
				'cuat'  => $barra,
				'cinco' => $puntos,
				'seis'  => $error,		
				];

			echo json_encode($r);
	}
	else{
		$rango_b    = "SELECT * FROM ejercicios WHERE id_ejerc='$id_ejerc' and id_lprc='$id_lista'";
		$rango_e    =  $conexion->query($rango_b);
		$rango_a    =  $rango_e->fetch_array();

		$rang_one   =  $rango_a['rang_one'];
		$rang_two   =  $rango_a['rang_two'];


		if ($resp >= $rang_one and $resp <= $rang_two) {
			$puntuaje = $puntos+1;
			include("definir_barra.php");
			$errores = $error;
			$input = "<input type='text' disabled value='$resp' name='respuesta' class='form-control'>";
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
				'uno'   => $input,
				'dos'   => $boton,
				'tres'  => $mens,
				'cuat'  => $barra,
				'cinco' => $puntuaje,
				'seis'  => $errores,		
				];

			echo json_encode($r);
		}
		else{
			$puntuaje = $puntos;
			$errores  = $error + 1;
			include("definir_barra.php");
			$input = "<input type='text' disabled value='$resp' name='respuesta' class='form-control' >";
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
				'uno' => $input,
				'dos' => $boton,
				'tres'=> $mens,
				'cuat'=> $barra,
				'cinco' => $puntuaje,
				'seis'  => $errores,
			];

			echo json_encode($r);
		}
	}
?>