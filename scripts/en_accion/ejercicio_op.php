  <div id="el_ejercicio">
    <div class="panel-body fk">
    <div class='row'>
    <br>
        <div class="col-md-5 col-md-offset-1">
            <img class="img-thumbnail img-responsive" src='../img_pract/<?php echo $name_img ?>.jpg'>
        </div>

        <div class='col-md-4'>
            <form id="form_seccion" method='POST'>
            <legend>Ejercicio <?php echo $clasf; ?></legend>
                <div class="form-group">
                  <label for="exampleInputEmail1"><?php echo $clasf; ?></label>
                  <div class="radio">
                        <label>
                          <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                          No se puede
                        </label>
                      </div>
                      <div class="radio">
                        <label>
                          <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                          El resultado es una constante
                        </label>
                      </div>
                      <div class="radio">
                        <label>
                          <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                          El resultado es una variable
                        </label>
                      </div>
                </div>                          
                <button type="button" value="enviar" id="btn-enviar" class="btn btn-success btn-sm">Comprobar respuesta</button>
                <small id="m_s"></small>
            </form>
      </div>
    </div>
  </div>
  </div>
  <br>
  <br>
  
 