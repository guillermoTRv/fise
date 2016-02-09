<?php 
	include("../../../../config.php");
	$scriph				=	"<script type='text/javascript'>window.onunload = window.onbeforeunload = function(){return 'Ud esta abandonando este sitio y ciertos datos fueron creados, lo que afecta el funcionamiento de la bd';};</script>";

	$name				=	$_POST['name'];
	$clasificacion		=	$_POST['clasificacion'];
	$nivel				=	$_POST['nivel'];
	$materia			=	$_POST['materia'];
	date_default_timezone_set('America/Mexico_City');
    $fecha 				=	date("Y-m-d H:i:s");
    $prod               =   "no";
	$mens="$scriph<p style='margin-top:10px;'>Los datos se han subido exitosamente</p>";
	$insertar="INSERT INTO l_prc(name_lprc,materia,prod,clasf,nivel,num_ejerc,frc_creacion) VALUES('$name','$materia','$prod','$clasificacion','$nivel',0,'$fecha')";
	$e_i=$conexion->query($insertar) or die("Hubo un problema al insertar");


	$traer_id="SELECT id_lprc,name_lprc,materia FROM l_prc WHERE name_lprc='$name' and materia='$materia'";
	$e_traer=$conexion->query($traer_id) or die("hi hi hi hi");
	$tres=$e_traer->fetch_array();
	$id_l=$tres[0];

	include("../../../../limpiar.php");
	$name_lista_limpio = urls_amigables($name);
	$insertar_url    = "INSERT INTO practicas_url(name_lprc,name_limpio) VALUES('$name','$name_lista_limpio')";
	$insertar_url_e  = $conexion->query($insertar_url) or die("sss");


	$inpt   ="<input type='hidden' value='$id_l' name='id'>";

		$rm=[	
			'uno' =>$mens,
			'dos' =>$inpt
		];
		echo json_encode($rm);
?>