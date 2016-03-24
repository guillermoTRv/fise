<table class="table">
	<thead>
		<tr>
			<th>Contenido <span>(clic en el nombre)</span></th>
			<th>#</th>
		</tr>
	</thead>
	<tbody>
		
			<?php 
			$select_unidad="SELECT * FROM ficha_contenido_materia WHERE unidad='$unidad' and consideracion='Ejercicio-Problema' order by id_fichamat desc";
			$c=$conexion->query($select_unidad);
			while($registro = mysqli_fetch_array($query)){
				 $titulo_c = $registro['titulo'];
				 $num_titulo = strlen($titulo_c);

				if ($num_titulo < 80) {
					global $texto;
					$texto = $titulo_c;
				}
				if ($num_titulo >= 80) {
					global $texto;
					$corte = substr($titulo_c, 0, 90);
					$texto = $corte."...";
				}
				 	echo"<tr>
				 			<td style='font-size:.9em;'>
				 				<a class='aind'>$texto</a>
				 			</td>
				 			<td style='font-size:.9em;'>
				 				<a class='aind'><span class='glyphicon glyphicon-th-large'></span> detalles </a>
				 			</td>
				 		</tr>";
			}
			?>
		
	</tbody>
</table>