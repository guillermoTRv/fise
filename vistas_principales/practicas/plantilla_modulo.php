<?php 
    $listas_mod_b = "SELECT id_lprc FROM l_prc WHERE materia='$materia' and modulo='$modulos_a[0]'";
    $listas_mod_e = $conexion->query($listas_mod_b);
    $listas_mod_a = mysqli_num_rows($listas_mod_e);

    $id_usuario = $_SESSION['id_usuario'];
    $listas_us_b  = "SELECT * FROM usuarios_practicas WHERE materia='$materia' and modulo='$modulos_a[0]' and id_usuario='$id_usuario' ";
    $listas_us_e  = $conexion->query($listas_us_b);
    $listas_us_n  = mysqli_num_rows($listas_us_e);
?>
<div class="row">
  <div class="col-md-9 col-md-offset-1">
    <div class="panel-group pan">
      <div class="panel panel-default">
        <div class="panel-body">
          <div class="row">
            <div class="col-md-1 hidden-sm hidden-xs">
                <img class="img-circle" src="../image/lineal.jpg" alt="Generic placeholder image" width="60" height="60" border:"2px solid">
            </div>
            <div class="col-md-8 col-sm-9 ">
              <h3>
                <?php echo $modulos_a[0]; ?>                     
              </h3>
              <ol class="breadcrumb">
                <li>
                  <a class='ir' href='<?php echo "?mod=$modulos_a[1]"; ?>'>
                  <span class='glyphicon glyphicon-share'></span> 
                  Ir - Total de listas: <?php echo $listas_mod_a ?> &nbsp; Realizadas: <?php echo $listas_us_n; ?> &nbsp;
                  </a>
                </li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>