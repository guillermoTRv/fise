<?php 
	$permitidos = array("image/jpg", "image/jpeg", "image/gif", "image/png");
		$limite_kb = 7000;

		if (in_array($_FILES['image']['type'], $permitidos) && $_FILES['image']['size'] <= $limite_kb*1024){
		global $yes;
		$yes="true";
	    }
	    if (isset($yes)) {
	    	    $aleatorio =rand(100,1999);
        		$rutasubir ="../../../../img_pract/" .$aleatorio.$id_del_ejercicio;
                $resultado = @move_uploaded_file($_FILES['image']["tmp_name"], $rutasubir.".jpg");
					if ($resultado){
						$nombre_imagen=$aleatorio.$id_del_ejercicio;	
						$insertar="INSERT INTO img_ejerc(id_ejerc,name_img) values('$id_del_ejercicio','$nombre_imagen')";
						$r=$conexion->query($insertar) or die("ja");						

					} 
					else{
						echo "no";
				}
	}
?>