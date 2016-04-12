<script type="text/javascript" src="../js/listas.js"></script>
<h2>Panel de administración de listas</h2>
<br>
<div class="row">
	<div class="col-md-12">
		<ul class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Principal</a></li>
		    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Crear una lista</a></li>
		    <li role="presentation"><a href="#ejercicio" aria-controls="ejercicio" role="tab" data-toggle="tab">Crear ejercicios</a></li>
		    <li role="presentation"><a href="#alta_list" aria-controls="settings" role="tab" data-toggle="tab">Dar de alta una lista</a></li>
		    <li role="presentation"><a href="#alta_list" aria-controls="settings" role="tab" data-toggle="tab">Detalles de listas</a></li>
		    <li role="presentation"><a href="#alta_list" aria-controls="settings" role="tab" data-toggle="tab">Modificar lista</a></li>
		    <li role="presentation"><a href="#alta_list" aria-controls="settings" role="tab" data-toggle="tab">Crear objetivos semanles</a></li>
		</ul>
	</div>
</div>
<div class="row">
	<div class="col-md-12">
		<div class="tab-content">
    		<div role="tabpanel" class="tab-pane in active" id="home">
    			<?php include("practicas/indicadores/portada.php"); ?>
    		</div>
		    <div role="tabpanel" class="tab-pane" id="profile">
		    	<?php include("practicas/listas/vista_crear_lista.php"); ?>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="ejercicio">
 				<?php include("practicas/ejercicios/vista_crear_ejercicio.php"); ?>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="alta_list">
		    	<?php include("practicas/alta_listas/despachador.php"); ?>
		    </div>
  		</div>
	</div>
</div>
