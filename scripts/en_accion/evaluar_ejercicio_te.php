<?php
	include("../../evaluar_toquen.php");
	include("../../config.php");
	$resp       = addslashes(htmlspecialchars(strip_tags(trim($_POST['respuesta']))));
	$id_lista   = addslashes(htmlspecialchars(strip_tags(trim($_POST['lista']))));
	$id_ejerc   = addslashes(htmlspecialchars(strip_tags(trim($_POST['ejerc']))));
	$puntos     = addslashes(htmlspecialchars(strip_tags(trim($_POST['punt']))));
	$error      = addslashes(htmlspecialchars(strip_tags(trim($_POST['error']))));

	if ($resp=='') {
		
	}
	else{
		$rango_b    = "SELECT * FROM ejercicios WHERE id_ejerc='$id_ejerc'";
		$rango_e    =  $conexion->query($rango_b);
		$rango_a    =  $rango_e->fetch_array();

		$rang_one   =  $rango_a['rang_one'];
		$rang_two   =  $rango_a['rang_two'];


		$total_b    = "SELECT * FROM ejercicios WHERE id_lprc='$id_lista'";
		$total_r    = $conexion->query($total_b);
		$total      =  mysqli_num_rows($total_r);

		if ($resp >= $rang_one and $resp <= $rang_two) {
			$puntuaje = $puntos+1;
			include("definir_barra.php");
			$errores = $error;
			$marcador_puntuaje = "
			<a style='width:170px;' class='btn btn-sm btn-ind'>
              <strong>
                <span class='glyphicon glyphicon-forward'></span> 
                Correctos $puntuaje
              </strong>
            </a>";
		    $marcador_errores = "
		    		<a style='width:170px;' class='btn btn-sm btn-ind'>
		            <strong>
		              <span class='glyphicon glyphicon-forward'></span> 
		              Errores $errores
		            </strong>
		          </a>
		    ";
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
					  </form>
			";
			$quedado    =  $puntuaje + $errores;
			$guardar = "
		   		<h4>Ejercicio en el que te quedaste $quedado</h4>
		   		  <form id='guardar_partida' method='post'>
			   		<input type='hidden' value='$quedado' name='quedado'>
				   	<input type='hidden' value='$puntuaje' name='acertados'>
				   	<input type='hidden' value='$total' name='ultimo'>
				  	<button type='button' value='enviar' id='btn-guardar' class='btn btn-default'>Cerrar</button>
				    <button type='button' class='btn btn-primary'>Guardar</button>
				  </form>
				  
		   	";

			$r=[
				'uno'   => $input,
				'dos'   => $boton,
				'tres'  => $mens,
				'cuat'  => $barra,
				'cinco' => $marcador_puntuaje,
				'seis'  => $marcador_errores,
				'guar'  => $guardar		
				];

			echo json_encode($r);
		}
		else{
			$puntuaje = $puntos;
			$errores  = $error + 1;
			$marcador_puntuaje = "
			<a style='width:170px;' class='btn btn-sm btn-ind'>
              <strong>
                <span class='glyphicon glyphicon-forward'></span> 
                Correctos $puntuaje
              </strong>
            </a>";
  			  $marcador_errores = "
    		<a style='width:170px;' class='btn btn-sm btn-ind'>
	            <strong>
	              <span class='glyphicon glyphicon-forward'></span> 
	              Errores $errores
	            </strong>
            </a>
   			 ";
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
					  </form>
			";

			$quedado    =  $puntuaje + $errores;
			$guardar = "
		   		<h4>Ejercicio en el que te quedaste $quedado</h4>
		   		  <form id='guardar_partida' method='post'>
			   		<input type='hidden' value='$quedado' name='quedado'>
				   	<input type='hidden' value='$puntuaje' name='acertados'>
				   	<input type='hidden' value='$total' name='ultimo'>
				  	<button type='button' value='enviar' id='btn-guardar' class='btn btn-default'>Cerrar</button>
				    <button type='button' class='btn btn-primary'>Guardar</button>
				  </form>

		   	";
			
			$r=[
				'uno' => $input,
				'dos' => $boton,
				'tres'=> $mens,
				'cuat'=> $barra,
				'cinco' => $marcador_puntuaje,
				'seis'  => $marcador_errores,
				'guar'  => $guardar
			];

			echo json_encode($r);
		}
	}
?>