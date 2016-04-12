<h2>Panel de administracion para discusiones de las materias</h2>
<br>
<div class="row">
	<div class="col-md-12">
		<ul class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Principal</a></li>
		    
		    <li role="presentation"><a href="#crear_disc" aria-controls="profile" role="tab" data-toggle="tab">Crear una Discusion</a></li>
		   
		    <li role="presentation"><a href="#alta_list" aria-controls="settings" role="tab" data-toggle="tab">Dar de alta una discusion</a></li>

		    <!--<li role="presentation"><a href="#alta_list" aria-controls="settings" role="tab" data-toggle="tab">Detalles de las discusiones</a></li>-->
		    <li role="presentation"><a href="#alta_list" aria-controls="settings" role="tab" data-toggle="tab">Modificar una discusion</a></li>
	
		</ul>
	</div>
</div>
<div class="row">
	<div class="col-md-12">
		<div class="tab-content">
    		<div role="tabpanel" class="tab-pane in active" id="home">
    			<?php #include("practicas/indicadores/portada.php"); ?>
    		</div>
		    <div role="tabpanel" class="tab-pane" id="crear_disc">
		    	<?php include("disc/crear/form_creardiscusion.php"); ?>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="alta_list">
 				<?php include("disc/alta/alta_discusion.php"); ?>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="alta_list">
		    	<?php #include("practicas/alta_listas/despachador.php"); ?>
		    </div>
  		</div>
	</div>
</div>