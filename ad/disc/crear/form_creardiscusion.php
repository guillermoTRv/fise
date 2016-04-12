<div class="row" style='margin-top:60px;'>
  <div class="col-md-10">
      <form class="form-horizontal" method='post' action='disc/crear/registrar_discusion.php' enctype='multipart/form-data'>
        <div class="form-group">
          <label class="col-sm-2 control-label">Texto de la discusion</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name='texto'>
          </div>
        </div>
        
        <div class="form-group">
          <label class="col-sm-2 control-label">Materia</label>
          <div class="col-sm-10">
            <select class='form-control' name='materia'>
              <option>--</option>
              <option value='Calculo diferencial'>Calculo diferencial</option>
              <option value='Calculo integral'>Calculo integral</option>
              <option value='Calculo avanzado'>Calculo avanzado</option>
              <option value='Algebra lineal'>Algebra lineal</option>
              <option value='Ecuaciones diferenciales'>Ecuaciones diferenciales</option>
            </select>
          </div>
        </div>
        
        <div class="form-group">
          <div class="col-md-6 col-sm-offset-2">
            <input type="file" name='img_disc'>
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">Crear discusión</button>
          </div>
        </div>
      </form>
  </div>
</div>

