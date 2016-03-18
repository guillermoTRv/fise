 <?php 
 	if ($materia=='Calculo diferencial') {
 		$indice_mat="/calculodif/lista-calculo-diferencial.php";
 	}
 	if ($materia=='Calculo integral') {
 		$indice_mat="/calculointegral/lista-calculo-integral.php";
 	}
 	if ($materia=='Calculo avanzado') {
 		$indice_mat="/c-avanzado/lista-calculo-multivariable-vectorial.php";
 	}
 	if ($materia=='Algebra lineal') {
 		$indice_mat="/lineal/lista-algebra-lineal.php";
 	}
 	if ($materia=='Ecuaciones diferenciales') {
 		$indice_mat="/diferenciales/lista-ecuaciones-diferenciales.php";
 	}
 ?>
 <a href="<?php echo $ruta.$indice_mat?>" class='list-group-item fenmat'>
      &nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-list-alt'></span> 
	  Ir al indice de la materia
</a>