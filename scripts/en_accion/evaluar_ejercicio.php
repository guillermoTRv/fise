<?php
	include("../../config.php"); 
	$resp       = $_POST['respuesta'];
	$id_lista   = $_POST['lista'];
	$id_ejerc   = $_POST['ejerc'];

	$rango_b    = "SELECT * FROM ejercicios WHERE id_ejerc='$id_ejerc' and id_lprc='$id_lista'";
	$rango_e    =  $conexion->query($rango_b);
	$rango_a    =  $rango_e->fetch_array();

	$rang_one   =  $rango_a['rang_one'];
	$rang_two   =  $rango_a['rang_two'];


	if ($resp >= $rang_one and $resp <= $rang_two) {

		include("definir_barra.php");
		
		$input = "<input type='text' disabled value='$resp' name='respuesta' class='form-control'>";
		$boton = '';
		$mens  = "<p style='margin-top:10px;'>tu respuesta es correcta</p>
				  <form id='pasar_ejercicio' method='post'>
				  	<button type='button' value='enviar' id='btn-pasar' class='btn btn-success btn-sm'>Siguiente ejercicio 
				      <span class='glyphicon glyphicon-arrow-right'></span>
				  	</button>
				  	<input type='hidden' name='lista' value='$id_lista'>
                    <input type='hidden' name='ejerc' value='$id_ejerc'>
				  </form>
		";
		
		$r=[
			'uno' => $input,
			'dos' => $boton,
			'tres'=> $mens,
			'cuat'=> $barra,
		];

		echo json_encode($r);
	}
	else{
		include("barra_pausada.php");
		$input = "<input type='text' value='$resp' name='respuesta' class='form-control' >";
		$boton = '<button type="button" value="enviar" id="btn-evaluar-te" class="btn btn-success btn-sm">Comprobar respuesta</button>';
		$mens  = "<p style='margin-top:10px;'>Estas equivocado</p>";
		
		$r=[
			'uno' => $input,
			'dos' => $boton,
			'tres'=> $mens,
			'cuat'=> $barra,
		];

		echo json_encode($r);
	}
?>