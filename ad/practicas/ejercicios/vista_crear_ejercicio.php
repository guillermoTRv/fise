<div class="col-md-9">
	<form id="form_ej" method="post" enctype="multipart/form-data" class="form-horizontal"><br>
		<legend>
			Ejercicio 
			<?php echo $numero_lista; ?>
			&nbsp;para la lista
			"<?php echo $nombre."&nbsp;- $materia"; ?>"
		</legend>
		<div id="factor"></div>
		<div id="colm"></div>


		<?php echo "<input type='hidden' value='$idlist' name='lista_slc'>"; ?>
		
		<div id="aqui_va_form">
			<div style="margin-top:20px;" class="form-group">
				<label class="col-sm-4 control-label">Pregunta o texto principal del ejercicio</br></label>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="pregunta">
				</div>
			</div>
	        <div style="margin-top:30px;" class="form-group">
				<label class="col-sm-4 control-label">Dificultad del ejercicio</br></label>
				<div class="col-sm-8">
					<select class="form-control" name="nivel">
						<option value="">--</option>
						<option value="uno">uno</option>
						<option value="intermedio">intermedio</option>
						<option value="dificil">dificil</option>
					</select>
				</div>
			</div>
			<div style="margin-top:30px;" class="form-group">
				<label class="col-sm-4 control-label">Clasificacion del ejercicio</br></label>
				<div class="col-sm-8">
					<select class="form-control" name="clasf">
						<option value="">--</option>
						<option value="conceptual">conceptual</option>
						<option value="teorico">teorico</option>
					</select>
				</div>
			</div>
			<div style="margin-top:30px;" class="form-group">
				<label class="col-sm-4 control-label">Puntuaje que tendra el ejercicio</br></label>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="puntos">
				</div>
			</div>

			<div style="margin-top:30px;" class="form-group">
				<label class="col-sm-4 control-label">Mensaje de salida para respuesta correcta</br></label>
				<div class="col-sm-8">	
					<input type="text" class="form-control" name="mens_true">
				</div>
			</div>

			<div style="margin-top:30px;" class="form-group">
				<label class="col-sm-4 control-label">Mensaje de salida para respuesta incorrecta</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="mens_false">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label">Tipo de ejercicio(-Opcion multiple _ Cuadro de texto-)</label>
				<div class="col-sm-8">
					<select class="form-control" name="type">
						<option value=""></option>
						<option value="texto">Cuadro de texto</option>
						<option value="opcion">Opción multiple</option>
					</select>
				</div>
			</div>
		</div>

		<div class="form-group">
			<div class="col-sm-5 col-sm-offset-4">
				<input type="file" name='image'>
			</div>
		</div>
		<div class="col-sm-5 col-sm-offset-4">
		</div>
	</form>
		<br>
			<div>
				<form id='pasar' method='post' enctype="multipart/form-data">
					<?php echo "<input type='hidden' value='$idlist' name='fo'>"; ?>
					
				</form>
			</div>
			<div id="mens_ejer">
				<div class="col-md-8 col-md-offset-4">
					<button type='button' id='btn-ej' value='enviar' class='btn btn-success btn-sm'>Crear ejercicio</button>
					<br><p>Una ves que das click no hay vuelva atras, asegurarse de que los datos fueron introducidos correctamente</p>
				</div>
			</div>
  			<br>
	<div style="margin-top:100px;"></div>
</div>