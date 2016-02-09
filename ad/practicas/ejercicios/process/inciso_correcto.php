<?php
	include("../../../../config.php"); 
	$id_ejerc = $_POST['la_id'];
	$inciso   = $_POST['inc_correct'];

	$update = "UPDATE ejercicios SET true_op = '$inciso' WHERE id_ejerc='$id_ejerc'";
	$e_update= $conexion->query($update) or die("asas");

	echo "<div class='col-md-8 col-md-offset-4'> Muy bien todos los datos que se necesitan para crear el ejercicio fueron creados exitosamente, ahora puedes seleccionar cualquiera de las siguientes 2 opciones</div>";
	echo "<div class='row' style='margin-top:20px;'>
		 	  <div class='col-sm-4 col-sm-offset-4'>
				<button type='button' id='btn_pasar' value='enviar' class='btn btn-success btn-sm'>Crear otro ejercicio</button>
		 	  </div>
		      <div>
				  <a>
					Listo ya termine de agregar ejercicios
				  </a>
			  </div>
		 </div>";
?>