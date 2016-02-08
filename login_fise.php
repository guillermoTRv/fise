<?php 
    include("config.php");

	$correo_fise  =   addslashes(htmlspecialchars(strip_tags(trim($_POST['correof_txt']))));
	$pass_fise    =   addslashes(htmlspecialchars(strip_tags(trim($_POST['passf_txt']))));
	$url          =   addslashes(htmlspecialchars(strip_tags(trim($_POST['url_txt']))));


	$login_b  =   "SELECT COUNT(*) FROM usuariosfise WHERE correo_user='$correo_fise' and pass_user='$pass_fise'";
	$login_e  =   $conexion->query($login_b) or die('n');
	$login_a  =   $login_e->fetch_array();
	
	if ($login_a[0]==1) {
		session_start();
		$_SESSION['usuario']=$correo_fise;
		$id_b       =   "SELECT id_user,correo_user,name_user FROM usuariosfise WHERE correo_user='".$_SESSION['usuario']."'";
		$id_e       =    $conexion->query($id_b);
		$id_a       =    $id_e->fetch_array();
 
        $_SESSION['id_usuario']  =   $id_a[0];
		$_SESSION['name_user']   =   $id_a[2];

        date_default_timezone_set('America/Mexico_City');
    	$fecha      =  date("Y-m-d H:i:s");
		$us         =  $_SESSION['id_usuario'];
		#$insertar   =  "INSERT INTO logins(id_user,fecha) VALUES('$us','$fecha')";
		#$eje_inst   =  $conexion->query($insertar) or die("que paso");
	
		header("Location: $url");
		return true;


	}

?>