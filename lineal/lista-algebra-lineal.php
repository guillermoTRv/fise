<?php 
	global $materia; $materia="Algebra lineal";
	$title_title = "Lista de contenidos de Álgebra lineal";
	$img_enc    = "lineal"; 
	$title_enc  = "Álgebra lineal";
	$ruta_reco  = "/lineal/recolineal";
	$ruta_sub   = "/lineal/panel-algebra-lineal?un=Subir&sub=true";
	$ruta_pract = "/lineal/panel-practicas";
	$color_btn  = "rgba(123, 132, 218, 1)";

?>
<style type="text/css">
	.hrma{
		border-color:rgba(123, 132, 218, .55);
        }
		a.fenlineal:hover,
        a.fenlineal:focus {
          color: white;
          text-decoration: none;
          background-color:rgba(123, 132, 218, .81);
        }
        a.todlin{
            text-decoration:none;
            color:rgba(123, 132, 218, 1);
            font-weight:bolder;
        }
        .hoverma > li > a:hover,
		.hoverma > li > a:focus {
		  color: #262626;
		  text-decoration: none;
		  background-color:rgba(123, 132, 218, .6);
		}
</style>
<?php include("../scripts/listas_ma/despachador.php"); ?>