
	<?php 
		#include_once("../analyticstracking.php"); 
		include("../header.php");
		#include("../mensajesbas.php");
	?>
    <div class="container-fluid">
    	<div class="row">	
            <div class="col-md-3 columleft">
    			<div class="panel panel-default fk">
                    <div class="panel-body">
                        <div class="panel panel-default forde">
                            <center><p class="sisbus"><strong>Sistema de busqueda</strong></p></center>
                        <?php 
                            include("../scripts/panel_contenidos/principales/boton_mat.php");
                         ?>
                        </div>
                        <?php 
                            include("../scripts/panel_contenidos/principales/indicadores_mat.php")
                         ?>
                        
                    </div>
    				

    			</div>
    		</div>

    		<div class="col-md-9 columrigth">
    			<div class="panel panel-default">
    				<div class="panel-heading">
                        <div class="row">
                            <div class="media">
                                <div class="media-left media-middle">
                                    <img class="img-circle hidden-xs" src="../image/<?php echo $imagen_logo; ?>.jpg" alt="Generic placeholder image" width="70" height="70" style="margin-left:15px;">
                                </div>
                                <div class="media-body">
                                    <?php include("../scripts/panel_contenidos/principales/name_pencbas.php"); ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-heading">
                        <?php 
                            if ($cont=='' && empty($sub)){
                                include("../scripts/panel_contenidos/principales/datos_mat.php");
                            } 
                        ?>

                    </div>
    			    
    			    <div class="panel-body fk" style="margin:13px 40px 13px 13px;">

                    <?php include("../scripts/panel_contenidos/controladores_mat.php") ?>
                    <p></p>
    			    </div>
    			    
    			</div>
    		</div>
    	</div>
    </div>
    <?php include('../footer_fise.php'); ?>

    <script src="http://code.jquery.com/jquery.js"></script>
	<script src="../js/bootstrap.min.js"></script>