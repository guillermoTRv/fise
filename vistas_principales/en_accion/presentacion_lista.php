<div class="panel-body fk">
	<div class="row">
		<div class="col-md-9">
			<br>
				<small><em>De las mejoras formas en que podemos reforzar nuestros conocimientos es poniendolos en practica</em></small>
      			<p></p>
				
			<?php 
				if ($estado_us_n!=0) {
                 global $estado_us;
                 $estado_us   = $estado_us_a['estado'];  
 					if ($estado_us=='realizada') {
 						
 					}
 					if ($estado_us=='suspendida') {
 						global $ejercicio;  $ejercicio = $estado_us_a['ejercicio'];
 						global $correctos;  $correctos = $estado_us_a['correctos'];
 						

 					}
            					     	
                  
            	}
            	else{
                 	    
                 }   

			?>



			<table class="table table-bordered">
  				
  				<tbody>
  					<tr>
  						<td>Estado de la lista</td>
  						<td>
  							<?php if (empty($estado_us)) {
  								echo "Lista no realizada";
  							}else{echo $estado_us;}  ?>
  						</td>
  					</tr>
  					<tr>
  						<td>Número de ejercicios</td>
  						<td><?php echo $num_ejerc ?></td>
  					</tr>
  					<tr>
  						<td>Nivel de la lista</td>
  						<td><?php echo $nivel ?></td>
  					</tr>
  					<tr>
  						<td>Puntuacion total</td>
  						<td>--</td>
  					</tr>
  				</tbody>
			</table>


			
			

			
			<p>-<em>Cuando se presenten ejercicios en donde tengas que ingresar un numero ocupa la aproximacion mas cercana</em></p>
			<p>-<em>Recuerda que puedes guardar tu partida para continuarla en donde te quedaste en caso de que tengas que retirarte</em></p>
			<?php 
					if ($estado_us=="suspendida") {
						?> 
							<form id='form_comenzar_susp' method='POST' enctype='multipart/form-data'>
								<?php echo "<input type='hidden' value='$id_lista' name='comenzar'>"; ?>
								<?php echo "<input type='hidden' value='$ejercicio' name='ejercicio'>"; ?>
								<?php echo "<input type='hidden' value='$correctos' name='correcto'>"; ?>
								<button type='button' id='btn-comenzar-susp' value='enviar' class='btn btn-success btn-sm'>Reaunudar practica</button>
							</form>
							<div id='perros'></div>
							<div id='gatos'></div>

						<?php

					} 
					if($estado_us=="realizada" or empty($estado_us)){
						?> 
							<form id='form_comenzar' method='POST' enctype='multipart/form-data'>
								<?php echo "<input type='hidden' value='$id_lista' name='comenzar'>"; ?>
								<button type='button' id='btn-comenzar' value='enviar' class='btn btn-success btn-sm'>Comenzar</button>
							</form>
						<?php
					}
			?>
			
		</div>
	</div>
</div>
