  <?php 
    if ($type=='te') {
      include("ejercicio_te.php");
    }
    if ($type=='op') {
      include("ejercicio_op.php"); 
    }
  ?>
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
          <?php 
            include("definir_barra.php");
          ?>
          
        </div>
      </div>
      <br>
    </div>
  </div>