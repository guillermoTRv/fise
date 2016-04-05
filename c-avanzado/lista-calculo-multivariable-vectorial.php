<?php 
	global $materia; $materia="Calculo avanzado";
	$title_title = "Lista de contenidos de Calculo multivariable y vectorial";
	$img_enc    = "cmv"; 
	$title_enc  = "Calculo avanzado";
	#$ruta_reco  = "/c-avanzado/recocalculo";
	$ruta_sub   = "/c-avanzado/panel-calculoavanzado?un=Subir&sub=true";
	$ruta_pract = "/c-avanzado/panel-practicas?op=modulos";
	$color_btn  = "rgba(151, 84, 45, 1)";
	$bord_rec	= "borderdefavn";

?>
<style type="text/css">
	.hrma{
        }
		a.fencalc:hover,
        a.fencalc:focus {
        color: white;
        text-decoration: none;
        background-color:rgba(151, 84, 45, .9);
      	}
        a.todcalc{
            text-decoration:none;
            color:rgba(151, 84, 45, 1);
            font-weight:bolder;
        }
        .hoverma > li > a:hover,
		.hoverma > li > a:focus {
		  color: #262626;
		  text-decoration: none;
		  background-color:rgba(151, 84, 45, .6);
		}
</style>
<?php include("../scripts/listas_ma/despachador.php"); ?>

