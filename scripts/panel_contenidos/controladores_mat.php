<?php
	/*
	if ($u!='' && $t=='' && $by=='' && $cons=='' && $prf=='' && $cont=='' && $sub=='' && $tab=='') {
		include("../scripts/panel_contenidos/paginacion/page_unmat.php");
	}
	if ($u!='' && $t=='' && $by=='' && $cons=='' && $prf=='' && $cont=='' && $sub=='' && $tab!='') {
		echo "ha";
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
	*/

	if ($u!='' && $tm=='' && $by=='' && $cons=='' && $prf=='' && $cont=='' && $sub!=''){
		include("../scripts/panel_contenidos/subircont.php");
	}
	if ($cont!='') {
		include("vista_contenido_principal.php");
	}
	if ($cont=='' && $sub=='') {
		if ($u!="Subir") {
			echo '<div class="container-fluid">
					  <div class="row">
						<div class="col-xs-12">
						<div class="outer_div"></div>
						<!-- Datos ajax Final -->
						</div>
					  </div>
					</div>';
		}
	}

?>