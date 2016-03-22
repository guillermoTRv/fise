<?php 
	global $materia; $materia="Ecuaciones diferenciales";
	$title_title = "Lista de contenidos de Ecuaciones diferenciales";
	$img_enc    = "ecudif"; 
	$title_enc  = "Ecuaciones diferenciales";
	$ruta_reco  = "/diferenciales/recodiferenciales";
	$ruta_sub   = "/diferenciales/ecuaciones-diferenciales?un=Subir&sub=true";
	$ruta_pract = "/diferenciales/panel-practicas?op=modulos";
	$color_btn  = "rgba(0, 84, 0, .97)";

?>
<style type="text/css">
	.hrma{
		border-color:rgba(0, 84, 0, .55);
        }
        a.toded{
            text-decoration:none;
            color:rgba(0, 84, 0, 1);
            font-weight:bolder;
        }
        a.fened:hover,
        a.fened:focus {
          color: white;
          text-decoration: none;
          background-color:rgba(0, 84, 0, .81);
        }
        .hoverma > li > a:hover,
		.hoverma > li > a:focus {
		  color: #262626;
		  text-decoration: none;
		  background-color:rgba(0, 84, 0, .6);
		}
</style>
<?php include("../scripts/listas_ma/despachador.php"); ?>