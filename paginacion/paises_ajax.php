<?php
	$m=$_REQUEST['materia'];
	$n=$_REQUEST['unidad'];

   # conectare la base de datos
    $con=@mysqli_connect('localhost', 'root', '', 'newmatematicasymas');
    if(!$con){
        die("imposible conectarse: ".mysqli_error($con));
    }
    if (@mysqli_connect_errno()) {
        die("Connect failed: ".mysqli_connect_errno()." : ". mysqli_connect_error());
    }
	$action = (isset($_REQUEST['action'])&& $_REQUEST['action'] !=NULL)?$_REQUEST['action']:'';
	if($action == 'ajax'){
		include 'pagination.php'; //incluir el archivo de paginación
		//las variables de paginación
		$page = (isset($_REQUEST['page']) && !empty($_REQUEST['page']))?$_REQUEST['page']:1;
		$per_page = 10; //la cantidad de registros que desea mostrar
		$adjacents  = 4; //brecha entre páginas después de varios adyacentes
		$offset = ($page - 1) * $per_page;
		//Cuenta el número total de filas de la tabla*/
		
		$listas_b = "SELECT * FROM ficha_contenido_materia WHERE materia='Trigonometria' ";
	    $listas_e = mysqli_query($con,$listas_b);
	    $numrows = mysqli_num_rows($listas_e);

		$total_pages = ceil($numrows/$per_page);
		$reload = 'index.php';
		//consulta principal para recuperar los datos
		$query = mysqli_query($con,"SELECT * FROM ficha_contenido_materia WHERE materia='Trigonometria'  order by id_fichamat LIMIT $offset,$per_page");
		
		if ($numrows>0){
			?>
		<table class="table table-bordered">
			  <thead>
				<tr>
				  <th><?php echo $numrows; ?></th>
				  <th><?php echo $n; ?></th>
				  <th>Moneda</th>
				  <th>Capital</th>
				  <th>Continente</th>
				</tr>
			</thead>
			<tbody>
			<?php
			while($row = mysqli_fetch_array($query)){
				?>
				<tr>
					<td><?php echo $row['materia'];?></td>
					<td><?php echo $row['unidad'];?></td>
					<td><?php echo $row['tema'];?></td>
					<td><?php echo $row['titulo'];?></td>
					<td><?php echo $row['materia'];?></td>
				</tr>
				<?php
			}
			?>
			</tbody>
		</table>
		<div class="table-pagination pull-right">
			<?php echo paginate($reload, $page, $total_pages, $adjacents);?>
		</div>
		
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