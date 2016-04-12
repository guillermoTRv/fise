<style type="text/css">
                  	.badge_num{
                  		width:35px; 
                  	}
                  </style>
<div class="panel-body fk" style='margin-left:24px;margin-top:20px;margin-right:26px;'>

        <div class='row'>
            <div style="margin-top:9px;"></div>
            <div class="col-md-10" >
   				<?php 
   					$datos_p   = "SELECT * FROM l_prc WHERE materia = '$materia'";
   					$datos_p_e = $conexion->query($datos_p);
   					$datos_n   = mysqli_num_rows($datos_p_e);

   					$modulos_m = "SELECT * FROM modulos_url WHERE materia='$materia'";
   					$modulos_e = $conexion->query($modulos_m);
   					$modulos_n = mysqli_num_rows($modulos_e);
   					
   				  $busqueda_disc = "SELECT * FROM discusiones WHERE materia='$materia' and alta='si' order by id_disc desc";
            $e_busqueda    = $conexion->query($busqueda_disc);
            $num_disc      = mysqli_num_rows($e_busqueda);

   					$aleatorio = rand(10,100);


   					$us_p      = "SELECT * FROM usuarios_practicas WHERE materia='$materia' and id_usuario='$id_usuario'";
   					$us_p_e    = $conexion->query($us_p);
   					$us_p_n    = mysqli_num_rows($us_p_e); 
   				?>
                      <p style='font-size:1.2em;'><span class="badge badge_num"><?php echo $datos_n; ?></span> 
                      	Practicas en toda la materia
                      </p>
                      <p style='font-size:1.2em;'><span class="badge badge_num"><?php echo $modulos_n; ?></span> 
                      	Módulos
                      </p>
                      <p style='font-size:1.2em;'><span class="badge badge_num"><?php echo $num_disc; ?></span> 
                      	Discusiones
                      </p>
	                    <p style='font-size:1.2em;'><span class="badge badge_num"><?php echo $aleatorio; ?></span> 
	                    	Usuarios activos
	                    </p>
	                    <p style='font-size:1.2em;'><span class="badge badge_num"><?php echo $us_p_n; ?></span> 
	                    	Practicas resueltas 
	                    </p>
                      	
                      </div>
                  </div>
                  <hr>

<!--nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn-->
          <?php 
            #en la parte de arriba esta la consulta de discusiones
            $a_busqueda    = $e_busqueda->fetch_array();

            $texto = $a_busqueda['texto_disc'];
          ?>
                  <div class="row">
                  	<div class="col-md-10">
                  		<br>
	                  	<h4><a class='alimpia' href="?op=discusion-actual"><span class='glyphicon glyphicon-share'></span></a> Nuestra discusión actual para <?php echo $name_title ?></h4>
	                  	<p style='font-size:1.2em;'><?php echo $texto ?></p><br>
	                  	
                  	</div>
                  	
                  </div>
                  <hr>
                  <br>

<!--nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn-->


                  <h4>Practicas añadidas recientemente</h4>
                  <div class='row'>
                  <?php  
                 		$ultimas_p	  = "SELECT id_lprc,materia,name_lprc,nivel FROM l_prc WHERE materia='$materia' order by id_lprc desc limit 3";
                 		$ultimas_p_e  = $conexion->query($ultimas_p);
                 		include("../scripts/clean/funcion_limpiar.php");
                 		while ($ultimas_a=mysqli_fetch_array($ultimas_p_e)) {
                 			
                 				$name_lprc   = $ultimas_a['name_lprc'];
                 				$nivel_lista = $ultimas_a['nivel'];
                 				$materia     = $ultimas_a['materia'];
                 				include("../vistas_principales/practicas/redireccion_portada.php");
                 				?>
                 					<div class='col-md-4'>
						                <div style='height:180px;border-color:rgba(0,0,0,.3);border-radius:4px;' class='panel panel-info fk'>
						                  <div style='height:100px;'>
						                  	<div class='modulep line-clamp'><strong><?php echo $name_lprc ?></strong></div>
						                  	<div class='reci'>
													<div class='module line-clampp'><p><br>Nivel: <?php echo $nivel_lista ?></p></div>
												</div>
						                  </div>  
						                    
											<a href='<?php echo "$url_prc" ?>'><div class='btn btn-ind'>Llevar a cabo</div></a>
						                </div>
						            </div>

                 				<?php

                 		}
                 		

                  ?>
                  </div>
                    

		            
                 

</div>


<!--
<h4 style='margin-bottom:20px;'>Este espacio esta creado para que tu puedas poner en practica y desarrollar conocimientos de la materia</h4>
                          <p>-Cada semana se incorporan a nuestro espacios de practica diversas listas que van desde ejercicios teoricos, demostrativos y de aplicaciones</p>
                          <p>-Podras medir tus conocimientos ya que al finalizar una practica se te informara sobre cuales son tus fortalezas y debilidades</p>
                          <p>-Ademas, cada semana hay un nuevo tema matematico para ser discutido en comunidad</p>
                          <p>-Practicas organizadas por modulos</p>
	ecuaciones diferenciales
-->