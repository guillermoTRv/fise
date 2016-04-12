<?php #como le haria para imprimir todos los datos que hay en el array de mysqli_fetch_array sin tener que estar a cada rato sacando una por una las variables 
#tambien falta algo para que se puedan ver las imagenes
?>
<div class="row" style='margin-top:45px;'>
	<div class="col-md-10">
		<h4>Listas que no han sido dadas de alta</h4>
		<table class="table">
			<thead>
				<tr>
					<th>Nombre de la practica</th>
					<th>Revisar</th>
				</tr>
			</thead>
			<tbody>
				<?php 
					$listas = "SELECT * FROM l_prc WHERE prod='no' order by id_lprc desc";
					$listas_e =$conexion->query($listas);
					while ($listas_a = mysqli_fetch_array($listas_e)) {
						$id_lprc        = $listas_a['id_lprc'];
						$name_lprc      = $listas_a['name_lprc'];
						
					    $materia        = $listas_a['materia'];
					    $clasificacion  = $listas_a['clasf'];
					    $nivel          = $listas_a['nivel'];
					    $num_ejerc      = $listas_a['num_ejerc'];
					    $puntuaje       = $listas_a['puntuaje'];
					    $fecha_cr       = $listas_a['frc_creacion'];

						?>
							<tr>
								<td><?php echo $name_lprc ?></td>
								<td>
									<button type="button" class="btn btn-default btn-xs btn-danger" data-toggle="modal" data-target="#<?php echo $id_lprc; ?>">
										Ir a revisión
									</button>
								</td>
							</tr>
						<?php
						include("modal_alta.php");
					}
				?>
			</tbody>
		</table>
	</div>
</div>

