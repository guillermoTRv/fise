<div id="el_ejercicio">
  <div class="panel-body fk">
    <div class='row'>
    <br>
        <div class="col-md-5 col-md-offset-1">
            <img class="img-thumbnail img-responsive" src='../img_pract/<?php echo $name_img ?>.jpg'>
        </div>

        <div class='col-md-4'>
            <form id="form_seccion_op" method='POST'>
              <legend>Ejercicio <?php echo $clasf; ?></legend>
                  <div class="form-group">
                    <label for="exampleInputEmail1"><?php echo $clasf; ?></label>
                        <?php 
                            $opciones_b = "SELECT * FROM opcion WHERE id_ejerc='$id_ejerc' order by inciso asc";
                            $opciones_e = $conexion->query($opciones_b);
                            while ($opciones_a = mysqli_fetch_array($opciones_e)) {
                                   $text_opt = $opciones_a['text_opt'];
                                   $inciso   = $opciones_a['inciso'];
                                  echo "
                                    <div class='radio'>
                                      <label>
                                        <input type='radio' name='respuesta' value='$inciso'>
                                          $text_opt
                                      </label>
                                    </div>
                                  ";
                            }
                        ?>
                  </div>
                  <?php 
                      echo "<input type='hidden' name='lista' value='$id_lista'>"; 
                      echo "<input type='hidden' name='ejerc' value='$id_ejerc'>";
                      echo "<input type='hidden' name='punt'  value='$puntuaje'>";
                      echo "<input type='hidden' name='error' value='$errores'>";
                      echo $toquen;
                  ?>
                  <div id="boton_op">
                    <button type="button" value="enviar" id="btn-evaluar-op" class="btn btn-success btn-sm">Comprobar respuesta</button>
                  </div>                          
              </form>
              <div id="resp_op">

              </div>
        </div>
    </div>
  </div>
</div>
<br>
<br>
  
 