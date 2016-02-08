<div class="modal fade" id="ventana1">
        <div class="modal-dialog" style="max-width:320px;">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <strong><p class="" style="font-size:1.3em;"><span class="glyphicon glyphicon-log-in"></span> Inicio de Sesión</p></strong>
            </div>

            <div class="modal-body">
              <form action='<?php echo "$ruta/login_fise.php" ?>' method='post' enctype='multipart/form-data'>
                
                <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                      <input type="email" class="form-control" id="exampleInputAmount" name="correof_txt" placeholder="email" title='solo email' required>
                  </div>
                  </div>

                  <div class="form-group">
                  <div class="input-group">
                      <div class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></div>
                      <input type="password" class="form-control" id="exampleInputAmount" name="passf_txt" placeholder="Password" pattern="[a-zA-Z0-9()ñ/\s/]{1,150}" required>
                  </div>
                  </div>
                 <?php 
                  $url="http://".$_SERVER["HTTP_HOST"].$_SERVER["REQUEST_URI"];
                  echo "<input type='hidden' value='$url' name='url_txt'>"
                 ?>
              
            </div>

            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
              <button type="submit" class="btn btn-primary">Iniciar</button>
            </div>
              </form>
          </div>
        </div>
</div>