<?php 
	if ($op=='listado' && $mod=='') {
         global $rows_b;
         $rows_b   = "SELECT * FROM l_prc WHERE materia='$materia'and prod='si'";
         global $cons_w;
         $cons_w = "SELECT * FROM l_prc WHERE materia='$materia'and prod='si' order by id_lprc LIMIT $offset,$per_page";
    }
    if ($op=='practicas-generales' && $mod=='') {
         $condicional  ="general";
         global $rows_b;
         $rows_b   = "SELECT * FROM l_prc WHERE materia='$materia'and prod='si' and clasf='$condicional'";
         global $cons_w;
         $cons_w = "SELECT * FROM l_prc WHERE materia='$materia'and prod='si' and clasf='$condicional' order by id_lprc LIMIT $offset,$per_page";
    }
    if ($op=='aplicaciones-particulares' && $mod=='') {
         $condicional  ="aplicaciones particulares"; 
         global $rows_b;
         $rows_b   = "SELECT * FROM l_prc WHERE materia='$materia'and prod='si' and clasf='$condicional'";
         global $cons_w;
         $cons_w = "SELECT * FROM l_prc WHERE materia='$materia'and prod='si' and clasf='$condicional' order by id_lprc LIMIT $offset,$per_page";
    }
    if ($op=='' && $mod!='') {

         global $rows_b;
         $rows_b   = "SELECT * FROM l_prc WHERE materia='$materia'and prod='si' AND modulo='$rel_modulo'";
         global $cons_w;
         $cons_w = "SELECT * FROM l_prc WHERE materia='$materia'and prod='si' AND modulo='$rel_modulo' order by id_lprc LIMIT $offset,$per_page";
    }
?>