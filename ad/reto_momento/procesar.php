<?php 
  	
	$answer  =  $_POST['pregunta'];
	$resp    =  $_POST['resp'];
	$place   =  $_POST['placeholder'];
	$mens    =  $_POST['mens'];
	
	if ($_FILES['image']["error"] > 0){
		$pues="no hay imagenes ";
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
						include("../../config.php");
						include("../../ruta.php");
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
?>