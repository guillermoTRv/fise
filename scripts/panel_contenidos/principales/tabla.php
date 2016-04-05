<table class="table">
	<thead>
		<tr>
			<th>Contenido <span>(clic en el nombre)</span></th>
			<th>#</th>
		</tr>
	</thead>
	<tbody>
		
			<?php 
			$u=urls_amigables($unidad);
			$t=urls_amigables($tema);
			$select_unidad="SELECT * FROM ficha_contenido_materia WHERE unidad='$unidad' and consideracion='Ejercicio-Problema' order by id_fichamat desc";
			$c=$conexion->query($select_unidad);
			while($registro = mysqli_fetch_array($query)){
				 $id_ficha      = $registro['id_fichamat'];
				 $titulo_c      = $registro['titulo'];
				 $num_titulo    = strlen($titulo_c);
				 $id_modal		= $id_ficha."a";      


				 $texto_ficha   = $registro['descripcion_texto'];
				 $link_ficha    =$registro['link'];
				 $tipo_ficha    =$registro['tipo_material'];
				 $condideracion_ficha=$registro['consideracion'];
				 $id_usuario    =$registro['id_user'];
				 $fecha_c       =$registro['fecha_registro_fichamat'];
			     $fecha         = substr($fecha_c, 0, 10);
				 $votos_ficha   =$registro['voto'];

				 $consulta_usuario="SELECT id_user,name_user FROM usuariosfise WHERE id_user='$id_usuario'";
				 $ejecutarc=$conexion->query($consulta_usuario);
				 $nm=$ejecutarc->fetch_array();
				 $nombre=$nm[1];

				if ($num_titulo < 80) {
					global $texto;
					$texto = $titulo_c;
				}
				if ($num_titulo >= 80) {
					global $texto;
					$corte = substr($titulo_c, 0, 90);
					$texto = $corte."...";
				}
				if ($unidad!='' && $tema=='' && $by=='' && $cons=='' && $prf=='')  {
            	
            		$tabla_url="?un=$u&cont=$id_ficha";
            	
	            }
	            if ($unidad!='' && $tema!='' && $by=='' && $cons=='' && $prf=='')  {
	                
	                $tabla_url="?un=$u&tm=$t&cont=$id_ficha";
	                
	            }
	            if ($unidad!='' && $tema==''  && $by!='' && $cons=='' && $prf=='') {
	            			
	            	$tabla_url="?un=$u&by=$by&cont=$id_ficha";
	            	
	            }
	            if ($unidad!='' && $tema=='' && $by=='' && $cons!='' && $prf=='') {
	            	$tabla_url="?un=$u&cons=$cons&cont=$id_ficha";
	            	
	            }
	            if ($unidad!='' && $tema=='' && $by=='' && $cons=='' && $prf!='') {
	            	$tabla_url="?un=$u&prf=$prf&cont=$id_ficha";
	            	
	            }
				 	
				 	echo"<tr>
				 			<td style='font-size:.9em;'>
				 				<a href='$tabla_url' class='aind'>$texto</a>
				 			</td>
				 			<td style='font-size:.9em;'>
				 				<a href='#$id_modal' data-toggle='modal' class='aind'><span class='glyphicon glyphicon-th-large'></span> detalles </a>
				 			</td>
				 		</tr>";

				 	?>
				 		<div class="modal fade" id="<?php echo $id_modal ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						        <h4 class="modal-title" id="myModalLabel">
						        	<?php echo $texto; ?>
						        </h4>
						      </div>
						      <div class="modal-body">
						      		<?php 
						      			echo $texto_ficha."<br><br>";	    
						      			echo "
            							<a class='infomat' href='?un=$u&cont=$id_ficha'><span class='glyphicon glyphicon-play'></span> Ver | $tipo_ficha - $condideracion_ficha $nombre $fecha &nbsp;&nbsp;&nbsp; Votos:$votos_ficha
					            		</a><br><br>
					            		";
					            		if ($link_ficha!='') {
            							echo "<span class='glyphicon glyphicon-send'></span><a class='jun' target='_blank' href=$link_ficha> $link_ficha</a>";
         								}
						      		?>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						      </div>
						    </div>
						  </div>
						</div>
				 	<?php
			}
			?>
		
	</tbody>
</table>



