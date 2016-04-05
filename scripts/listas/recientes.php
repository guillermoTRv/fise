<div class='col-md-10 col-md-offset-1 lief'>
<?php 
	$b_recientes="SELECT id_fichamat,materia,unidad,titulo,descripcion_texto,fecha_registro_fichamat FROM ficha_contenido_materia WHERE materia='$materia' order by id_fichamat desc limit 8";
	$e_recientes=$conexion->query($b_recientes);
	while ($array=mysqli_fetch_array($e_recientes)) {
		$nombre=$array['titulo'];
		$texto=$array['descripcion_texto'];
		$unidad=utf8_decode($array['unidad']);
                $uni_rl=urls_amigables($unidad);
		$id=$array['id_fichamat'];
                if ($materia=="Algebra basica") {
			global $url;
			$url="$ruta/basica/panel-algebra-basica?un=$uni_rl&cont=$id";
		}
		if ($materia=="Algebra intermedia") {
			global $url;
			$url="$ruta/algintermedia/panel-algebra-intermedia?un=$uni_rl&cont=$id";
		}
		if ($materia=="Trigonometria") {
			global $url;
			$url="$ruta/trigonometria/panel-trigonometria?un=$uni_rl&cont=$id";
		}
		if ($materia=="Geometria analitica") {
			global $url;
			$url="$ruta/geometrianalitica/panel-geometria?un=$uni_rl&cont=$id";
		}
		if ($materia=="Estadistica") {
			global $url;
			$url="$ruta/estadistica/panel-estadistica?un=$uni_rl&cont=$id";
		}
		if ($materia=="Calculo diferencial") {
			global $url;
			$url="$ruta/calculodif/panel-calculodiferencial?un=$uni_rl&cont=$id";
		}
		if ($materia=="Calculo integral") {
			global $url;
			$url="$ruta/calculointegral/panel-calculointegral?un=$uni_rl&cont=$id";
		}
                if ($materia=="Calculo avanzado") {
			global $url;
			$url="$ruta/c-avanzado/panel-calculoavanzado?un=$uni_rl&cont=$id";
		}
                if ($materia=="Algebra lineal") {
			global $url;
			$url="$ruta/lineal/panel-algebra-lineal?un=$uni_rl&cont=$id";
		}
                if ($materia=="Ecuaciones diferenciales") {
			global $url;
			$url="$ruta/diferenciales/panel-ecuaciones-diferenciales?un=$uni_rl&cont=$id";
		}
		echo "
	    <div class='col-md-3'>
                <div style='height:180px;' class='panel panel-info fk $bord_rec'>
                  <div style='height:100px;'>
                  	<div class='modulep line-clamp'><strong>$nombre</strong></div>
                  	<div class='reci'>
							<div class='module line-clampp'><p>$texto</p></div>
						</div>
                  </div>  
                    
					<a href='$url'><div class='btn btn-ind'>ver contenido</div></a>
                </div>
            </div>
		";
	}
 ?>
</div>