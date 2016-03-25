<?php 
	if ($op=='listado' && $mod=='') {
         global $rows_b;
         $rows_b   = "SELECT * FROM l_prc WHERE materia='$materia'";
         global $cons_w;
         $cons_w = "SELECT * FROM l_prc WHERE materia='$materia' order by id_lprc LIMIT $offset,$per_page";
    }
    if ($op=='practicas-generales' && $mod=='') {
         $condicional  ="general";
         global $rows_b;
         $rows_b   = "SELECT * FROM l_prc WHERE materia='$materia' and clasf='$condicional'";
         global $cons_w;
         $cons_w = "SELECT * FROM l_prc WHERE materia='$materia' and clasf='$condicional' order by id_lprc LIMIT $offset,$per_page";
    }
    if ($op=='aplicaciones-particulares' && $mod=='') {
         $condicional  ="aplicaciones particulares"; 
         global $rows_b;
         $rows_b   = "SELECT * FROM l_prc WHERE materia='$materia' and clasf='$condicional'";
         global $cons_w;
         $cons_w = "SELECT * FROM l_prc WHERE materia='$materia' and clasf='$condicional' order by id_lprc LIMIT $offset,$per_page";
    }
    if ($op=='' && $mod!='') {

    	 $url_b = "SELECT rel_modulo FROM modulos_url WHERE url_limpia='$mod'";
	     $url_e = $conexion->query($url_b);
	     $url_a = $url_e->fetch_array();
	     $rel_modulo = $url_a[0];

         global $rows_b;
         $rows_b   = "SELECT * FROM l_prc WHERE materia='$materia' AND modulo='$rel_modulo'";
         global $cons_w;
         $cons_w = "SELECT * FROM l_prc WHERE materia='$materia' AND modulo='$rel_modulo' order by id_lprc LIMIT $offset,$per_page";
    }
?>