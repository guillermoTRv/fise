<?php 
	include("../../../scripts/clean/funcion_limpiar.php");
	include("../../../ruta.php");
	include("../../../config.php");

	$id_lprc         = $_POST['lista'];
	$materia         = $_POST['materia'];
	$name_lprc       = $_POST['name'];
	$cambio          = "UPDATE l_prc SET prod = 'si' WHERE id_lprc='$id_lprc'";
	$ejecutar_cambio = $conexion->query($cambio);


	$url_name = urls_amigables($name_lprc);

	if ($materia=='Calculo diferencial') {
		$redi_listas = $ruta."/calculodif/practica?prc=$url_name";
	}
	if ($materia=='Calculo integral') {
		$redi_listas = $ruta."/calculointegral/practica?prc=$url_name";
	}
	if ($materia=='Calculo avanzado') {
		$redi_listas = $ruta."/c-avanzado/practica?prc=$url_name";
	}
	if ($materia=='Algebra lineal') {
		$redi_listas = $ruta."/lineal/practica?prc=$url_name";
	}
	if ($materia=='Ecuaciones diferenciales') {
		$redi_listas = $ruta."/diferenciales/practica?prc=$url_name";
	}

	session_start();
	
	$_SESSION['usuario']     =  "villagran_gg@hotmail.com";
	$_SESSION['id_usuario']  =   "1";
	$_SESSION['name_user']   =   "memin";
	$us                      =    $_SESSION['id_usuario'];


	header("Location: $redi_listas");

?>