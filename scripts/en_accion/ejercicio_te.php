        <div class="panel-body fk">
            <div class='row'>
            <br>
              <div id="el_ejercicio">
                <div class="col-md-5 col-md-offset-1">
                    <img class="img-thumbnail img-responsive" src='../img_pract/<?php echo $name_img ?>'>
                </div>
                <div class='col-md-4'>
                    <form id="form_seccion" method='POST'>
                        <legend>Ejercicio a desarrollar</legend>
                        <div class="form-group">
                          <label for="exampleInputEmail1">¿Cual es el valor de x?</label>
                          <input type="text" name='rt' class="form-control" placeholder="solo numeros">
                        </div>
                        
                        <button type="button" value="enviar" id="btn-enviar" class="btn btn-success btn-sm">Comprobar respuesta</button>
                    </form>
                </div>
              </div>
            </div>
        </div>
        <br>
        <br>
        <div class="row">
            <center>
              <div style="border-bottom:solid #f2f2f2 2px;margin-left:13px;margin-right:13px;margin-bottom:20px;"><p></strong></p><br></div>
            </center>
        </div>
        <div class="row">
          <br>
          <div class="col-md-10 col-md-offset-1">
            <div style="backgroud-color:red;" class="progress">
              <div id="barra_ejerc">
                <div  class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
                Estas a punto de terminar
                </div>
              </div>
            </div>
            <br>
          </div>
        </div>