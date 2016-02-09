<?php 
	$pregunta	=$_POST['pregunta'];
	$nivel		=$_POST['nivel'];
	$clasf		=$_POST['clasf'];
	$puntos		=$_POST['puntos'];
	$mens_true  =$_POST['mens_true'];
	$mens_false =$_POST['mens_false'];
	$type		=$_POST['type'];	

	$form_normal="
			<div style='margin-top:20px;' class='form-group'>
				<label class='col-sm-4 control-label'>Pregunta o texto principal del ejercicio</br></label>
				<div class='col-sm-8'>
					<input type='text' class='form-control' name='pregunta' value='$pregunta' placeholder='$pregunta'>
				</div>
			</div>
	        <div style='margin-top:30px;' class='form-group'>
				<label class='col-sm-4 control-label'>Dificultad del ejercicio</br></label>
				<div class='col-sm-8'>
					<select class='form-control' name='nivel'>
						<option value='$nivel'>$nivel</option>
						<option value='uno'>uno</option>
						<option value='intermedio'>intermedio</option>
						<option value='dificil'>dificil</option>
					</select>
				</div>
			</div>
			<div style='margin-top:30px;' class='form-group'>
				<label class='col-sm-4 control-label'>Clasificacion del ejercicio</br></label>
				<div class='col-sm-8'>
					<select class='form-control' name='clasf'>
						<option value='$clasf'>$clasf</option>
						<option value='conceptual'>conceptual</option>
						<option value='teorico'>teorico</option>
					</select>
				</div>
			</div>
			<div style='margin-top:30px;' class='form-group'>
				<label class='col-sm-4 control-label'>Puntuaje que tendra el ejercicio</br></label>
				<div class='col-sm-8'>
					<input type='text' class='form-control' name='puntos' value='$puntos' placeholder='$puntos'>
				</div>
			</div>

			<div style='margin-top:30px;' class='form-group'>
				<label class='col-sm-4 control-label'>Mensaje de salida para respuesta correcta</br></label>
				<div class='col-sm-8'>	
					<input type='text' class='form-control' name='mens_true' value='$mens_true' placeholder='$mens_true'>
				</div>
			</div>

			<div style='margin-top:30px;' class='form-group'>
				<label class='col-sm-4 control-label'>Mensaje de salida para respuesta incorrecta</label>
				<div class='col-sm-8'>
					<input type='text' class='form-control' name='mens_false' value='$mens_false' placeholder='$mens_false'>
				</div>
			</div>
			<div class='form-group'>
				<label class='col-sm-4 control-label'>Tipo de ejercicio(-Opcion multiple _ Cuadro de texto-)</label>
				<div class='col-sm-8'>
					<select class='form-control' name='type'>
						<option value='$type'>$type</option>
						<option value='texto'>Cuadro de texto</option>
						<option value='opcion'>Opción multiple</option>
					</select>
				</div>
			</div>
	";

		$vista = "
			<div class='col-md-8 col-md-offset-4'>
				<p>El envio ha sido cancelado exitosamente</p>
				<button type='button' id='btn-ej' value='enviar' class='btn btn-success btn-sm'>Crear ejercicio</button>
			</div>
			";	

		$resp =[
			'funo' => $vista,
			'fdos' => $form_normal
		];
		echo json_encode($resp);
?>	
		