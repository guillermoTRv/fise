<div class="panel-body fk">
	<div class="row">
		<div class="col-md-10">
			<br>
			<h4>De las mejoras formas en que podemos reforzar nuestros conocimientos es poniendolos en practica</h4>
			<p>Numero de ejercicios:&nbsp;<?php echo $num_ejerc ?></p>
			<p>Nivel de lista:&nbsp;<?php echo $nivel ?></p>

			<?php 
				if ($estado_us_n!=0) {
                 global $estado_us;
                 $estado_us   = $estado_us_a['estado'];  
 					if ($estado_us=='realizada') {
 						echo "<p>Estado de la lista: $estado_us </p>";
 					}
 					if ($estado_us=='suspendida') {
 						global $ejercicio;  $ejercicio = $estado_us_a['ejercicio'];
 						global $correctos;  $correctos = $estado_us_a['correctos'];
 						echo "<p>Estado de la lista: $estado_us ademas numero del ejercicio en donde se quedo y puntuaje</p>";

 					}
            					     	
                  
            	}
            	else{
                 	    echo "Exito en la lista";
                 }   

			?>


			
			<p>Cuando se presenten ejercicios en donde tengas que ingresar un numero ocupa la aproximacion mas cercana</p>
			<p>Recuerda que puedes guardar tu partida para continuarla en donde te quedaste en caso de que tengas que retirarte</p>
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
