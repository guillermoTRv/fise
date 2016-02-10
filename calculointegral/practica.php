<?php 
    error_reporting(E_ALL ^ E_NOTICE);
    global $prc;      $prc      = addslashes(htmlspecialchars(strip_tags(trim($_GET['prc']))));
    global $metaria; $materia   = "Calculo diferencial"; 
    require("../ruta.php");
    include("../config.php");
    $name_b = "SELECT * FROM practicas_url WHERE name_limpio='$prc'";
    $name_e = $conexion->query($name_b);
    $name_a = $name_e->fetch_array();
    $name_n = $name_a[1];

    $id_lista_b = "SELECT * FROM l_prc WHERE name_lprc = '$name_n'";
    $id_lista_e = $conexion->query($id_lista_b);
    $id_lista_a = $id_lista_e->fetch_array();
      
      $id_lista   = $id_lista_a['id_lprc'];
      $nivel      = $id_lista_a['nivel'];
      $num_ejerc  = $id_lista_a['num_ejerc'];
    

 ?>
<!DOCTYPE html>
<html>
<head>
  <title>Calculo diferencial</title>
    <meta name="viewport" content="width=device-width,  initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="shortcut icon" href="../image/icono.jpg">
    <link rel="stylesheet" href="../css/bootstrapset.css">
    <link rel="stylesheet" href="../css/port.css">
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <script src="http://code.jquery.com/jquery.js"></script>
    <script type="text/javascript" src="../js/en_accion.js"></script>

    <style type="text/css">
        .bn{
          color:#575757;
        }
        a.fenmat:hover,
        a.fenmat:focus {
          color: white;
          text-decoration: none;
          background-color:rgba(57, 146, 131, 1);
        }

    </style>
    <?php 
      $color_batalla = "rgba(57, 146, 131, .95)";
      $img_mat       = "int";
      $letbran       = "class='amounint'";
    ?>

</head>
<style type="text/css">
  
</style>
<body>
  <?php 
        include("../header.php");
    ?>
    <div class="container-fluid">
        <div class="row">    
            <div class="col-md-3 columleft">
                    <div class="panel panel-default fk">
                        <div class="panel-body">
                            <?php include("../vistas_principales/en_accion/marcadores.php"); ?>
                            
                            <?php include("../vistas_principales/en_accion/opciones.php");?>
                            
                            <?php include("../vistas_principales/en_accion/temas_relacionados.php"); ?>
                            
                        </div>
                    </div>
            </div>

            <div class="col-md-9 columrigth">
                <div class="panel panel-default">
                  <div class="panel-heading">
                      <div class="row">
                            <div class="media">
                                <div class="media-left media-middle">
                                  <img class="img-circle hidden-xs" src="../image/<?php echo $img_mat; ?>.jpg" alt="Generic placeholder image" width="70" height="70" style="margin-left:15px;">
                                </div>
                                <div class="media-body">
                                  <h3>Lista de ejercicios - <?php echo $name_n; ?></h3>
                                </div>
                            </div>
                      </div>
                  </div>
                  
                  <div class="panel-heading">
                    <span <?php echo $letbran; ?>><strong>Tipo de lista: </strong></span> Ejercicios de practica especifica
                  </div>
                  <div id="sector_cambio">
  <!--..............................................................................................................................-->         
                  <?php include("../vistas_principales/en_accion/presentacion_lista.php"); ?>             
                      <br><br>
<!--..............................................................................................................................-->                      
                  </div>
                </div>
            </div>
        </div>
    </div>
-
    <script src="http://code.jquery.com/jquery.js"></script>
  <script src="../js/bootstrap.min.js"></script>
    
</body>
</html>