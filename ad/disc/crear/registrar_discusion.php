<?php 
	include("../../../config.php");
	include("../../../ruta.php");
	error_reporting(E_ALL ^ E_NOTICE ^ E_WARNING) ;
	$texto     = $_POST['texto'];
	$materia   = $_POST['materia'];

	date_default_timezone_set('America/Mexico_City');
    $fecha                =  date("Y-m-d H:i:s");


    $validacion="SELECT * FROM discusiones WHERE materia='$materia' and texto='$texto'";
    $val_e     =$conexion->query($validacion);

    $val_n     =mysqli_num_rows($val_e);

    if ($val_n != 0) {
    	echo "Es discusion ya estaba registrada anteriormente para $materia";
    }
    if ($val_n == 0) {
	    	if ($_FILES['img_disc']["error"] > 0){
			$pues="no hay imagenes ";
			}		
			else {
			
				$permitidos = array("image/jpg", "image/jpeg");
				$limite_kb = 7000;

				if (in_array($_FILES['img_disc']['type'], $permitidos) && $_FILES['img_disc']['size'] <= $limite_kb*1024){
				global $yes;
				$yes="true";
			    }
			    if (isset($yes)) {
			    	    $aleatorio=rand(100,100000);
		        		$rutasubir="../../../img_disc/" .$aleatorio;
		                $resultado = @move_uploaded_file($_FILES['img_disc']["tmp_name"], $rutasubir.".jpg");
							if ($resultado){
								
								$nombre_imagen=$aleatorio;	
								$insertar="INSERT INTO discusiones(materia,texto_disc,alta,name_img,fecha) values('$materia','$texto','no','$nombre_imagen','$fecha')";
								$r=$conexion->query($insertar) or die("ja");
								header("Location:$ruta/ad/administrador.php?ty=discusiones&mens=todo_se_subio_perfectamente");
								

							} 
							else{
								echo "Algo fallo al subir la imagen";
							}
			    }
		    }	
    }

	
?>