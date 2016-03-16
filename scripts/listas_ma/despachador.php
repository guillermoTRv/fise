<?php include("../ruta.php"); ?>
<?php include("../config.php"); ?>
<?php include("../scripts/clean/funcion_limpiar.php"); ?>
<?php error_reporting(E_ALL ^ E_WARNING); ?>
<!DOCTYPE html>
<html>
<head>
	<title><?php echo $title_title; ?></title>
	<meta name="viewport" content="width=device-width,  initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<link rel="stylesheet" href="../css/bootstrapset.css">
	<link rel="stylesheet" href="../css/list.css">
	<link rel="stylesheet" href="../js/bootstrap.js">
    <link rel="shortcut icon" href="../image/icono.jpg">
	<style type="text/css">
        a.colqa{
            text-decoration:none;
            color:black;
        }
		a.avn{
			text-decoration:none;
			color:black;
		}
		a.avn:hover{
			text-decoration:none;
		}

		
	</style>
</head>
<body> 
	<?php 
        include("../header.php");
    ?>
	<div class="container-fluid">
		<div class="row">
			
			<div class="col-md-10 col-md-offset-1" >
				<div class="panel panel-default fk" style="border-radius:10px;">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-1 col-md-offset-2 hidden-sm hidden-xs">
                                   <img class="img-circle" src="../image/<?php echo $img_enc; ?>.jpg" alt="Generic placeholder image" width="80" height="80" border:"2px solid">
                            </div>
							<div class="col-md-5 col-sm-6">
								<h1>Índice de <?php echo $title_enc; ?></h1>
							</div>
							<div class="col-md-3 col-sm-2">
								<div class="dropdown" style="margin-top:24px;float:rigth;">
								 <button style="max-width:200px;background-color:<?php echo $color_btn?>;color:white;" class="btn dropdown-toggle " type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Más de la materia
								     <span class="caret"></span>
								 </button>
								 		<ul class='dropdown-menu hoverma' aria-labelledby='dropdownMenu1'>
								 			<li><a href="<?php echo $ruta.$ruta_reco; ?>">Recomendaciones</a></li>
								 			<li><a href="<?php echo $ruta.$ruta_sub; ?>">Subir contenido</a></li>
								 			<li><a href="<?php echo $ruta.$ruta_pract; ?>">Practicas</a></li>
								 		</ul>
								</div>
							</div>
						</div>
						
						<hr class="hrma">
						<div class="row">
						<div class="col-md-8 col-md-offset-2 col-xs-offset-0">
							<div class="panel-group pan" id='accordion' role='tablist'> 
								
								<?php include("apartados.php"); ?>


								
							</div>
						</div>

						</div>	
						<hr class="hrma">






						<div class="row">
							<div class="col-md-8 col-md-offset-1">
								<?php include("../scripts/recomend/reco_vista_listas.php"); ?>                          
							</div>
						</div>
						
					        	
						<hr class="hrma">
                        <div class="row">
                        	<div class="col-md-8 col-md-offset-1">
	                            <h3>Recientes</h3>
                        	</div>
                        </div>  

                        <div class="row">

                            <?php include("../scripts/listas/recientes.php"); ?>
                            
    
                        </div>
                        <hr class="hrma">
                        <br><br>
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php include("../footer_fise.php") ?>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="../js/bootstrap.min.js"></script>
</body>
</html>