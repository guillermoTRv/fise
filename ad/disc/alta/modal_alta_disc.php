<div class="modal fade" id="<?php echo $imagen ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Imagen <strong><?php echo $imagen ?></strong></h4>
      </div>
      <div class="modal-body">
          <img style='width:400px;' src="../img_disc/<?php echo $imagen ?>.jpg">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar ventana</button>
      </div>
    </div>
  </div>
</div>
