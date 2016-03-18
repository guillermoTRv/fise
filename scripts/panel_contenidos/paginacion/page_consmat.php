<?php 
	/*if (isset($_GET['pos'])) {
				$ini=$_GET['pos'];
			}
			else{$ini=1;}
			$limit_end=6;
			$init=($ini-1)*$limit_end;

			$count_unidad="SELECT COUNT(*) FROM ficha_contenido_materia WHERE unidad='$un' and consideracion='Ejercicio-Problema'";
			$num=$conexion->query($count_unidad);
			$x=$num->fetch_array();
			$total=ceil($x[0]/$limit_end);
			
			$select_unidad="SELECT * FROM ficha_contenido_materia WHERE unidad='$un' and consideracion='Ejercicio-Problema' order by id_fichamat desc LIMIT $init, $limit_end";
			$c=$conexion->query($select_unidad);
			while($registro = mysqli_fetch_array($c)){
				include("../scripts/panel_contenidos/principales/fichas.php");

			}

			if (!$x[0]==0) {
			echo "<div>";
			echo "<ul class='pagination'>";
				
				if (($ini-1)==0) {
					echo"<li><a href='#'>&laquo;</a><li/>";
				}
				else{
					echo "<li><a href='?un=$u&cons=$cons&pos=".($ini-1)."'><b>&laquo;</b></a></li>";
				}
				
				for ($k=1; $k<=$total ; $k++) { 
					
					if ($ini==$k) {
						echo"<li><a href='#'><b>".$k."</b></a></li>";
					}
					else{
						echo "<li><a href='?un=$u&cons=$cons&pos=$k'>".$k."</a><li>";
					}
				}
				
				if ($ini==$total) {
					echo "<li><a href='#'>&raquo;</a></li>";
				}
				else{
					echo "<li><a href='?un=$u&cons=$cons&pos=".($ini+1)."'><b>&raquo;</b></a></li>";
				}



				

				
			echo "</ul>";
			echo "</div>";
			}
			else{
				echo "<br><p>Aun no hay contenidos en esta zona, si gustas puedes recomendarnos alguno </p>";
			<a><span class='glyphicon glyphicon-folder-open'></span></a>
			}*/
 ?>

<table class="table">
	<thead>
		<tr>
			<th>Contenido <span>(clic en el nombre)</span></th>
			<th>#</th>
		</tr>
	</thead>
	<tbody>
		
			<?php 
			$select_unidad="SELECT * FROM ficha_contenido_materia WHERE unidad='$un' and consideracion='Ejercicio-Problema' order by id_fichamat desc";
			$c=$conexion->query($select_unidad);
			while($registro = mysqli_fetch_array($c)){
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