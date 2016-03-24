<?php
    $materia  =$_REQUEST['materia'];
	$unidad   =$_REQUEST['unidad'];
   	$tema     =$_REQUEST['tema'];
   	$by		  =$_REQUEST['by'];
   	$cons     =$_REQUEST['cons'];
   	$prf      =$_REQUEST['prf'];
   	$tab      =$_REQUEST['tab'];

   	$un =$_REQUEST['unidad'];
   	$tm     =$_REQUEST['tema'];
   	/*if () {
   		Aqui se haran las variables de conexion
   	}*/


   	# conectare la base de datos
   	include("paginacion_config.php");
   	include("config.php");
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
		$per_page  = 10; //la cantidad de registros que desea mostrar
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
			<div class="table-pagination pull-right">
			<?php echo paginate( $page, $total_pages, $adjacents);?>
		</div>
		</div>
		

			<?php
			while($registro = mysqli_fetch_array($query)){
				
				if ($tab == '') {
					include("scripts/panel_contenidos/principales/fichas.php");	
					}	
				else{
					echo "string";
				}
			
			}
			?>
			
		
			<?php
			
		} else {
			?>
			<div class="alert alert-warning alert-dismissable">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
              <h4>Aviso!!!</h4> No hay datos para mostrar
            </div>
			<?php
		}
	}
?>