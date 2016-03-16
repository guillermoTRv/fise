<?php
	
	if ($u!='' && $t=='' && $by=='' && $cons=='' && $prf=='' && $cont=='' && $sub=='') {
		include("../scripts/panel_contenidos/paginacion/page_unmat.php");
	}
	if ($u!='' && $t!='' && $by=='' && $cons=='' && $prf=='' && $cont=='' && $sub=='') {
		include("../scripts/panel_contenidos/paginacion/page_tmmat.php");
	}
	if ($u!='' && $t=='' && $by!='' && $cons=='' && $prf=='' && $cont=='' && $sub=='') {
		include("../scripts/panel_contenidos/paginacion/page_bymat.php");
	}
	if ($u!='' && $t=='' && $by=='' && $cons!='' && $prf=='' && $cont=='' && $sub=='') {
		include("../scripts/panel_contenidos/paginacion/page_consmat.php");
	}
	if ($u!='' && $t=='' && $by=='' && $cons=='' && $prf!='' && $cont=='' && $sub=='') {
		include("../scripts/panel_contenidos/paginacion/page_prfmat.php");
	}
	#if ($u=='Subir' && $t=='' && $by=='' && $cons=='' && $prf=='' && $cont=='' && $sub!=''){
	#	include("../scripts/panel_contenidos/subircont.php");
	#}
	if ($u!='' && $tm=='' && $by=='' && $cons=='' && $prf=='' && $cont=='' && $sub!=''){
		include("../scripts/panel_contenidos/subircont.php");
	}
	if ($cont!='') {
		include("vista_contenido_principal.php");
	}

?>