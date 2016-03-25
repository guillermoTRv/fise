<div class="panel-heading">
      <div class="row">
          <div class="media">
              <div class="media-left media-middle">
                <img class="img-circle hidden-xs" src="../image/<?php echo $img_mat ?>.jpg" alt="Generic placeholder image" width="70" height="70" style="margin-left:15px;">
              </div>
              <div class="media-body">
                 <h3><?php echo $title; ?></h3>
              </div>
          </div>
      </div>
</div>

<div class="panel-heading">
	<?php
		if (isset($title_esp)) {
			echo $title_esp;
		}
		if (isset($archivo_esp)) {
			include("$archivo_esp");
		}
	 ?>
</div>


<?php 
	if (isset($cont_centro)) {
		  ?>
		    <div class="panel-body fk">
			    
							<div class="container-fluid">
							    <div class="row" style='margin-right:18px;'>
								    <div class="col-xs-12">
									     <div class="outer_div">
										   <!-- Datos ajax Final -->
									     </div>
								    </div>
							    </div>
							</div>
						
			</div><?php
	}
	if (isset($ruta_archivo)) {
		include("$ruta_archivo");
	}
	
?>