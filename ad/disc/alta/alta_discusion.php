<div class="row" style='margin-top:60px;'>
  <div class="col-md-10">
      <h4>Discusiones que no han sido dadas de alta</h4>
          <table class="table">
            <thead>
              <tr>
                <th>Texto de la discusion</th>
                <th>Materia</th>
                <th>Imagen</th>
                <th>Opciones</th>
              </tr>
            </thead>
            <tbody>
              <?php 
                $listas = "SELECT * FROM discusiones WHERE alta='no' order by id_disc desc";
                $listas_e =$conexion->query($listas);
                while ($listas_a = mysqli_fetch_array($listas_e)) {
                  $id_disc        = $listas_a['id_disc'];
                  $texto_disc     = $listas_a['texto_disc'];
                  $materia        = $listas_a['materia']; 
                  $imagen         = $listas_a['name_img'];
                  
                  $conteo_img = "SELECT * FROM discusiones WHERE name_img='$imagen'";
                  $e_conteo   = $conexion->query($conteo_img);
                  $v_conteo   = mysqli_num_rows($e_conteo);

                   

                  ?>
                    <tr>
                      <td><?php echo $texto_disc ?></td>
                      <td><?php echo $materia ?></td>
                      <td>
                        <a class='alimpia' href="#<?php echo $imagen ?>" data-toggle="modal">
                          <?php echo $imagen; if ($v_conteo > 1) {$gal = "doble"; }?>
                        </a>
                  </td>
                      <td>
                        <form action='disc/alta/procesar_alta_disc.php' method='post' enctype='multipart/form-data'>
                            <?php echo "<input type='hidden' value='$id_disc' name='id_disc'>" ?>
                            <button type="submit" class="btn btn-default btn-xs btn-danger">
                              Autorizar
                            </button>
                        </form>
                      </td>
                    </tr>
                  <?php
                  include("modal_alta_disc.php");
                }
              ?>
            </tbody>
          </table>
  </div>
</div>

