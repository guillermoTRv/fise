<?php
	$materia =  $_REQUEST['materia'];
    $op      =  $_REQUEST['op'];
	$mod     =  $_REQUEST['mod'];
	$id_usuario = $_REQUEST['fg'];
   
   
   	include("paginacion_config.php");
   	include("config.php");
    include("ruta.php");
    include("scripts/clean/funcion_limpiar.php");
    if(!$con){
        die("imposible conectarse: ".mysqli_error($con));
    }
    if (@mysqli_connect_errno()) {
        die("Connect failed: ".mysqli_connect_errno()." : ". mysqli_connect_error());
    }
	$action = (isset($_REQUEST['action'])&& $_REQUEST['action'] !=NULL)?$_REQUEST['action']:'';
	if($action == 'ajax'){
		include 'paginacion_divs.php'; //incluir el archivo de paginación
		//las variables de paginación
		$page      = (isset($_REQUEST['page']) && !empty($_REQUEST['page']))?$_REQUEST['page']:1;
		
		$per_page  = 4; 	
		$adjacents = 4; //brecha entre páginas después de varios adyacentes
		$offset    = ($page - 1) * $per_page;
		//Cuenta el número total de filas de la tabla*/
		include("paginacion/condicionales_practicas.php");
	    $rows_e      = mysqli_query($con,$rows_b);
	    $numrows     = mysqli_num_rows($rows_e);
		$total_pages = ceil($numrows/$per_page);
		
		//consulta principal para recuperar los datos
		$query = mysqli_query($con,$cons_w);
		
		if ($numrows>0){
			?>
		
		
		<div class="row">
			
			<div style='margin-right:20px;color:black' class="table-pagination pull-right">
			<?php echo paginate( $page, $total_pages, $adjacents);?>
			</div>	
			
		</div>

			<?php

			while ($row = mysqli_fetch_array($query)) {

				$id_practica   = $row['id_lprc'];
				$nombre        = $row['name_lprc'];
				$clasificacion = $row['clasf'];
				$num_ejerc     = $row['num_ejerc'];
				$dificultad    = $row['nivel'];

				#include("../scripts/practicas/estado_usuario.php");
				include("scripts/practicas/enlaces.php");
		   		include("vistas_principales/practicas/asiva_ficha.php");	
			
			}

			?>
			
		
			<?php
			
		} else {
			?>
			<div class="alert alert-success alert-dismissable">
              <button type="button" class="close" data-dismiss="success" aria-hidden="true">&times;</button>
              <h4>Hola</h4> Aun no hay contenidos por aqui, puedes compartirnos alguno
            </div>
			<?php
		}
	}
?>