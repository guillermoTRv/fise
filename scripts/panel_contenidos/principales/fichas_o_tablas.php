<?php
	# un tm by cons prf
	if ($u!='' && $t=='' && $by=='' && $cons=='' && $prf=='') {
        $ruta_v= "?un=$u";
    }

    if ($tema!='' && $by=='' && $cons=='' && $prf=='') {
     	$ruta_v= "?un=$u&tm=$t";    
    }

    if ($tema=='' && $by!='' && $cons=='' && $prf=='') {
        $ruta_v= "?un=$u&by=$by";
    }

    if ($tema=='' && $by=='' && $cons!='' && $prf=='') {
        $ruta_v= "?un=$u&cons=ejercicio-problema";
    }

    if ($tema=='' && $by=='' && $cons=='' && $prf!='') {
        $ruta_v= "?un=$u&prf=prf";
    }
	

	if ($tab=='') {
		 $opcion_v = "Ver por tabla";
		 $tab_v="&tab=true";
	}
	if ($tab!=''){
		 $opcion_v = "Ver por fichas";
		 $tab_v="";
	}

	$ruta_completa = $ruta_v.$tab_v;
	$fichatabla="<a class='amounmat' href='$ruta_completa'><strong>$opcion_v</strong></a>";
?>