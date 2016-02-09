
<?php 
	include("../../../../config.php");
	error_reporting(E_ALL ^ E_NOTICE);
	$id 	  =$_POST['id'];
	$btn_uno  ="<button type='button' id='btn-rel' value='enviar' class='btn btn-success btn-sm'>Enviar datos</button><br>";
	$xy 	  =$_POST['xy'];
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

	if (isset($id)) {
		
		$materia=$_POST['m'];
		$unidad=$_POST['unidad'];
		$tema=$_POST['tema'];
		if ($materia!='' and $unidad!='') {

			if ($tema=='') {
				global $ruta;
				$ruta="?un=$unidad";
			}
			if($tema!=''){
				global $ruta;
				$ruta="?un=$unidad&tm=$tema";
			}

			$validacion="SELECT COUNT(*) FROM tm_relacion WHERE unidad='$unidad' and tema='$tema' and id_lprc='$id'";
			$e_v=$conexion->query($validacion);
			$avv=$e_v->fetch_array();
			$num=$avv[0];
			if ($num==0) {

				if ($xy=='true') {

					$insert="INSERT INTO tm_relacion(id_lprc,materia,unidad,tema,ruta) VALUES('$id','$materia','$unidad','$tema','$ruta')";
					$e_insert=$conexion->query($insert) or die("no quedo");
						$vista="
						<p>La relacion fue creada por exito</p>
						<p>Puedes seguir relacionando temas o puedes pasar ya a la creacion de ejercicios para la lista</p>
						<button type='button' id='btn-rel' value='enviar' class='btn btn-success btn-sm'>Crear relacion</button><br>
						<hr style='border:solid 1px #f2f2f2;margin-top:15px;margin-bottom:13px;'>
						<p>Ya puedes pasar a crear ejercicios, asegurate de que hayas relacionado todas las unidades o temas para la lista antes de continuar</p>
						<form id='pasar' method='POST' enctype='multipart/form-data'>
							<input type='hidden' value='$id' name='fo'>
							<button type='button' id='btn_pasar' value='enviar' class='btn btn-success btn-sm'>Crear ejercicio</button>
						</form>
						";

					$resp = [
					'uno_r'=>'',
					'dos_r'=>$vista,
					'tres_r'=>$v_form
					];

					echo json_encode($resp);

					#E"Un listado de los temas que se llevan ya relacionados"				
				}
				else{
					$v_form_two  ="<div class='form-group'><label>Materia</label>
					    <input class='form-control' disabled type='text' placeholder='$materia' name='m'>
					    <input type='hidden' value='$materia' name='m'>
			          </div>

				      <div class='form-group'><label>Unidad</label>
				        <input class='form-control' disabled type='text' placeholder='$unidad' name='unidad'>
				        <input type='hidden' value='$unidad' name='unidad'>
				      </div>

				      <div class='form-group'><label>Temas</label>
				        <input class='form-control' disabled type='text' placeholder='$tema' name='tema'>
				        <input type='hidden' value='$tema' name='tema'>
				      </div>" ;
					$hidden="<input type='hidden' value='true' name='xy'>";
					$vista="
						<p>Esos son los datos que introduciste, puedes corregir apretando el boton de cencelar y corregir</p>
						
						<p>Puedes apretar el boton verde para crear la relacion de temas</p>
						<div class='row'>
							<div class='col-md-2'>
									<button type='button' id='btn-ahorasi_rel' value='enviar' class='btn btn-success btn-sm'>Crear relacion</button><br>
							</div>
							<div class='col-md-3'>
								<form id='cancel-rel' method='POST' enctype='multipart/form-data'>
									<button type='button' id='btn-crel' value='enviar' class='btn btn-danger btn-sm'>Cancelar y corregir</button><br>
								</form>
							</div>
						</div>
					";

					$resp = [
					'uno_r'=>$hidden,
					'dos_r'=>$vista,
					'tres_r'=>$v_form_two
					];

					echo json_encode($resp);
					
				}

			
			}
			else{
				$mens=$btn_uno."Ya se habia relacionado esta unidad o tema para esta lista de ejercicios";	
				$resp = [
					'uno_r'=>'',
					'dos_r'=>$mens,
					'tres_r'=>$v_form
				];

				echo json_encode($resp);
				
			}
			
		}
		else{	
			$mens=$btn_uno."No se llenaron todos los campos";
			$resp = [
				'uno_r'=>'',
				'dos_r'=>$mens,
				'tres_r'=>$v_form
			];

		echo json_encode($resp);
		}	
	}
	else{
		$mens=$btn_uno."No se ha creado una lista y por lo tanto no se puede empezar a relacionar unidades o temas";	
		$resp = [
			'uno_r'=>'',
			'dos_r'=>$mens,
			'tres_r'=>$v_form
		];

		echo json_encode($resp);	
	}
	
?>