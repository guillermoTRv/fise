<?php 
		
	$lugar="SELECT id_lprc from ejercicios WHERE id_lprc='$lista'";
				$e_l=$conexion->query($lugar);
				$a_l=$e_l->fetch_array();
				$u_lugar=$a_l[0];
				if ($u_lugar=='') {
				 	$i="INSERT INTO ejercicios(id_lprc,lugar,pregunta,clasf,type,mens_err,mens_acert,nivel,f_creacion) values('$lista',1,'$pregunta','$clasf','$type','$mens_false','$mens_true','$nivel','$fecha')";
				 	$e_i=$conexion->query($i) or die("sfs");

				 	$busqueda_id="SELECT id_ejerc,pregunta FROM ejercicios WHERE pregunta='$pregunta'";
				 	$e_busqueda_id=$conexion->query($busqueda_id);
				 	$a_busqueda_id=$e_busqueda_id->fetch_array();
				 	$id_del_ejercicio=$a_busqueda_id[0];

				 		if ($type=='texto') {
							global $form_type;
						 	$form_type="
									<div class='col-sm-8 col-sm-offset-4'>
									<br>	
									</div>
									<br>
									<div class='col-sm-8 col-sm-offset-4'><p>
										Datos restantes a añadir
									</p></div>
									<form class='form-horizontal' id='formtx' method='post' enctype='multipart/form-data'>
									<div id='campos_tx'>
										<div class='form-group'>
											<label class='col-sm-4 control-label'>Placeholder</label>
											<div class='col-sm-8'>
												<input class='form-control' type='text' name='placeholder'>
											</div>
										</div>

										<div class='form-group'>
											<label class='col-sm-4 control-label'>Rango 1</label>
											<div class='col-sm-8'>
												<input class='form-control' type='text' name='rangouno'>
											</div>
										</div>

										<div class='form-group'>
											<label class='col-sm-4 control-label'>Rango 2</label>
											<div class='col-sm-8'>
												<input class='form-control' type='text' name='rangodos'>
											</div>
										</div>
												<input type='hidden' name='id_ejerc' value='$id_del_ejercicio'>
									</div>
									<div id='menstx'>
										<div class='col-sm-5 col-sm-offset-4'>
											<button type='button' id='btntx' value='enviar' class='btn btn-success btn-sm'>Añadir ultimos datos
											</button>
										</div>
									</form>";
						}
						if ($type=='opcion') {
							global $form_type;
							$form_type="
								<div class='col-sm-8 col-sm-offset-4'>
								<form id='form_corr' method='post' enctype='multipart/form-data'>
									<button type='button' id='btn_corr' value='enviar' class='btn btn-success btn-sm'>Hacer correcion</button>
								</form>	
								<br>	
								</div>
								<br>
								<div class='col-sm-8 col-sm-offset-4'><p>
									Datos restantes a añadir. Asegurarse de que son introducidas correctamente todas las opciones
								</p></div>

								<div id='quitar_este'>
									<form class='form-horizontal' id='formop' method='post' enctype='multipart/form-data'>
									    <input type='hidden' value='$id_del_ejercicio' name='id_ejerc'>
										<div id='campos_op'>
											<div id='campo_abloquear'>
												<div class='form-group'>
												  <label class='col-sm-4 control-label'>Texto del opcion</label>
													<div class='col-sm-8'>
														<input class='form-control' type='text' name='texto_op'>
													</div>
												</div>
											</div>	
											
											<div class='form-group'>
												<div class='col-sm-8 col-sm-offset-4'>
													<input type='file' name='img_op'>
												</div>
											</div>
										</div>
									</form>

								<div  id='mensop'>
								    <div class='col-sm-5 col-sm-offset-4'>
										<button type='button' id='btnop' value='enviar' class='btn btn-success btn-sm'>Añadir campo de opcion multiple</button>
									</div>
								</div>
								<div id='ingresar_correcto'>
								</div>
								</div>
									";	
						}

						if ($_FILES[$key]["error"] > 0) {
							global $now;
							$now = "Hay un error al subir la imagen";
						}
						else{
							global $now;
							$now = "";	
						}
						include("insertar_imagen.php");


				 	$vista_a= "
						<div class='col-md-8 col-md-offset-4' style='margin-bottom:15px;'>
							<p>Los datos principales del ejercicio fueron insertados correctamente ahora puedes pasar a crear los datos secundarios</p>
						</div>
						<hr style='border:1px solid #f2f2f2;'>
						";

					$r=[
						'a'=>$vista_a.$form_type,
						'b'=>$form_hidden.$now
					];
						echo json_encode($r);


				}


				if ($u_lugar!=''){
					$posicion="SELECT id_ejerc,id_lprc,lugar,rang_two,true_op FROM ejercicios WHERE id_lprc='$lista' order by id_ejerc desc limit 1";
					$e_posicion=$conexion->query($posicion) or die ("b");
					$array_p=$e_posicion->fetch_array();
					            $ultimo_lugar=$array_p['lugar'];
								$rang    =$array_p['rang_two'];
								$true_op =$array_p['true_op'];

								if ($rang!='' or $true_op!='') {
									$nl=$ultimo_lugar+1;
									$i="INSERT INTO ejercicios(id_lprc,lugar,pregunta,clasf,type,mens_err,mens_acert,nivel,f_creacion) values('$lista','$nl','$pregunta','$clasf','$type','$mens_false','$mens_true','$nivel','$fecha')";
								 	$e_i=$conexion->query($i) or die("sfs");

								 	$busqueda_id="SELECT id_ejerc,pregunta FROM ejercicios WHERE pregunta='$pregunta'";
				 					$e_busqueda_id=$conexion->query($busqueda_id);
								 	$a_busqueda_id=$e_busqueda_id->fetch_array();
								 	$id_del_ejercicio=$a_busqueda_id[0];

								 		if ($type=='texto') {
											global $form_type;
										 	$form_type="
													<div class='col-sm-8 col-sm-offset-4'>
													<br>	
													</div>
													<br>
													<div class='col-sm-8 col-sm-offset-4'><p>
														Datos restantes a añadir
													</p></div>
													<form class='form-horizontal' id='formtx' method='post' enctype='multipart/form-data'>
													<div id='campos_tx'>
														<div class='form-group'>
															<label class='col-sm-4 control-label'>Placeholder</label>
															<div class='col-sm-8'>
																<input class='form-control' type='text' name='placeholder'>
															</div>
														</div>

														<div class='form-group'>
															<label class='col-sm-4 control-label'>Rango 1</label>
															<div class='col-sm-8'>
																<input class='form-control' type='text' name='rangouno'>
															</div>
														</div>

														<div class='form-group'>
															<label class='col-sm-4 control-label'>Rango 2</label>
															<div class='col-sm-8'>
																<input class='form-control' type='text' name='rangodos'>
															</div>
														</div>
															<input type='hidden' name='id_ejerc' value='$id_del_ejercicio'>
													</div>
													<div id='menstx'>
														<div class='col-sm-5 col-sm-offset-4'>
															<button type='button' id='btntx' value='enviar' class='btn btn-success btn-sm'>Añadir ultimos datos
															</button>
														</div>
													</form>";
										}
										if ($type=='opcion') {
											global $form_type;
											$form_type="
												<div class='col-sm-8 col-sm-offset-4'>
												<form id='form_corr' method='post' enctype='multipart/form-data'>
													<button type='button' id='btn_corr' value='enviar' class='btn btn-success btn-sm'>Hacer correcion</button>
												</form>	
												<br>	
												</div>
												<br>
												<div class='col-sm-8 col-sm-offset-4'><p>
													Datos restantes a añadir. Asegurarse de que son introducidas correctamente todas las opciones
												</p></div>

												<div id='quitar_este'>
													<form class='form-horizontal' id='formop' method='post' enctype='multipart/form-data'>
													    <input type='hidden' value='$id_del_ejercicio' name='id_ejerc'>
														<div id='campos_op'>
															<div id='campo_abloquear'>
																<div class='form-group'>
																  <label class='col-sm-4 control-label'>Texto del opcion</label>
																	<div class='col-sm-8'>
																		<input class='form-control' type='text' name='texto_op'>
																	</div>
																</div>
															</div>	
															
															<div class='form-group'>
																<div class='col-sm-8 col-sm-offset-4'>
																	<input type='file' name='img_op'>
																</div>
															</div>
														</div>
													</form>
												<div  id='mensop'>	
													<div class='col-sm-5 col-sm-offset-4'>
														<button type='button' id='btnop' value='enviar' class='btn btn-success btn-sm'>Añadir campo de opcion multiple</button>
													</div>
												</div>
												<div id='ingresar_correcto'>
												</div>
													";	
										}
										if ($_FILES[$key]["error"] > 0) {
											global $now;
											$now = "Error al subir la imagen";
										}
										else{
											global $now;
											$now = "";	
										}
									include("insertar_imagen.php");
								 	$vista_a= "
										<div class='col-md-8 col-md-offset-4' style='margin-bottom:15px;'>
											<p>Los datos principales del ejercicio fueron insertados correctamente ahora puedes pasar a crear los datos secundarios</p>
										</div>
										<hr style='border:1px solid #f2f2f2;'>
										";

									$r=[
										'a'=>$vista_a.$form_type,
										'b'=>$form_hidden.$now
									];
										echo json_encode($r);



								}
								else{
									$vista_a= "
										<div class='col-md-8 col-md-offset-4' style='margin-bottom:15px;'>
											<p>Los datos principales del ejercicio fueron insertados correctamente ahora puedes pasar a crear los datos secundarios</p>
										</div>
										<hr style='border:1px solid #f2f2f2;'>
										";

										$r=[
											'a'=>$vista_a.$form_type,
											'b'=>$form_hidden
										];
											echo json_encode($r);

								}

				}

?>