<?php 
	include("../../config.php");

	$idlist=$_POST['fo'];
	$num_ejerc_b = "SELECT * FROM ejercicios WHERE id_lprc='$idlist'";
	$num_ejerc_e =  $conexion->query($num_ejerc_b);
	$num_ejerc_a = mysqli_num_rows($num_ejerc_e);

	$update_s    = "UPDATE l_prc SET num_ejerc='$num_ejerc_a' WHERE id_lprc='$idlist'";
	$update_e    = $conexion->query($update_s);

	$datoslist_b = "SELECT * FROM l_prc WHERE id_lprc=$idlist";
	$datoslist_e = $conexion->query($datoslist_b);
	$datoslist_a = $datoslist_e->fetch_array();

		$nombre       = $datoslist_a[1];
		$materia      = $datoslist_a[2];
		$clasf        = $datoslist_a[4];
		$nivel        = $datoslist_a[5];
		$num_ejerc    = $datoslist_a[6];
		$frc_creacion = $datoslist_a[8];

	
	echo
	$mens_uno = "
		¡¡ Listo !! Ha terminado de elaborar una practica<br> si quieres hacer otra lista solo necesitas <a href='?ty=practicas'>recargar esta pagina</a>
			<br><h4>Datos de la lista</h4>
			<p>Nombre         -- $nombre</p>
			<p>Materia        -- $materia</p>
			<p>Clasificacion  -- $clasf</p>
			<p>Nivel          -- $nivel</p>
			<p>#ejercicios    -- $num_ejerc</p>
			<p>Fecha creacion -- $frc_creacion</p>
			
		" ;
?>
	<div class='row'> 
			<div class='col-md-7'>
				<table class='table'>
			    <thead>
			        <tr>   
			          <th>Reactivo</th>
			          <th>Lugar</th>
			          <th>Clasificacion</th>
			          <th>Tipo</th>
			          <th>Nivel</th>
			          <th>Respuesta</th>
			        </tr>
			    </thead>
			    <tbody>
			    	<?php 
			    		while ($array = mysqli_fetch_array($num_ejerc_e)) {
							   $pregunta      = $array['pregunta'];
							   $lugar         = $array['lugar'];
							   $clasificacion = $array['clasf'];
							   $tipo          = $array['type'];
							   $nivel         = $array['nivel'];

							   if ($tipo=='te') {
							   		 $rang_one=$array['rang_one'];
							   		 $rang_two=$array['rang_two'];
							   		 global $resp;
							   		 $resp = $rang_one." - ".$rang_two;

							   }
							   if ($tipo=='op') {
							   		 global $resp;
							   		 $resp = $array['true_op'];
							   }
					    echo" 
						<tr>
			          		<td> $pregunta      </td>
			          		<td> $lugar         </td>
			          		<td> $clasificacion </td>
			          		<td> $tipo          </td>
			          		<td> $nivel         </td>
			          		<td> $resp          </td>
			        	</tr>
			        	";

						}
			    	 ?>
			   	</tbody>
			</table>
			</div>
	</div>
