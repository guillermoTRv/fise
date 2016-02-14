<?php  
	include("../../../../config.php");
   /*$rangone=$_POST['rangouno'];
	$regla='[^\d+$]';
	$regla_dos='/[0-9]/';  
	if (preg_match($regla, $rangone))  {
		echo "si se pudo";
	}
	else{
		echo "no se pudo";
	}*/
	error_reporting(E_ALL ^ E_NOTICE);
	$placeholder=$_POST['placeholder'];
	$rangouno=$_POST['rangouno'];
	$rangodos=$_POST['rangodos'];
	$afirmador=$_POST['afirmador'];
	$id_ejerc=$_POST['id_ejerc'];
	/*$form_terminar="
		<button type='button' id='btn_terminar_lista' value='enviar' class='btn btn-warning btn-sm'>Listo ya termine de agregar ejercicios</button>
				 		
	";*/
	$form_normal="
					<div class='form-group'>
						<label class='col-sm-4 control-label'>Placeholder</label>
						<div class='col-sm-8'>
							<input class='form-control' type='text' value='$placeholder'>
						</div>
					</div>

					<div class='form-group'>
						<label class='col-sm-4 control-label'>Rango 1</label>
						<div class='col-sm-8'>
							<input class='form-control' type='text' value='$rangouno' name='rangouno'>
						</div>
					</div>

					<div class='form-group'>
						<label class='col-sm-4 control-label'>Rango 2</label>
						<div class='col-sm-8'>
							<input class='form-control' type='text' value='$rangodos' name='rangodos'>
						</div>
					</div>
					<input type='hidden' name='id_ejerc' value='$id_ejerc'>
	";

	$form_hidden="
				<div class='form-group'>
						<label class='col-sm-4 control-label'>Placeholder</label>
						<div class='col-sm-8'>
							<input disabled class='form-control' type='text' placeholder='$placeholder' >
							<input type='hidden' value='$placeholder' name='placeholder'>
						</div>
					</div>

					<div class='form-group'>
						<label class='col-sm-4 control-label'>Rango 1</label>
						<div class='col-sm-8'>
							<input disabled class='form-control' type='text' placeholder='$rangouno'>
							<input type='hidden' value='$rangouno' name='rangouno'>
						</div>
					</div>

					<div class='form-group'>
						<label class='col-sm-4 control-label'>Rango 2</label>
						<div class='col-sm-8'>
							<input disabled class='form-control' type='text' placeholder='$rangodos'>
							<input type='hidden' value='$rangodos' name='rangodos'>
						</div>
					</div>
					<input type='hidden' name='id_ejerc' value='$id_ejerc'>
	";

	if ($afirmador=='true') {
			

			$update="UPDATE ejercicios SET placeh='$placeholder',rang_one='$rangouno',rang_two='$rangodos' WHERE id_ejerc='$id_ejerc'";
			$e_update=$conexion->query($update)or die("a ti");

			$vista ="
				<div class='col-md-8 col-md-offset-4' style='margin-top:13px;'>
				  <p style='margin-bottom:10px;'><em>Los datos secundarios fueron registrados correctamente. Puedes seguir agregano ejercicios para la lista o bien puedes dar en salir para terminar</em></p>
				 </div>
				 <div class='row'>
				 	<div class='col-sm-5 col-sm-offset-4'>
						<button type='button' id='btn_pasar' value='enviar' class='btn btn-success btn-sm'>Crear otro ejercicio</button>
						<button type='button' id='btn_terminar' value='enviar' class='btn btn-warning btn-sm'>Terminar lista</button>
				 	</div>
				 		
				 </div>
			";

			$r=[
				'runo' => $vista,
				'rdos' => $form_hidden
			];

			echo json_encode($r);



	}
	else{
		if ($placeholder!='' and $rangouno!='' and $rangodos!='') {
			$oculto="<input type='hidden' value='true' name='afirmador'>";
			$vista ="
				<div class='col-md-8 col-md-offset-4' style='margin-top:13px;'>
				  <p style='margin-bottom:10px;'><em>Estos son los datos que estas a punto de ingresar</em></p>
				  <p><u>Placeholder: $placeholder</u></p>
				  <p><u>rangouno: $rangouno</u></p>
				  <p><u>rangodos: $rangodos</u></p>
				 </div>
				 <div class='col-sm-5 col-sm-offset-4' style='margin-bottom:70px;'>
					<button type='button' id='btntx' value='enviar' class='btn btn-success btn-sm'>Registrar datos
					</button>
				 </div>
			";

			$r=[
				'runo' => $vista,
				'rdos' => $oculto.$form_hidden
			];
			echo json_encode($r);
		}
		else{
			$vista="
			    <div class='col-md-8 col-md-offset-4' style='margin-top:13px;'>
				  <p>No se incertaron todos los datos en el formulario</p>
				</div>
				<div class='col-sm-5 col-sm-offset-4' style='margin-bottom:70px;'>
					<button type='button' id='btntx' value='enviar' class='btn btn-success btn-sm'>Enviar datos
					</button>
				</div>";

			$r=[
				'runo' => $vista,
				'rdos' => $form_normal
			];
			echo json_encode($r);
		}
	}
?>
