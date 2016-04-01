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
                  <h4>La practica ha terminado estos han sido tus resultados</h4>
                    <?php 
                        echo "<br>Ractivos contestados correctamente - ".$puntuaje;
                        echo "<br>Errores - ".$errores;
                    ?>
                  <p>Puedes repetir la practica</p>
                  <a href="<?php echo $redi_listas; ?>">Salir</a>
                </div>
            </div>
        </div>
        <br>
        <br>
</div>