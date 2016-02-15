<div class="panel-body fk">
	<div class="row">
		<div class="col-md-10">
			<br>
			<h4>De las mejoras formas en que podemos reforzar nuestros conocimientos es poniendolos en practica</h4>
			<p>Numero de ejercicios:<?php echo $num_ejerc ?> &nbsp; Nivel de lista:<?php echo $nivel ?></p>
			<p>Puedes hacer redondeo de cifras</p>
			<form id='form_comenzar' method='POST' enctype='multipart/form-data'>
				<?php echo "<input type='hidden' value='$id_lista' name='comenzar'>"; ?>
				<button type='button' id='btn-comenzar' value='enviar' class='btn btn-success btn-sm'>Comenzar</button>
			</form>
		</div>
	</div>
</div>
