<?php 
    if ($materia=='Calculo diferencial') {
        $redi_listas = $ruta."/calculodif/panel-practicas?op=modulos";
    }
    if ($materia=='Calculo integral') {
        $redi_listas = $ruta."/calculointegral/panel-practicas?op=modulos";
    }
    if ($materia=='Calculo avanzado') {
        $redi_listas = $ruta."/c-avanzado/panel-practicas?op=modulos";
    }
    if ($materia=='Algebra lineal') {
        $redi_listas = $ruta."/lineal/panel-practicas?op=modulos";
    }
    if ($materia=='Ecuaciones diferenciales') {
        $redi_listas = $ruta."/diferenciales/panel-practicas?op=modulos";
    }
?>
<div id="el_ejercicio">
        <div class="panel-body fk">
            <div class='row'>
            <br>
                <div class='col-md-10'>
                  <h4>La practica ha terminado, estos han sido tus resultados:</h4>
                
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <td>Reactivos contestados correctamente</td>
                                <td><?php echo $puntuaje; ?></td>
                            </tr>   
                            <tr>
                                <td>Errores</td>
                                <td><?php echo $errores; ?></td>  
                            </tr>
                        </tbody>
                    </table>
                   
                  <p>Puedes repetir esta practica en cualquier otro momento</p>
                  <p>Tus resultados serán almacenados y posteriormente podrás verlos desde tu panel de usuario</p>

                  <a class='alimpia' href="<?php echo $redi_listas; ?>">Salir al panel principal</a>
                </div>
            </div>
        </div>
        <br>
        <br>
</div>
<!--
En otros indicadores podemos poner el tiempo que se tardo el usuario e terminar la serie
En caso de que el usuario vuelva a hacer la practica hay que anilizar si se le quita la puntuacion maxima por
una minima en caso de que la haya regado y haya sacado menos
haz practicado los siguientes temas
                  bla bla bla
-->