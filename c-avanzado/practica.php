<?php 
    global $metaria; $materia   = "Calculo avanzado"; 
    include("../scripts/despachador_principal_enaccion/cabecera_practicas.php");    
 ?>
<!DOCTYPE html>
<html>
<head>
    <?php include("../scripts/despachador_principal_enaccion/etiquetas_basicas_practicas.php"); ?>

    <style type="text/css">
        .bn{
          color:#575757;
        }
        a.fenmat:hover,
        a.fenmat:focus {
          color: white;
          text-decoration: none;
          background-color:rgba(151, 84, 45, .9);
        }

    </style>
    <?php 
      $color_batalla = "rgba(151, 84, 45, .9)";
      $img_mat       = "cmv";
      $letbran       = "class='amountavn'";
    ?>

</head>

<body>
    <?php include("../scripts/despachador_principal_enaccion/principal_practicas.php"); ?>
</body>
</html>