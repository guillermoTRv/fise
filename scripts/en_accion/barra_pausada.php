<?php 
  $id_ultimo_b    = "SELECT id_ejerc 
                     FROM   ejercicios 
                     WHERE  id_lprc='$id_lista' order by id_ejerc desc";
  $id_ultimo_e    = $conexion->query($id_ultimo_b);
  $id_ultimo_a    = $id_ultimo_e->fetch_array();
  $id_ultimo      = $id_ultimo_a[0];

  $numtotal_b     = "SELECT * FROM ejercicios WHERE id_lprc='$id_lista'";
  $numtotal_e     =  $conexion->query($numtotal_b);
  $numtotal_a     =  mysqli_num_rows($numtotal_e);

  $resta_uno = $id_ultimo-$id_ejerc+1;
  $resta_dos = $numtotal_a-$resta_uno;
  $conteo    = ($resta_dos/$numtotal_a)*100;

  $barra     = "

        
                  <div  class='progress-bar' role='progressbar' aria-valuenow='60' aria-valuemin='0' aria-valuemax='100' style='width: $conteo%;'>
                      bienss
                  </div>          
        
  "; 


?>