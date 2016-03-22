<?php 
	$materia = $_POST['elegido_mod']; 
	switch ($materia) {
		case 'Calculo diferencial':
			echo "
				<option value=''>hola</option>
			";
			break;
		
		case 'Calculo integral':
			echo "
				<option value='hola'>hssola</option>
			";
			break;

		case 'Calculo avanzado':

			break;

		case 'Algebra lineal':
			echo "
				<option value='Matrices'>Matrices</option>
				<option value='Determinantes'>Determinantes</option>
				<option value='Espacios vectoriales'>Espacios vectoriales</option>
				<option value='Transformaciones lineales'>Transformaciones lineales</option>
				<option value='Valores y vectores característicos'>Valores y vectores característicos</option>
				<option value='Ortogonalidad y producto punto'>Ortogonalidad y producto punto</option>
				<option value='Otras unidades'>Otras unidades</option>
				<option value='Lista combinada'>Lista combinada </option>
			";
			break;

		case 'Ecuaciones diferenciales':

			break;

	}
?>	
