<?php 
	global $materia; $materia="Calculo integral"; 
	error_reporting(E_ALL  ^ E_NOTICE ^ E_WARNING);
	include("../ruta.php");
	include("../config.php");

?>
<!DOCTYPE html>
<html>
<head>
	<title>Lista calculo integral</title>
	<meta name="viewport" content="width=device-width,  initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="description" content="Aquí encontraras una gran variedad de temas relacionados con Calculo integral, temas tales como sumas de Riemann, constante de integración, métodos de integración, integración indefinida, integración definida, calculo del área bajo la curva, calculo de volumen de sólidos de revolución, métodos numéricos de integración, longitud de curvas y mucho mas">
	<meta name="keywords" content="fiseaprede,fiseaprende.com, fise, calculo integral, matematicas bachillerato, matematicas, recomendaciones calculo integracion, ejercicios resueltos de calculo integral, ejercicios de practica de calculo integral, videos de calculo integral, videos de matematicas, contenidos educativos, formularios de calculo integral, conocimientos de calculo integral, apuntes de calculo integral, aplicaciones del calculo integral,limites, continuidad, origen de las derivadas, sumas de Riemann, constante de integracion, metodo de integracion, integracion indefinida, integracion definida, calculo del area bajo la curva, calculo de volumen de solidos de revolucion, metodos numericos de integracion, longitud de curvas"/>
	<link rel="stylesheet" href="../css/bootstrapset.css">
	<link rel="stylesheet" href="../css/list.css">
	<link rel="stylesheet" href="../js/bootstrap.js">
    <link rel="shortcut icon" href="../image/icono.jpg">
</head>
<?php 
	#clases css
	$imagen_logo        = "int";
	$materia_encabezado = "Calculo integral";
	$color_boton        = "rgba(57, 146, 131, .95)";
	$ruta_reco          = "/calculointegral/recoint";
	$ruta_subir         = "/calculointegral/panelint?un=Subir&sub=true";
	$ruta_practicas		= "/calculointegral/panel-practicas";
	$hr                 = "hrint";
	$hover              = "hoverint";
?>
<body>
	<?php include("../scripts/listas/despachador_principal.php"); ?>
</body>
</html>