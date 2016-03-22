<?php 
    $url_b = "SELECT rel_modulo FROM modulos_url WHERE url_limpia='$mod'";
    $url_e = $conexion->query($url_b);
    $url_a = $url_e->fetch_array();
    $rel_modulo = $url_a[0];

    $listas_b = "SELECT * FROM l_prc WHERE materia='$materia' AND modulo='$rel_modulo' ";
    $listas_e = $conexion->query($listas_b);
    $listas_n = mysqli_num_rows($listas_e);

?>

<div class="panel-heading">
      <div class="row">
          <div class="media">
              <div class="media-left media-middle">
                <img class="img-circle hidden-xs" src="../image/<?php echo $img_mat ?>.jpg" alt="Generic placeholder image" width="70" height="70" style="margin-left:15px;">
              </div>
              <div class="media-body">
                 <h3>Modulo - <?php echo $rel_modulo; ?></h3>
              </div>
          </div>
      </div>
</div>
<div class="panel-heading">
  Número total de practicas encontradas <strong><?php echo $listas_n ?></strong>
</div>
<div class="panel-body fk">
  <div class='row'>
      <div style="margin-top:9px;">
      </div>
      <div class="col-md-10">
              <?php

              while ($row = mysqli_fetch_array($listas_e)) {

                $id_practica   = $row['id_lprc'];
                $nombre        = $row['name_lprc'];
                $clasificacion = $row['clasf'];
                $num_ejerc     = $row['num_ejerc'];
                $dificultad    = $row['nivel'];

                include("../scripts/practicas/enlaces.php");
                include("../vistas_principales/practicas/asiva_ficha.php"); 
              
              }

              
              ?>
                
      </div>
      </div>
  </div>

