	<?php 
          $nivel_n    =  "SELECT nivel FROM nivel_usuario WHERE materia='$materia' and id_usuario";
          $nivel_n_e  =   $conexion->query($nivel_n);
          $nivel_a    =   $nivel_n_e->fetch_array();

          $nivel_usuario   = $nivel_a['nivel'];


    ?>

	<a class='list-group-item fenmat'>&nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-education'></span> 
		Nivel de usuario: 
		<?php 
                           
             if ($nivel_usuario=='') {
                echo "Sin iniciar";  
             }
             else{
                echo $nivel_usuario;
             }
        ?>
	</a>
    <?php include("../scripts/en_accion/redi_listas.php"); ?>
    <a href="#guardar" data-toggle="modal"class='list-group-item fenmat'>&nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-floppy-disk'></span> 
    	Guardar partida</a>
    <?php include("../scripts/en_accion/ruta_soporte.php") ?>
    <div class="modal fade" id="guardar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">Guardar partida</h4>
	      </div>
	      <div class="modal-body">
	        <div id="guardar_p" style='margin-top:12px;margin-bottom:20px;'>
	        	Aun no hay datos para guardar partida <br><br>
	       
	        
	        <button type='button' class='btn btn-default' data-dismiss='modal'>Cerrar</button>
	        <button type='button' class='btn btn-primary' disabled>Guardar</button>
	        </div>
	        <div id="mensaje_guardar"></div>
	      </div>
	      
	    </div>
	  </div>
	</div>
<!--Entonces si guarda partida y sigue al final de la partida, se eliminara el estado de suspendida-->