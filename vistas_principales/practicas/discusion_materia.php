<?php 
    $busqueda_disc = "SELECT * FROM discusiones WHERE materia='$materia' and alta='si' order by id_disc desc";
    $e_busqueda    = $conexion->query($busqueda_disc);
    $a_busqueda    = $e_busqueda->fetch_array();

    $id_disc = $a_busqueda['id_disc'];
    $texto   = $a_busqueda['texto_disc'];
?>
    <div class="panel-body fk">
        <div class='row'>
            <div style="margin-top:9px;"></div>
            <div class="col-md-10" style='margin-left:10px;'>
                <span class=''><em>En este momento se esta discutiendo</em> </span><br>
                <ol class="breadcrumb" style='margin-top:20px;'>
                    <li >
                	     <h4><?php echo $texto; ?></h4>
                    </li>
                </ol>          
                <p>Recuerda que puedes subir imagenes o bien comentar con un link</p>
            </div>
        </div>
        <div class="col-md-11">
            <div class="row coment" style="border-radius:5px;">
                <div class="media">
                    <div class="media-left">
                        <img class="imgcoment" src="http://mertasan.com/upload/resimler/020ce1ab3b.jpg" alt="Generic placeholder image" width="70px" height="70px" >
                    </div>                    

                    <div class="media-body">
                        <form action='../vistas_principales/practicas/disc/p_coment.php' class="form-group"  method="POST" enctype='multipart/form-data'>

                            <textarea class="textcoment" maxlength="300" id="comentario_txt" rows="3" name="comentario_txt" title="Solo puedes agregar 300 caracteres en tu comentario"></textarea>                       
                            <input style="margin-bottom:6px;" id="target" type="url" class="form-control inputlink" name="link_txt" placeholder="Link o fuente(opcional)">
                                
                                <?php echo"<input type='hidden' name='uscont' value='$id_usuario'>" ?>
                                <?php echo"<input type='hidden' name='mat' value='$materia'>" ?>
                                <?php echo"<input type='hidden' name='id_disc' value='$id_disc'>" ?>
                                <?php echo $toquen; ?>
                                <div class="row">
                                  <div class="col-md-1">
                                    <button type="submit" value="enviar" id="btn-enviarc" class="btn btn-default">Enviar</button>
                                  </div>
                                  <div class="col-md-2">
                                    <input type="file" name='image'>
                                  </div>
                                </div>
                                
                                
                                
                        </form>
                    </div>
                </div>
            </div>



            <div class='row coment'>
                <div class='media'>
                    <div class='media-left'>
                        <img class='imgcoment' src='http://mertasan.com/upload/resimler/020ce1ab3b.jpg' alt='Generic placeholder image' width='70px' height='70px' >
                    </div>
                    <div class='media-body'>
                        <p class='pcoment'>$coment</p>";
                            if ($link!='') {
                              echo "<a class='etiqa' href=$link>$link</a><br>";
                            }
                            
                            echo "<span><strong>&nbsp;$nombre &nbsp; $fecha &nbsp;</strong></span>
                    </div>
                </div>
            </div>
        </div>
    </div>