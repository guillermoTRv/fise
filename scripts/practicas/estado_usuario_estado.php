<?php 
	$id_usuario = $_SESSION['id_usuario'];
	$estado_b   =  "SELECT * FROM usuarios_practicas WHERE id_usuario='$id_usuario' and id_practica='$id_practica'";
	$estado_e   =  $conexion->query($estado_b);
	$estado_n   =  mysqli_num_rows($estado_e);

	if ($estado_n == 0) {
		echo '<span class="label label-primary"><span class="glyphicon glyphicon-play"></span></span> Comienza - 
              <a href="'.$enlace.'">Realizar</a></p>';
	}
	if ($estado_n != 0) {
		$estado_a   =  $estado_e->fetch_array();
	    $estado     =  $estado_a['estado'];

		if ($estado == 'realizada') {
			echo '<span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span> Realizada - 
                  <a href="'.$enlace.'">volver a realizar</a></p>';	
		}
		if ($estado == 'suspendida') {
			echo '<span class="label label-warning"><span class="glyphicon glyphicon-pause"></span></span> suspendida - 
                  <a href="'.$enlace.'">Reanudar practica</a></p>';
		}

		
	}
	

?>
