<?php 
	error_reporting(E_ALL  ^ E_NOTICE ^ E_WARNING);
	include("../ruta.php");
	include("../config.php");
?>
<!DOCTYPE html>
<html>
<head>
	<title>Índice de <?php echo $name_title; ?></title>
	<meta name="viewport" content="width=device-width,  initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="description" content="<?php echo $name_description; ?>">
	<link rel="stylesheet" href="../css/bootstrapset.css">
	<link rel="stylesheet" href="../css/list.css">
	<link rel="stylesheet" href="../js/bootstrap.js">
    <link rel="shortcut icon" href="../image/icono.jpg">
</head>
<body>
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
								<h1>Índice de <?php echo $name_title; ?></h1>
							</div>
							<div class="col-md-3 col-sm-2">
								<div class="dropdown" style="margin-top:24px;float:rigth;">
									 <button style="max-width:200px;background-color:<?php echo $color_boton; ?>;color:white;" class="btn dropdown-toggle " type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
									 	Más de la materia
									    <span class="caret"></span>
									 </button>
								 		<ul class='dropdown-menu <?php echo $hover ?>' aria-labelledby='dropdownMenu1'>
                                            <li><a href="<?php echo $ruta.$ruta_reco; ?>">Recomendaciones</a></li>
								 			<li><a href="<?php echo $ruta.$ruta_subir; ?>">Subir contenido</a></li>
								 			<?php 
								 				if ($materia=='Calculo diferencial' or $materia=='Calculo integral') {
								 					echo "<li><a href='$ruta"."$ruta_practicas'>Practicas</a></li>";
								 				}
								 				
								 			?>
								 		</ul>
								</div>
							</div>
						</div>
						
						<hr class="<?php echo $hr ?>">
						<div class="row">
    	                	<?php include("../scripts/listas/principal_listado.php"); ?>	
						</div>	
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
</body>
</html>