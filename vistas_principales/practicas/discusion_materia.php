<?php #seria bueno poner letras mas chiquitas todo mas chiquito ?>
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
                                  <div class="col-md-2">
                                    <button type="submit" value="enviar" id="btn-enviarc" class="btn btn-default">Comentar</button>
                                  </div>
                                  <div class="col-md-2">
                                    <input type="file" name='image'>
                                  </div>
                                </div>
                                
                                
                                
                        </form>
                    </div>
                </div>
            </div>

            <?php 
                $m_comentario = "SELECT * FROM coment_disc WHERE id_disc='$id_disc' order by id_comentdisc desc";
                $m_coment_e   = $conexion->query($m_comentario);
                while ($array_c=mysqli_fetch_array($m_coment_e)) {
                    $id_comentdisc  = $array_c['id_comentdisc'];
                    $comentario_txt = $array_c['comentario'];
                    $link           = $array_c['link'];
                    $name_img       = $array_c['name_img'];
                    ?>

                        <div class='row coment'>
                            <div class='media'>
                                <div class='media-left'>
                                    <img class='imgcoment' src='http://mertasan.com/upload/resimler/020ce1ab3b.jpg' alt='Generic placeholder image' width='70px' height='70px' >
                                </div>
                                <div class='media-body'>
                                    
                                    <p <?php if ($link!=''){echo "style='font-size:.9em;margin-bottom:-1px;'";}if($link==''){echo "style='font-size:.9em;margin-bottom:4px;'";} ?>>
                                        <?php echo $comentario_txt ?>
                                    </p>
                                       
                                        <?php if ($link!='') {echo "<a target='_blank' class='alimpia' style='font-size:.98em;' href='$link'>http://localhost/cambio/lineal/panel-practicas?op=discusion-actual</a><br>";} ?>
                                       
                                        
                                        <span style='font-size:.9em;'><strong>&nbsp;Memin &nbsp; 2013-02-01 &nbsp; 
                                            <?php if($name_img!=''){echo "<a class='alimpia' href='#$id_comentdisc' data-toggle='modal'>Ver imagen</a></strong>";} ?>
                                        </span>
                                </div>
                            </div>
                        </div>
                        <!---->

                    <?php
                    include("disc/modal_img.php");

                }
            ?>


            
            
            <!---->

        </div>
    </div>