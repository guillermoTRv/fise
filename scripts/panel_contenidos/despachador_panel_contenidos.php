
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script>
    $(document).ready(function(){
        load(1);
    });
 
    function load(page){
        var parametros = {
            "action":"ajax",
            "page":page,
            "materia":"<?php echo $materia; ?>",
            "unidad":"<?php echo $un; ?>",
            "tema":"<?php echo $tm; ?>",
            "by":"<?php echo $by; ?>",
            "cons":"<?php echo $cons; ?>",
            "prf":"<?php echo $prf; ?>",
            "tab":"<?php echo $tab; ?>"
            };
        $.ajax({
            url:'../paginacion_contenidos.php',
            data: parametros,
             
            success:function(data){
                $(".outer_div").html(data).fadeIn('slow');
            }
        })
    }
    </script>