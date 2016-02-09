<?php 
	include("../../../../config.php");

	$v_form   ="<div class='form-group'>
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


		$id 	  =$_POST['id'];
		$materia  =$_POST['m'];
		$unidad   =$_POST['unidad'];
		$tema     =$_POST['tema'];
		
			if ($tema=='') {
				global $ruta;
				$ruta="?un=$unidad";
			}
			if($tema!=''){
				global $ruta;
				$ruta="?un=$unidad&tm=$tema";
			}

	$insert="INSERT INTO tm_relacion(id_lprc,materia,unidad,tema,ruta) VALUES('$id','$materia','$unidad','$tema','$ruta')";
		$e_insert=$conexion->query($insert) or die("no quedo");
		$vista="
			<p>La relacion fue creada con exito</p>
			<p>Puedes seguir relacionando temas o puedes pasar ya a la creacion de ejercicios para la lista</p>
			<button type='button' id='btn-rel' value='enviar' class='btn btn-success btn-sm'>Crear relacion</button><br>";
		$ida="
			<hr style='border:solid 1px #f2f2f2;margin-top:15px;margin-bottom:13px;'>
			<p>Ya puedes pasar a crear ejercicios, asegurate de que hayas relacionado todas las unidades o temas para la lista antes de continuar</p>
			<form id='pasar' method='POST' enctype='multipart/form-data'>
				<input type='hidden' value='$id' name='fo'>
				<button type='button' id='btn_pasar' value='enviar' class='btn btn-success btn-sm'>Pasar a crear ejercicios</button>
			</form>";

			$resp = [
				'uno_r'=>'',
				'dos_r'=>$vista,
				'tres_r'=>$v_form,
				'r_r' =>$ida
			];

			echo json_encode($resp);
?>