<?php 
    global $metaria; $materia   = "Ecuaciones diferenciales"; 
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
          background-color:rgba(0, 84, 0, 1);
        }

    </style>
    <?php 
      $color_batalla = "rgba(0, 84, 0, .9)";
      $img_mat       = "ecudif";
      $letbran       = "class='amounecudif'";
    ?>

</head>

<body>
    <?php include("../scripts/despachador_principal_enaccion/principal_practicas.php"); ?>
</body>
</html>