  <?php 
        include("../header.php");
    ?>
    <div class="container-fluid">
        <div class="row">    
            <div class="col-md-3 columleft">
                    <div class="panel panel-default fk">
                        <div class="panel-body">
                            <?php include("../vistas_principales/en_accion/marcadores.php"); ?>
                            
                            <?php include("../vistas_principales/en_accion/opciones.php");?>
                            
                            <?php include("../vistas_principales/en_accion/temas_relacionados.php"); ?>
                            
                        </div>
                    </div>
            </div>

            <div class="col-md-9 columrigth">
                <div class="panel panel-default">
                  <div class="panel-heading">
                      <div class="row">
                            <div class="media">
                                <div class="media-left media-middle">
                                  <img class="img-circle hidden-xs" src="../image/<?php echo $img_mat; ?>.jpg" alt="Generic placeholder image" width="70" height="70" style="margin-left:15px;">
                                </div>
                                <div class="media-body">
                                  <h3>Lista de ejercicios - <?php echo $name_n; ?></h3>
                                </div>
                            </div>
                      </div>
                  </div>
                  
                  <div class="panel-heading">
                    <span <?php echo $letbran; ?>><strong>Tipo de lista: </strong></span> Ejercicios de practica especifica
                  </div>
                  <div id="sector_cambio" style='margin-left:20px;'>
  <!--..............................................................................................................................-->         
                  <?php include("../vistas_principales/en_accion/presentacion_lista.php"); ?>             
                      <br><br>
<!--..............................................................................................................................-->                      
                  </div>
                </div>
            </div>
        </div>
    </div>
    <?php include("../footer_fise.php") ?>
  <script src="../js/bootstrap.min.js"></script>
    