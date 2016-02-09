<?php 
	$v_form  ="<div class='form-group'>
			        <label>Materia</label>
			          <select id='materia_slc' class='form-control' name='m' title='Selecciona una unidad'>
			              <option>--</option>
			              <option  value='Calculo-diferencial'>Calculo diferencial</option>
			              <option  value='Calculo integral'>Calculo integral</option>
			              <option  value='Calculo avanzado'>Calculo avanzado</option>
			              <option  value='Algebra lineal'>Algebra lineal</option>
			              <option  value='Ecuaciones diferenciales'>Ecuaciones diferenciales</option>
			          </select>   
			      </div>

			      <div class='form-group'>
			        <label>Unidad</label>
			        <select id='unidades' class='form-control' name='unidad'>
			          <option value=''>--</option>
			        </select>
			      </div>

			      <div class='form-group'>
			        <label>Temas</label>
			        <select id='temas' class='form-control' name='tema'>
			          <option value=''>--</option>
			        </select>
			      </div>" ;
	$vista="<p>La relacion ah sido cancelada, puede elegir otros datos</p><button type='button' id='btn-rel' value='enviar' class='btn btn-success btn-sm'>Enviar datos</button>";

	$resp = [
		'uno_r'=>'',
		'dos_r'=>$vista,
		'tres_r'=>$v_form
	];

	echo json_encode($resp);
?>