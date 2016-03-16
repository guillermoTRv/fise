<?php
	include("../ruta.php");
	session_start();
	session_unset();
	session_destroy();
	header("Location:$ruta");
?>