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
				$ruta_c = "$ruta/calculodif/panel-calculodiferencial?$gett";
			break;
		
		case 'Calculo integral':
				$ruta_c = "$ruta/calculointegral/panel-calculointegral?$gett";
			break;

		case 'Calculo avanzado':
				$ruta_c = "$ruta/c-avanzado/panel-calculoavanzado?$gett";
				break;	

		case 'Algebra lineal':
				$ruta_c = "$ruta/lineal/panel-algebra-lineal?$gett";
			break;

		case 'Ecuaciones diferenciales':
				$ruta_c = "$ruta/diferenciales/panel-ecuaciones-diferenciales?$gett";
			break;

	}
?>