<?php
	include("../../../../config.php"); 
	error_reporting(E_ALL ^ E_NOTICE);
	$name				=	$_POST['name'];
	$clasificacion		=	$_POST['clasificacion'];
	$nivel				=	$_POST['nivel'];
	$materia			=	$_POST['materia'];
    $btn_uno ="<button type='button' id='btn-rc' value='enviar' class='btn btn-success btn-sm'>Enviar datos</button>";
    $btn_dos ="<button type='button' id='btn-ahora_rc' value='enviar' class='btn btn-success btn-sm'>Crear lista</button>";

		if ($name!='' and $clasificacion!='' and $nivel!='' and $materia!='') {
			
			$validacion="SELECT COUNT(*) FROM l_prc WHERE name_lprc='$name' and materia='$materia' ";
			$e_v=$conexion->query($validacion);
			$a_v=$e_v->fetch_array();
			$vbn=$a_v[0];
			if ($vbn==0) {
				
					$form_n="&nbsp;&nbsp;<form id='crear_si' method='POST' enctype='multipart/form-data'>
							<input type='hidden' value='$name' name='name'>
							<input type='hidden' value='$clasificacion' name='clasificacion'>
							<input type='hidden' value='$nivel' name='nivel'>
							<input type='hidden' value='$materia' name='materia'>
							".$btn_dos."</form>";

					$form_a="<form style='margin-top:20px;' id='cancelar' method='POST' enctype='multipart/form-data'> <input type='hidden' value='true' name='t'> <button type='button' id='btn-cancel' value='enviar' class='btn btn-danger btn-sm'>Cancelar</button></form>";

					$mens="<p style='margin-top:10px;'>Estos son los datos que ingresaste y que se iran a subir, puedes corregir aprentando el boton cancelar</p><p>Titulo de lista: $name</p> <p>Clasificacion: $clasificacion</p> <p>Nivel: $nivel</p> <p>Materia: $materia</p><div class='row'><div class='col-md-1'>".$form_n."</div><div class='col-md-2'>".$form_a."</div></div>";
					$input="";
					$r=[	
						'uno' =>$mens,
						'dos' =>$input
					];
					echo json_encode($r);
			}

			else{
				$mens="<p style='margin-top:10px;'>Los datos claves que se ingresan aqui ya habian sido registrados antes</p>".$btn_uno;
				$input="";
				$r=[	
					'uno' =>$mens,
					'dos' =>$input
				];
				echo json_encode($r);
			}

		}
		else{
			$mens="<p style='margin-top:10px;'>No se escribieron los datos suficientes</p>".$btn_uno;
				$input="";
				$r=[
					'uno'=>$mens,
					'dos'=>$input
				];
			echo json_encode($r);
		}

?>