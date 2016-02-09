<?php 	
	$t=$_POST['t'];
	$btn ="<button type='button' id='btn-rc' value='enviar' class='btn btn-success btn-sm'>Crear lista</button>";
	if ($t=='true') {
		$mens="<p style='margin-top:10px;'>La creacion de la lista fue cancelada</p>".$btn;
			$input="";
			$r=[
				'uno' =>$mens,
				'dos' =>'',
			];
			echo json_encode($r);
		}
				
		
?>