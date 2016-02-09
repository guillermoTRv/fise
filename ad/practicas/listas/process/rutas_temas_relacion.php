<?php 
	$unidad_limpia = urls_amigables($unidad);

	if ($tema=='') {
		global $gett;
		$gett="un=$unidad_limpia";
	}
	if($tema!=''){
		$tema_limpio = urls_amigables($tema);
		global $gett;
		$gett="un=$unidad_limpia&tm=$tema_limpio";
	}

	switch ($materia) {
		case 'Calculo diferencial':
				$ruta_c = "$ruta/calculodif/lista-diferencial?$gett";
			break;
		
		case 'Calculo integral':
				$ruta_c = "$ruta/calculointegral/lista-integral?$gett";
			break;

		case 'Calculo avanzado':
				$ruta_c = "$ruta/c-avanzado/lista-calculo?$gett";
				break;	

		case 'Algebra lineal':
				$ruta_c = "$ruta/lineal/lista-algebralineal?$gett";
			break;

		case 'Ecuaciones diferenciales':
				$ruta_c = "$ruta/diferenciales/lista-diferenciales?$gett";
			break;

	}
?>