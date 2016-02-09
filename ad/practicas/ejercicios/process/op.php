<?php 
	
	include("../../../../config.php");
	
	error_reporting(E_ALL^ E_NOTICE);
	
	$id_ejerc      =     $_POST['id_ejerc'];
	$texto_op      =     $_POST['texto_op'];
	$imagen        =     $_FILES['img_op']['name'];
	$campo_normal  =    "<div class='form-group'>
						  <label class='col-sm-4 control-label'>Texto del opcion</label>
							<div class='col-sm-8'>
								<input class='form-control' type='text' value='$texto_op' name='texto_op'>
							</div>
						 </div>";

	if ($texto_op!='' or $_FILES['img_op']['name']!='') {
		$validacion_uno="SELECT COUNT(*) FROM opcion WHERE id_ejerc='$id_ejerc' and text_opt='$texto_op'";
		$e_validacion_uno=$conexion->query($validacion_uno);
		$a_validacion_uno=$e_validacion_uno->fetch_array();


		if ($a_validacion_uno[0]==0) {
			
			$campo_hidden="<div class='form-group'>
					  <label class='col-sm-4 control-label'>Texto del opcion</label>
						<div class='col-sm-8'>
							<input disabled class='form-control' type='text' placeholder='$texto_op'>
							<input type='hidden' value='$texto_op' name='texto_op'>
						</div>
					</div>";

			$vista="
			<div class='col-sm-5 col-sm-offset-4'>
				<p><em> Estos son los datos que introduciste </em></p>
				<p>Texto: $texto_op</p>
				<p>Imagen: $imagen</p>
				<button type='button' id='btnop_subir' value='enviar' class='btn btn-sm btn-success'>
					Registrar datos
				</button>
				<br><br><br><br><br>
			</div>
			";

			$r=[
				'wauno' => $campo_hidden,
				'wados' => $vista
			];

			echo json_encode($r);

		}
		else{
			$vista="
				<div class='col-sm-5 col-sm-offset-4'>
					<button type='button' id='btnop' value='enviar' class='btn btn-success btn-sm'>Intentar de nuevo</button>
					<p><em> Estas introduciendo un texto que ya se habia registrado antes para una opcion </em></p>
				</div><br>
				";
			$r=[
				'wauno' => $campo_normal,
				'wados' => $vista
			];

			echo json_encode($r);
		}

	}
	else{
		$vista="
			    <div class='col-sm-5 col-sm-offset-4'>
					<button type='button' id='btnop' value='enviar' class='btn btn-success btn-sm'>Intentar de nuevo</button>
					<p><em> No se lleno el campo de texto </em></p>
				</div><br>
			    ";
		$r=[
				'wauno' => $campo_normal,
				'wados' => $vista
			];

		echo json_encode($r);

	}

?>
