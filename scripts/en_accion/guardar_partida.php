<?php 
	include("../../config.php");
	include("../../sanitizar.php");
	include("../../ruta.php");
	session_start();
	$id_usuario = $_SESSION['id_usuario'];
	$quedado    = sanitizar($_POST['quedado']) + 1;
	$acertados  = sanitizar($_POST['acertados']);
	$totales    = sanitizar($_POST['ultimo']);
	$id_lista   = sanitizar($_POST['li']);

	$estado_b = "SELECT estado FROM usuarios_practicas where id_usuario='$id_usuario' and id_practica='$id_lista'";
	$estado_e = $conexion->query($estado_b);
	$estado_n = mysqli_num_rows($estado_e);

	if ($estado_n=='') {

			if ($quedado > $totales) {
			     echo "No puedes guardar porque ya terminaste la practica";
			}
			else{
				$busqueda_modulo = "SELECT materia,modulo FROM l_prc WHERE id_lprc='$id_lista'";
				$busqueda_modulo_e = $conexion->query($busqueda_modulo);
				$busqueda_modulo_a = $busqueda_modulo_e ->fetch_array();
				$materia = $busqueda_modulo_a['materia'];
				$modulo  = $busqueda_modulo_a['modulo'];

				$cambio_estado=
				"INSERT INTO usuarios_practicas(id_usuario,id_practica,estado,ejercicio,correctos,materia, modulo) 
				      VALUES ('$id_usuario','$id_lista','suspendida','$quedado','$acertados','$materia','$modulo')"; 
				$ejecutar_cambio = $conexion->query($cambio_estado) or die("die");
				echo "Se ha guardado exitosamente te quedaste en el ejercicio $quedado de $totales puedes salir de la practica";
			}
	}
	else{
		$estado_a     = $estado_e->fetch_array();
		$estado       = $estado_a['estado'];


		if ($estado=='realizada') {
			echo "Esta lista ya la habias hecho antes, no se pude guardar ya que su estado es que ya esta realizada";
		}
		else{
			if ($quedado > $totales) {
				echo "No puedesjj guardar porque ya terminaste la practica";
			}
			else{
				$cambio_estado=
				"UPDATE usuarios_practicas 
				 SET    estado='suspendida',ejercicio='$quedado',correctos='$acertados' 
				 where  id_usuario='$id_usuario' and id_practica='$id_lista'";
				$ejecutar_update = $conexion->query($cambio_estado) or die("die");
				echo "Se ha guardado exitosamente te quedaste en el ejercicio $quedado de $totales puedes salir de la practica";
			}
		}
	


	}


	
?>