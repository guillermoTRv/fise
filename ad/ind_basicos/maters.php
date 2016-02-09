<?php 
	$array_maters = array("Algebra basica","Algebra intermedia","Trigonometria","Geometria analitica","Estadistica","Calculo diferencial","Calculo integral","Calculo avanzado","Algebra lineal");
	foreach($array_maters as $array_maters){
	    $array_maters;

	    $mat_b="SELECT COUNT(*) FROM ficha_contenido_materia WHERE materia='$array_maters'";
		$mat_e=$conexion->query($mat_b);
		$mat_a=$mat_e->fetch_array();
		$bas=$mat_a[0];

		echo "
			<tr>
			    <td><a href='$ruta/ad/administrador?mat=$array_maters'>$array_maters</a></td>
			    <td>$bas</td>
			</tr>
		";

	}	
?>
