<div class="col-md-3 columleft" >
  <div class="panel panel-default fk">
    <div class="panel-body">
        <div class="panel panel-default forde">
          <center><p class="sisbus"><strong>Opciones de practicas</strong></p></center>
          
            <div class='media'>
              <div class='media-body'>
                <center>
                  <a style='width:170px;' href='?op=listado'class='btn btn-sm btn-ind'><strong> Todas las practicas </strong></a>
                </center>
              </div>
            </div>

            <div class='media'>
              <div class='media-body'>
                <center>
                  <a style='width:170px;' href='?op=practicas-generales'class='btn btn-sm btn-ind'><strong>Practicas generales</strong></a>
                </center>
              </div>
            </div>

            <!--
            <div class='media'>
              <div class='media-body'>
                <center>
                  <a style='width:170px;' href='?op=teoricas'class='btn btn-sm btn-ind'><strong>Practicas teoricas</strong></a>
                </center>
              </div>
            </div>-->

            <div class='media'>
              <div class='media-body'>
                <center>
                  <a style='width:170px;' href='?op=aplicaciones-particulares'class='btn btn-sm btn-ind'><strong>Aplicaciones particulares</strong></a>
                </center>
              </div>
            </div>
                              
            <div class='media'>
              <div class='media-body'>
                <center>
                  <a style="width:170px;background-color:<?php echo $color_batalla; ?>;color:white;" href='?op=modulos'class='btn btn-sm btn-ind'>
                    <strong>&nbsp;<span class='glyphicon glyphicon-tasks'></span>&nbsp; Ver por modulos </strong>
                  </a>
                </center>
              </div>
            </div>
            <!--
            <div class='media'>
              <div class='media-body'>
                <center>
                  <a style="width:170px;background-color:<?php echo $color_batalla; ?>;color:white;" href='?op=batalla'class='btn btn-sm btn-ind'>
                    <strong>&nbsp; Examenes-Evaluciones </strong>
                  </a>
                </center>
              </div>
            </div>-->

                  
            <br>
        </div>
                        
                        <a href='?op' class='list-group-item fenmat active-default'>
                          &nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-leaf'></span> 
                          Presentación
                        </a>
                        
                        <a href='?op=discusion-actual' class='list-group-item fenmat'>
                          &nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-comment'></span> 
                          Discusiones de la materia
                        </a>
                        
                        <a href='?op=batalla' class='list-group-item fenmat'>
                          &nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-flag'></span> 
                          Batalla de ejercicios
                        </a>
                        <a href='?op=ayuda' class='list-group-item fenmat'>
                          &nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-question-sign'></span> 
                          Funcionamiento y dudas
                        </a>

                        <!--<a href='?op=discusiones-anteriores' class='list-group-item fenmat'>
                          &nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-repeat'></span> 
                          discusiones  anteriores 
                        </a>-->
                        <?php 
                            include("../scripts/practicas/redireccion_listas.php");
                        ?>
                       
                        
                        
                        <!--
                        <a target='_blank' class='list-group-item fenmat'>
                          &nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-pencil'></span> 
                          Recomiendame app
                        </a>-->
                        <?php 
                          $nivel_n    =  "SELECT nivel,puntos FROM nivel_usuario WHERE materia='$materia' and id_usuario";
                          $nivel_n_e  =   $conexion->query($nivel_n);
                          $nivel_a    =   $nivel_n_e->fetch_array();

                          $nivel_usuario   = $nivel_a['nivel'];
                          $puntos_usuario  = $nivel_a['puntos'];


                        ?>

                        <a class='list-group-item fenmat'>
                          &nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-education'></span> 
                          Nivel de usuario: 
                          <?php 
                           
                             if ($nivel_usuario=='') {
                                echo "Sin iniciar";  
                             }
                             else{
                                echo $nivel_usuario;
                             }
                          ?>
                        </a>
                        
                        <a class='list-group-item fenmat'>
                          &nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-asterisk'></span> 
                          Puntos que tienes: 
                          <?php 
                           
                             if ($nivel_usuario=='') {
                                echo 0;  
                             }
                             else{
                                echo $puntos_usuario;
                             }
                          ?>
                        </a>
                        <!--<a href='?un=$un&tm=$nom_tema' class='list-group-item fenint'>&nbsp;&nbsp;&nbsp;&nbsp;<span class='glyphicon glyphicon-list-alt'></span> Motivacion para estudiar o mensaje de bienvenida presentacion algo sobre dudas o funcionamiento</a> tambien podriamos poner otro como 
                        un sistema que muestra como va el usuario con respecto a esa materia-->
                        <br>
                        <p style='text-align:center;font-size:1.3em;'>
                          <span class="label label-primary"><span class='glyphicon glyphicon-inbox'></span></span>
                          <span class="label label-success"><span class='glyphicon glyphicon-inbox'></span></span>
                        </p>
    </div>
  </div>
</div>