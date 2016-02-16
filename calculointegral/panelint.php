<?php 
    global $metaria; $materia="Calculo integral";

    error_reporting(E_ALL ^ E_NOTICE ^ E_WARNING);

    include("../config.php"); 

   	include("../ruta.php"); 

    include("../scripts/get.php"); 
    
    include("../scripts/clean/unidadytema_limpias.php");

    include("../scripts/clean/redirecciones_get.php");

    include("../input_toquen.php");

    if ($cont!=''){include('../scripts/seo/seo_contador.php');}
   
 ?>
<!DOCTYPE html>
<html>
<head>
    <title><?php include("../scripts/seo/seo_title.php"); ?></title>
    <meta name="viewport" content="width=device-width,  initial-scale=1.0">
           <?php include("../scripts/seo/seo_metades.php"); ?>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="shortcut icon" href="../image/icono.jpg">
    <link rel="stylesheet" href="../css/bootstrapset.css">
    <link rel="stylesheet" href="../css/port.css">
           <?php include("../scripts/seo/js_subir_imagen.php"); ?>
    <link rel="stylesheet" href="../js/bootstrap.js">
    <script src="http://code.jquery.com/jquery.js"></script>
    <style type="text/css">
		    .hovermat > li > a:hover,
			.hovermat > li > a:focus {
			  color: #262626;
			  text-decoration: none;
			  background-color:rgba(57, 146, 131, .35);
			}
		    .fenmat{
		      margin-bottom:120px;   
		    }
		    a.fenmat:hover,
			a.fenmat:focus {
			  color: white;
			  text-decoration: none;
			  background-color:rgba(57, 146, 131, 1);
			}
		    .amounmat{
		            color:rgba(57, 146, 131, .95);
		    }
		    a.amounmat:hover{
		            color:rgba(57, 146, 131, .95);
		            text-decoration: none;   
		    }
			.infomat{
		            color:rgba(57, 146, 131, .95);font-size:90%;font-weight:bolder;
		    }    
		    a.infomat:hover{
		            color:rgba(57, 146, 131, .95);
		            text-decoration:none;
		    }
    </style>
    <?php  
		$css_b       ="style='max-width:200px;background-color:rgba(57, 146, 131, .95);color:white;'";
		$imagen_logo ="int";
	?>
</head>

<body>
    <?php include("../scripts/panel_contenidos/despachador_panel_contenidos.php"); ?>
</body>
</html>		
?>