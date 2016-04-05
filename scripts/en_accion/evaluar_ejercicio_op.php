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
	


	$total_b    = "SELECT * FROM ejercicios WHERE id_lprc='$id_lista'";
		$total_r    = $conexion->query($total_b);
		$total      =  mysqli_num_rows($total_r);

	if ($resp == $op_resp) {
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
				   	<input type='hidden' value='$id_lista' name='li'>
				  	<button type='button' class='btn btn-default' data-dismiss='modal'>Cerrar</button>
				    <button type='button' id='btn-guardar' class='btn btn-primary'>Guardar</button>
				  </form>
				  
		   	";


		$r=[
			'uno'   => $boton,
			'dos'   => $mens,
			'tres'  => $barra,
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
				   	<input type='hidden' value='$id_lista' name='li'>
				  	<button type='button' class='btn btn-default' data-dismiss='modal'>Cerrar</button>
				    <button type='button' id='btn-guardar' class='btn btn-primary'>Guardar</button>
				  </form>
				  
		   	";


		$r=[
			'uno'   => $boton,
			'dos'   => $mens,
			'tres'  => $barra,
			'cinco' => $marcador_puntuaje,
			'seis'  => $marcador_errores,
			'guar'  => $guardar
		];

		echo json_encode($r);
	}
?>