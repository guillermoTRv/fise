	<a class='list-group-item fenmat'>&nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-education'></span> 
		Nivel de usuario: Jedi</a>
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
	        <div id='mensaje_guardar'></div>
	      </div>
	      
	    </div>
	  </div>
	</div>
<!--Entonces si guarda partida y sigue al final de la partida, se eliminara el estado de suspendida-->