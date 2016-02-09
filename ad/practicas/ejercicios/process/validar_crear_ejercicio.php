<?php 
	error_reporting(E_ALL ^ E_NOTICE);
	date_default_timezone_set('America/Mexico_City');
    $fecha 		=	date("Y-m-d H:i:s");
	include("../../../../config.php");
	$lista 		=$_POST['lista_slc'];
	$pregunta	=$_POST['pregunta'];
	$nivel		=$_POST['nivel'];
	$clasf		=$_POST['clasf'];
	$puntos		=$_POST['puntos'];
	$mens_true  =$_POST['mens_true'];
	$mens_false =$_POST['mens_false'];
	$type		=$_POST['type'];	
	$afirmador  =$_POST['afirmador'];

	$form_hidden="
			<div style='margin-top:20px;' class='form-group'>
				<label class='col-sm-4 control-label'>Pregunta o texto principal del ejercicio</br></label>
				<div class='col-sm-8'>
					<input disabled type='text' class='form-control' placeholder='$pregunta'>
					<input type='hidden' value='$pregunta' name='pregunta'>
				</div>
			</div>

	        <div style='margin-top:30px;' class='form-group'>
				<label class='col-sm-4 control-label'>Dificultad del ejercicio</br></label>
				<div class='col-sm-8'>
					<input disabled type='text' class='form-control' placeholder='$nivel'>
					<input type='hidden' value='$nivel' name='nivel'>
				</div>
			</div>

			<div style='margin-top:30px;' class='form-group'>
				<label class='col-sm-4 control-label'>Clasificacion del ejercicio</br></label>
				<div class='col-sm-8'>
					<input disabled type='text' class='form-control' placeholder='$clasf'>
					<input type='hidden' value='$clasf' name='clasf'>
				</div>
			</div>

			<div style='margin-top:30px;' class='form-group'>
				<label class='col-sm-4 control-label'>Puntuaje que tendra el ejercicio</br></label>
				<div class='col-sm-8'>
					<input disabled type='text' class='form-control' placeholder='$puntos'>
					<input type='hidden' value='$puntos' name='puntos'>
				</div>
			</div>

			<div style='margin-top:30px;' class='form-group'>
				<label class='col-sm-4 control-label'>Mensaje de salida para respuesta correcta</br></label>
				<div class='col-sm-8'>
					<input disabled type='text' class='form-control' placeholder='$mens_true'>
					<input type='hidden' value='$mens_true' name='mens_true'>	
				</div>
			</div>

			<div style='margin-top:30px;' class='form-group'>
				<label class='col-sm-4 control-label'>Mensaje de salida para respuesta incorrecta</label>
				<div class='col-sm-8'>
					<input disabled type='text' class='form-control' placeholder='$mens_false'>
					<input type='hidden' value='$mens_false' name='mens_false'>
				</div>
			</div>
			<div class='form-group'>
				<label class='col-sm-4 control-label'>Tipo de ejercicio(-Opcion multiple _ Cuadro de texto-)</label>
				<div class='col-sm-8'>
					<input disabled type='text' class='form-control' placeholder='$type'>
					<input type='hidden' value='$type' name='type'>
				</div>
			</div>
	";
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

if ($afirmador=='true') {
	include("crear_ejercicio.php");
}
else{

	if ($_FILES['image']["error"]>0) {
		$vista= "
		<div class='col-md-8 col-md-offset-4'>
			<p>El campo imagen es obligatorio</p>
			<button type='button' id='btn-ej' value='enviar' class='btn btn-success btn-sm'>Crear ejercicio</button>
		</div>
		";
		$r=[
				'a'=>$vista,
				'b'=>$form_normal
			];
			echo json_encode($r);
	}
	else{
		if ($pregunta!='' and $nivel!='' and $clasf!='' and $puntos!='' and $mens_true!='' and $mens_false!='' and $type!=''){

			$validacion   ="SELECT COUNT(*) FROM ejercicios WHERE id_lprc='1' and pregunta='$pregunta'";
			$e_validacion =$conexion->query($validacion);
			$a_validacion =$e_validacion->fetch_array();
			$v_validacion =$a_validacion[0];
			if ($v_validacion==0) {
				$campo_oculto="<input type='hidden' value='true' name='afirmador'>";
				$vista = "
					<div class='col-md-8 col-md-offset-4'>
						<p><em>Estos son los datos que ingresaste y que se subiran cuando aprietes el boton verde, en caso de que quieras hacer hacer una modifacion y cancelar, click en el boton rojo </em></p>
						<p><u>Nombre o pregunta del ejercicio: $pregunta</u></p>
						<p><u>Nivel: ".$nivel."</u></p>
						<p><u>Clasificacion:".$clasf."</u></p>
						<p><u>Puntos: ".$puntos."</u></p>
						<p><u>Mens true: ".$mens_true."</u></p>
						<p><u>Mens false: ".$mens_false."</u></p>
						<p><u>Tipo: ".$type."</u></p>
						<p><u>Imagen: ".$_FILES['image']['name']."</u></p>
						<button type='button' id='btn-ej' value='enviar' class='btn btn-success btn-sm'>Crear ejercicio</button>
						<button type='button' id='btn_corr' value='enviar' class='btn btn-danger btn-sm'>Cancelar</button>
						<br><br><br><br>
					</div>
					";
					$r=[
				'a'=>$vista,
				'b'=>$campo_oculto.$form_hidden
			];
			echo json_encode($r);
			}
			else{
				$vista = "
					<div class='col-md-8 col-md-offset-4'>
						<p>No se puede repetir una pregunta en una lista de ejercicios</p>
						<button type='button' id='btn-ej' value='enviar' class='btn btn-success btn-sm'>Crear ejercicio</button>
					</div>
					";
				$r=[
				'a'=>$vista,
				'b'=>$form_normal
			];	
			echo json_encode($r);
			}
		}	
		else{
			$vista = "
			<div class='col-md-8 col-md-offset-4'>
				<p>No se han introducido todos los datos necesarios, todos los campos del formulario son obligatorios</p>
				<button type='button' id='btn-ej' value='enviar' class='btn btn-success btn-sm'>Crear ejercicio</button>
			</div>
			";	

			$r=[
				'a'=>$vista,
				'b'=>$form_normal
			];	
			echo json_encode($r);	
		}

	}
}










