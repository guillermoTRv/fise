<?php 
     
      
      if ($unidad!='' && $tema=='' && $by=='' && $cons=='' && $prf=='') {
         global $rows_b;
         $rows_b   = "SELECT * FROM ficha_contenido_materia WHERE materia='$materia' and unidad='$unidad'";
         global $cons_w;
         $cons_w = "SELECT * FROM ficha_contenido_materia WHERE materia='$materia' and unidad='$unidad' order by id_fichamat LIMIT $offset,$per_page";
      }




      if ($tema!='' && $by=='' && $cons=='' && $prf=='') {
         global $rows_b;
         $rows_b = "SELECT * FROM ficha_contenido_materia WHERE materia='$materia' and unidad='$unidad' and tema='$tema'";
         global $cons_w;
         $cons_w = "SELECT * FROM ficha_contenido_materia WHERE materia='$materia' and unidad='$unidad' and tema='$tema' order by id_fichamat LIMIT $offset,$per_page";
      }




      if ($tema=='' && $by!='' && $cons=='' && $prf=='') {
         global $rows_b;
         $rows_b = "SELECT * FROM ficha_contenido_materia WHERE materia='$materia' and unidad='$unidad' and tipo_material='$by'";
         global $cons_w;
         $cons_w = "SELECT * FROM ficha_contenido_materia WHERE materia='$materia' and unidad='$unidad' and tipo_material='$by' order by id_fichamat LIMIT $offset,$per_page";
      }




      if ($tema=='' && $by=='' && $cons!='' && $prf=='') {
         global $rows_b;
         $rows_b = "SELECT * FROM ficha_contenido_materia WHERE materia='$materia' and unidad='$unidad' and consideracion='Ejercicio-problema'";
         global $cons_w;
         $cons_w = "SELECT * FROM ficha_contenido_materia WHERE materia='$materia' and unidad='$unidad' and consideracion='Ejercicio-problema' order by id_fichamat LIMIT $offset,$per_page";
          
      }




      if ($tema=='' && $by=='' && $cons=='' && $prf!='') {
         global $rows_b;
         $rows_b = "SELECT * FROM ficha_contenido_materia WHERE materia='$materia' and unidad='$unidad'";
         global $cons_w;
         $cons_w = "SELECT * FROM ficha_contenido_materia WHERE materia='$materia' and unidad='$unidad' ORDER BY voto DESC LIMIT $offset,$per_page";
      }
?>