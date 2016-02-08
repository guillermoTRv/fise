<div class="panel-body fk">
    <div class='row'>
        <div style="margin-top:9px;"></div>
            <div class="col-md-10">
				<?php 
					switch ($op) {
						case 'listado':
							$tipo_cosulta="todo";
							include("../scripts/practicas/paginacion_fichasprac.php");
							break;

						case 'practicas-generales':
							$tipo_cosulta ="condicional";
							$condicional  ="general"; 
							include("../scripts/practicas/paginacion_fichasprac.php");
							break;

						case 'aplicaciones-particulares':
							$tipo_cosulta ="condicional";
							$condicional  ="aplicaciones particulares"; 
							include("../scripts/practicas/paginacion_fichasprac.php");
							break;

						case 'batalla':
							$tipo_cosulta ="condicional";
							$condicional  ="general"; 
							include("../scripts/practicas/paginacion_fichasprac.php");
							break;
					}
				?>
			</div>
		</div>
	</div>
</div>


