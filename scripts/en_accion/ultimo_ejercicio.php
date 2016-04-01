<?php 
	

		session_start();
		$id_usuario = $_SESSION['id_usuario'];

		$estado_b ="SELECT estado FROM usuarios_practicas where id_usuario='$id_usuario' and id_practica='$id_lista'";
		$estado_e = $conexion->query($estado_b);
		$estado_n = mysqli_num_rows($estado_e);

		if ($estado_n == 0) {
			
			$busqueda_modulo = "SELECT materia,modulo FROM l_prc WHERE id_lprc='$id_lista'";
			$busqueda_modulo_e = $conexion->query($busqueda_modulo);
			$busqueda_modulo_a = $busqueda_modulo_e ->fetch_array();
			
			global $materia;
			$materia = $busqueda_modulo_a['materia'];
			$modulo  = $busqueda_modulo_a['modulo'];
			$realizada = "INSERT INTO usuarios_practicas(id_usuario,id_practica,estado,ejercicio,correctos,materia, modulo) VALUES('$id_usuario','$id_lista','realizada','$id_ultimo','$puntuaje','$materia','$modulo')";
			$realizada_e = $conexion->query($realizada);
			#se insertaVALUES ('$id_usuario','$id_lista','suspendida','$quedado','$acertados','$materia','$modulo')
		}
		else {
			$busqueda_materia = "SELECT materia FROM l_prc WHERE id_lprc='$id_lista'";
			$busqueda_materia_e = $conexion->query($busqueda_materia);
			$busqueda_materia_a = $busqueda_materia_e ->fetch_array();
			
			global $materia;
			$materia = $busqueda_materia_a['materia'];

			$cambio_estado=
				"UPDATE usuarios_practicas 
				 SET    estado='realizada',ejercicio='$id_ultimo',correctos='$puntuaje' 
				 where  id_usuario='$id_usuario' and id_practica='$id_lista'";
			$ejecutar_update = $conexion->query($cambio_estado) or die("die");


			#se hace update
		}

		include("respuesta_final.php");
?>