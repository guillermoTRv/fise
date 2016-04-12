<div style='margin-top:20px;' class="modal fade" id="<?php echo $id_lprc; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><?php echo $name_lprc; ?></h4>
      </div>
      <div class="modal-body">
        <p><strong>Datos primeros de la lista</strong></p>
        <ul>
          <li>Materia <strong><?php echo $materia ?></strong></li>
          <li>Clasificacion <strong><?php echo $clasificacion ?></strong></li>
          <li>Nivel de la lista <strong><?php echo $nivel ?></strong></li>
          <li>Numero de ejercicios <strong><?php echo $num_ejerc ?></strong></li>
          <li>Puntuaje <strong><?php echo $puntuaje ?></strong></li>
          <li>Fecha creacion <strong><?php echo $fecha_cr ?></strong></li>
        </ul>
        <hr>
        <p><strong>Ejercicios de la lista</strong></p>
        <div class="row">
        <?php   
          $datos_ejerc_b  = "SELECT * FROM ejercicios WHERE id_lprc='$id_lprc'";
          $datos_ejerc_e  = $conexion->query($datos_ejerc_b);
          while ($array = mysqli_fetch_array($datos_ejerc_e)) {
                $lugar       = $array['lugar'];
                $pregunta    = $array['pregunta'];
                $clasf_e     = $array['clasf'];
                $type        = $array['type'];
                $nivel_e     = $array['nivel'];
                $puntuaje_e  = $array['puntuaje']; 

                if ($type == "op") {
                    $true_op = $array['true_op'];
                    global $ult;
                    $ult = "<li>Opcion: <strong> $true_op</strong></li>";
                }
                if ($type == "te") {
                    $placeholder = $array['placeh'];
                    $r_uno       = $array['rang_one'];
                    $r_dos       = $array['rang_two'];
                    global $ult;
                    $ult = "<li>Place <strong> $placeholder</strong></li><li>Rango uno<strong> $r_uno</strong></li><li>Rango dos<strong> $r_dos</strong></li>";
                }

                echo "
                <div class='col-md-4' style='height:300px;'>
                  <ul>
                    <li>Lugar<strong> $lugar</strong></li>
                    <li>Pregunta<strong> $pregunta</strong></li>
                    <li>Clasificacion<strong> $clasf_e</strong></li>
                    <li>Type<strong> $type</strong></li>
                    <li>Nivel<strong> $nivel_e</strong></li>
                    <li>Puntuajes<strong> $puntuaje_e</strong></li>
                    $ult
                  </ul>
                </div>
                ";
          }

        ?>
        </div>
      </div>
      <div class="modal-footer">
        <form method='post' action='practicas/alta_listas/procesar_alta.php' enctype='multipart/form-data'>
          <?php echo "<input type='hidden' name='lista' value='$id_lprc'>" ?>
          <?php echo "<input type='hidden' name='materia' value='$materia'>" ?>
          <?php echo "<input type='hidden' name='name' value='$name_lprc'>" ?>
            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar ventana</button>
            <button type="submit" class="btn btn-primary">Dar de alta</button>
        </form>
      </div>
    </div>
  </div>
</div>