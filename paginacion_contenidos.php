<?php
    $materia  =$_REQUEST['materia'];
	$unidad   =$_REQUEST['unidad'];
   	$tema     =$_REQUEST['tema'];
   	$by		  =$_REQUEST['by'];
   	$cons     =$_REQUEST['cons'];
   	$prf      =$_REQUEST['prf'];
   	$tab      =$_REQUEST['tab'];

   
   	/*if () {
   		Aqui se haran las variables de conexion
   	}*/


   	# conectare la base de datos
   	include("paginacion_config.php");
   	include("config.php");
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
		if ($tab=='') {
			$per_page  = 4; 	
		}
		if ($tab!='') {
			$per_page = 12;
		}

		
		$adjacents = 4; //brecha entre páginas después de varios adyacentes
		$offset    = ($page - 1) * $per_page;
		//Cuenta el número total de filas de la tabla*/
		include("paginacion/condicionales_contenidos.php");
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

			if ($tab == '') {
				include("scripts/panel_contenidos/principales/fichas.php");	
			}	
			else{
				include("scripts/panel_contenidos/principales/tabla.php");
			}
			

			?>
			
		
			<?php
			
		} else {
			?>
			<br><br>
			Hola !! Aun no hay contenidos en esta clasificación 
			<br><br>
			<?php
		}
	}
?>