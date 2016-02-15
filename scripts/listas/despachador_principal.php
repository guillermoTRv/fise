
	<?php 
		#falta el google analitics
        include("../header.php");
    ?>
	<?php #include("../mensajesbas.php"); ?>
	<div class="container-fluid">
		<div class="row">
			
			<div class="col-md-10 col-md-offset-1" >
				<div class="panel panel-default fk" style="border-radius:10px;">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-1 col-md-offset-2 hidden-sm hidden-xs">
                                   <img class="img-circle" src="../image/<?php echo $imagen_logo ?>.jpg" alt="Generic placeholder image" width="80" height="80" border:"2px solid">
                            </div>
							<div class="col-md-5 col-sm-6">
								<h1>Indice de <?php echo $materia_encabezado; ?></h1>
							</div>
							<div class="col-md-3 col-sm-2">
								<div class="dropdown" style="margin-top:24px;float:rigth;">
									 <button style="max-width:200px;background-color:<?php echo $color_boton; ?>;color:white;" class="btn dropdown-toggle " type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
									 	Mas de la materia
									    <span class="caret"></span>
									 </button>
								 		<ul class='dropdown-menu <?php echo $hover ?>' aria-labelledby='dropdownMenu1'>
                                            <li><a href="<?php echo $ruta.$ruta_reco; ?>">Recomendaciones</a></li>
								 			<li><a href="<?php echo $ruta.$ruta_subir; ?>">Subir contenido</a></li>
								 			<li><a href="<?php echo $ruta.$ruta_practicas;?>">Practicas</a></li>	
								 		</ul>
								</div>
							</div>
						</div>
						
						<hr class="<?php echo $hr ?>">
						<div class="row">
    	                	<?php include("../scripts/listas/principal_listado.php"); ?>	
						</div>	
                        <hr class="<?php echo $hr ?>">
						<?php include("../scripts/recomend/reco_vista_listas.php"); ?>
						<hr class="<?php echo $hr ?>">

                        <div class="row">
                          <div class='col-md-10 col-md-offset-1'>
                            <h3>Contenidos compartidos recientemente</h3>
                          </div>
                        </div>  

                        <div class="row">
                            <?php include("../scripts/listas/recientes.php"); ?>
                        </div>
                        <hr class="<?php echo $hr ?>">
                        <br><br>
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php include("../footer_fise.php") ?>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="../js/bootstrap.min.js"></script>