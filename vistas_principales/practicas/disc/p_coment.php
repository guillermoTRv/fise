<?php
	#falta agregar una funcion para generar un numero aleatorio que se super improbable de que aparezca y con el poder hacer demas funciones
	#las validaciones estaria mejor hacerlas por js
	#queda pendiente lo de las imagenes
	date_default_timezone_set('America/Mexico_City');
    $fecha        =  date("Y-m-d H:i:s");
	include("../../../evaluar_toquen.php");
	include("../../../config.php");
	include("../../../ruta.php");

	$texto_coment = $_POST['comentario_txt']; 
	$link         = $_POST['link_txt'];
	$materia      = $_POST['mat'];
	$id_usuario   = $_POST['uscont'];
	$id_disc      = $_POST['id_disc'];
	
	$_FILES['image']["name"]; 

	$validacion_b = "SELECT * FROM coment_disc WHERE id_usuario='$id_usuario' and comentario='$texto_coment'";
	$validacion_e = $conexion->query($validacion_b);
	$validacion_n = mysqli_num_rows($validacion_e);

	if ($validacion_n==0) {
			
			if ($_FILES['image']["error"] > 0){
				$insertar="INSERT INTO coment_disc(id_disc,id_usuario,comentario,materia,link,name_img,type,fecha) values('$id_disc','$id_usuario','$texto_coment','$materia','$link','','','$fecha')";
				$r=$conexion->query($insertar);
				$mensaje = 6;
				include("redi_mens.php");
			}		
			else {
			
				$permitidos = array("image/jpg", "image/jpeg");
				$limite_kb = 7000;

				if (in_array($_FILES['image']['type'], $permitidos) && $_FILES['image']['size'] <= $limite_kb*1024){
				global $yes;
				global $tipo_img; $tipo_img=$_FILES['image']['type'];
				$yes="true";
			    }
			    if (isset($yes)) {
			    	    $aleatorio=rand(100,1999);
			    	    $tipo_img_m         = substr($tipo_img, 6, 4);
		        		$rutasubir="../../../img_coment_disc/" .$aleatorio;
		                $resultado = @move_uploaded_file($_FILES['image']["tmp_name"], $rutasubir.".jpg");
							if ($resultado){
								
								$nombre_imagen=$aleatorio;	
								$insertar="INSERT INTO coment_disc(id_disc,id_usuario,comentario,materia,link,name_img,type,fecha) values('$id_disc','$id_usuario','$texto_coment','$materia','$link','$aleatorio','$tipo_img_m','$fecha')";
								$r=$conexion->query($insertar)  or die("no ammes");
								$mensaje = 6;
								include("redi_mens.php");
								

							} 
							else{
								#mensaje de error
								$mensaje = 10;
								include("redi_mens.php");
							}
			    }
		    }
	}
	else{
		$mensaje="8";

		include("redi_mens.php");
	}

?>