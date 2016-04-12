<?php
	#falta agregar una funcion para generar un numero aleatorio que se super improbable de que aparezca y con el poder hacer demas funciones
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

	$validacion_b = "SELECT * FROM coment WHERE id_usuario and comentario='$texto_coment'";
	$validacion_e = $conexion->query($validacion_b);
	$validacion_n = mysqli_num_rows($validacion_e);

	if ($validacion_n==0) {
			
			if ($_FILES['image']["error"] > 0){
				$insertar="INSERT INTO coment_disc(id_disc,id_usuario,comentario,materia,link,name_img,type,fecha) values('$id_disc','$id_usuario','$texto_coment',$materia,'$link','','','$fecha')";
				$r=$conexion->query($insertar) or die("ja");
			}		
			else {
			
				$permitidos = array("image/jpg", "image/jpeg", "image/gif", "image/png");
				$limite_kb = 7000;

				if (in_array($_FILES['image']['type'], $permitidos) && $_FILES['image']['size'] <= $limite_kb*1024){
				global $yes;
				$yes="true";
			    }
			    if (isset($yes)) {
			    	    $aleatorio=rand(100,1999);
		        		$rutasubir="../../image/" .$aleatorio;
		                $resultado = @move_uploaded_file($_FILES['image']["tmp_name"], $rutasubir.".jpg");
							if ($resultado){
								
								$nombre_imagen=$aleatorio;	
								$insertar="INSERT INTO retos_pack(pregunta,respuesta,placeholder,mens_salida,img) values('$answer','$resp','$place','$mens','$nombre_imagen')";
								$r=$conexion->query($insertar) or die("ja");
								header("Location:$ruta/ad/administrador.php?ty=retos&mens=todo_se_subio_perfectamente");
								

							} 
							else{
								echo "no";
							}
			    }
		    }
	}
	else{
		$mensaje="8"

		if ($materia=='Calculo diferencial') {
 			$indice_mat="/calculodif/panel-practicas?op=discusion-actual&mens=$mensaje";
 		}
	 	if ($materia=='Calculo integral') {
	 		$indice_mat="/calculointegral/panel-practicas?op=discusion-actual&mens=$mensaje";
	 	}
	 	if ($materia=='Calculo avanzado') {
	 		$indice_mat="/c-avanzado/panel-practicas?op=discusion-actual&mens=$mensaje";
	 	}
	 	if ($materia=='Algebra lineal') {
	 		$indice_mat="/lineal/panel-practicas?op=discusion-actual&mens=$mensaje";
	 	}
	 	if ($materia=='Ecuaciones diferenciales') {
	 		$indice_mat="/diferenciales/panel-practicas?op=discusion-actual&mens=$mensaje";
	 	}

		header("Location: $ruta/$indice_mat");
	}

?>