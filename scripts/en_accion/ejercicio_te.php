      <div id="el_ejercicio">
        <div class="panel-body fk">
            <div class='row'>
            <br>
                <div class="col-md-5 col-md-offset-1">
                    <img class="img-thumbnail img-responsive" src='../img_pract/<?php echo $name_img ?>.jpg'>
                </div>
                <div class='col-md-4'>
                    <form id="form_seccion_te" method='POST' enctype="multipart/form-data">
                        <legend>Ejercicio <?php echo $clasf; ?></legend>
                        <div class="form-group">
                          <label for="exampleInputEmail1"><?php echo $pregunta; ?></label>
                          <div id='input_te'>
                            <input type="text" name='respuesta' class="form-control" placeholder="<?php echo $placeh; ?>">
                          </div>
                          <?php 
                            echo "<input type='hidden' name='lista' value='$id_lista'>"; 
                            echo "<input type='hidden' name='ejerc' value='$id_ejerc'>";
                            echo $puntuaje;
                            echo "<input type='hidden' name='punt' value='$puntuaje'>";
                            echo "<input type='hidden' name='error' value='$errores'>";
                            echo $toquen;
                          ?>
                        </div>
                        <div id="boton_te">
                          <button type="button" value="enviar" id="btn-evaluar-te" class="btn btn-success btn-sm">Comprobar respuesta</button>
                        </div>
                    </form>
                    <div id="resp_te">
                          
                    </div>
                </div>
            </div>
        </div>
        <br>
        <br>
      </div>
