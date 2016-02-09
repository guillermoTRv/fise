<br>
<div id="pasar_ej">
<div class="col-md-9">
  <form id="form_rc" method="post" enctype="multipart/form-data">
    <legend>Primeras opciones para crear una lista</legend>

  <div class="form-group">
    <label>Nombre de la lista</label>
    <input type="text" class="form-control" name='name' placeholder="Nombre llamativo y con excelente ortografia">
  </div>
  <div class="form-group">
    <label>Clasificacion de la lista</label>
    <select class="form-control" name="clasificacion">
      <option value="">--</option>
      <option value="general">General</option>
      <option value="aplicaciones particulares">Aplicaciones particulares</option>
    </select>
  </div>

  <div class="form-group">
    <label>Dificultad</label>
    <select class="form-control" name="nivel">
      <option value="">--</option>
      <option value="basica">Basica</option>
      <option value="inter">Intermedia</option>
      <option value="dificil">Dificil</option>
      <option value="mixta">Mixta</option>
    </select>
  </div>
  
  <div class="form-group">
      <label>Materia</label>
        <select class="form-control" name="materia" title="Selecciona una unidad" >
            <option value="">--</option>
            <option  value="Calculo diferencial">Calculo diferencial</option>
            <option  value="Calculo integral">Calculo integral</option>
            <option  value="Calculo avanzado">Calculo avanzado</option>
            <option  value="Algebra lineal">Algebra lineal</option>
            <option  value="Ecuaciones diferenciales">Ecuaciones diferenciales</option>
        </select>   
  </div>
</form>
  <div id="m_rc">
      <button type='button' id='btn-rc' value='enviar' class='btn btn-success btn-sm'>Enviar datos</button>
  </div>
<br><p></p>

</div>
<div class="col-md-8">
  <form id="form_rel" method="post" enctype="multipart/form-data"> 
    <legend>Relacionar temas</legend>
    
    <div id="valor"></div>
    
    <div id="validar_r"></div>

    <div id="parte_form">
      <div class="form-group">
        <label>Materia</label>
          <select id="materia_slc" class="form-control" name="m" title="Selecciona una unidad" required >
              <option>--</option>
              <option  value="Calculo-diferencial">Calculo diferencial</option>
              <option  value="Calculo integral">Calculo integral</option>
              <option  value="Calculo avanzado">Calculo avanzado</option>
              <option  value="Algebra lineal">Algebra lineal</option>
              <option  value="Ecuaciones diferenciales">Ecuaciones diferenciales</option>
          </select>   
      </div>
      <div class="form-group">
        <label>Unidad</label>
        <select id="unidades" class="form-control" name='unidad'>
          <option value="">--</option>
        </select>
      </div>

      <div class="form-group">
        <label>Temas</label>
        <select id="temas" class="form-control" name='tema'>
          <option value="">--</option>
        </select>
      </div>
    </div> 
  </form>
  <div style="margin-top:10px;" id="mensaje">
    <button type='button' id='btn-rel' value='enviar' class='btn btn-success btn-sm'>Enviar datos</button>
  </div>
  <div id="ir_a_ej">

  </div>

  <p>&nbsp;</p><p>&nbsp;</p>
  <br><br>
  </div>
</div>
<div id="retener"></div>
