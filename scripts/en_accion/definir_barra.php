<?php
    $conteo = (1/$numtotal_a)*100;


    if (empty($id_ejerc_actual)) {
              echo "
                <div  class='progress-bar' role='progressbar' aria-valuenow='60' aria-valuemin='0' aria-valuemax='100' style='width: 00%;'>
                  --
                </div>
              ";
            }
    if (isset($id_ejerc_actual)) {
              echo "
                <div  class='progress-bar' role='progressbar' aria-valuenow='60' aria-valuemin='0' aria-valuemax='100' style='width: $conteo%;'>
                  --
                </div>
              ";
    }
?>