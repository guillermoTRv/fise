<?php 
	include("../../sanitizar.php");
	$id_lista           = sanitizar($_POST['comenzar']);
	$ejercicio_quedado  = sanitizar($_POST['ejercicio']);
	$correctos          = sanitizar($_POST['correcto']);

	$errores = $ejercicio_quedado - $correctos - 1;

	$marcador_puntuaje = "
			<a style='width:170px;' class='btn btn-sm btn-ind'>
              <strong>
                <span class='glyphicon glyphicon-forward'></span> 
                Correctos $correctos
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
   

	$r=[
			'uno'   => $marcador_puntuaje,
			'dos'   => $marcador_errores,
			
		];

		echo json_encode($r);
?>