<?php 
    error_reporting(E_ALL ^ E_NOTICE);
    global $op;      $op      = addslashes(htmlspecialchars(strip_tags(trim($_GET['op']))));
    global $metaria; $materia = "Calculo diferencial"; 
    require("../ruta.php");
   ECHO  $url="http://".$_SERVER["HTTP_HOST"].$_SERVER["REQUEST_URI"];
   ECHO "<br><a href='$url'>asasasasassasas</a>";
   ECHO "<BR>".$url=$_SERVER["PHP_SELF"].$_SERVER["REQUEST_URI"];

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
    <link rel="stylesheet" href="../js/bootstrap.js">

    <style type="text/css">
        .bn{
          color:#404040;
        }
    </style>
    <style type="text/css">.n{border-radius: }</style>

</head>

<body>
  <?php 
        require("../vistas_principales/header.php");
    ?>
    <div class="container-fluid">
      <div class="row">
        <?php 
          require("../vistas_principales/practicas/barra_izquierda.php"); 
        ?>
        <div class="col-md-9 columrigth">
          <div class="panel panel-default">
              <div class="panel-heading">
                  <div class="row">
                    <div class="media">
                        <div class="media-left media-middle">
                            <img class="img-circle hidden-xs" src="../image/int.jpg" alt="Generic placeholder image" width="70" height="70" style="margin-left:15px;">
                        </div>
                        <div class="media-body">
                           <h3>Espacio de practicas para la materia de Calculo Integral</h3>
                        </div>
                    </div>
                  </div>
              </div>
              <div class="panel-heading">
                  Numero de listas por Aplicaciones particulares: <span class='amounint'><strong>8 listas</strong></span>
              </div>
              <div class="panel-body fk">
                  <div class='row'>
                      <div style="margin-top:9px;"></div>
                      <div class="col-md-10">
                          <div class='panel panel-default pan'>
                              <div class='panel-body'>
                                      <p class='ptit'>Ejercicios de Ecuaciones diferenciales y campos magneticos</p>
                                      <p>Aplicaciones particulares - 10 ejercicios - Dificultad:Mixta</p>
                                      <p><span class="label label-warning"><span class='glyphicon glyphicon-remove'></span></span> Aun no realizada  -  <a href="#">Realizar</a></p>
                              </div>
                          </div>
                          <div style="margin-top:34px;"></div>
                          <div class='panel panel-default pan'>
                              <div class='panel-body'>
                                      <p class='ptit'>Ejercicios de Ecuaciones diferenciales y campos magneticos</p>
                                      <p>Aplicaciones particulares - 10 ejercicios - Dificultad:Mixta</p>
                                      <p><span class="label label-success"><span class='glyphicon glyphicon-ok'></span></span> Realizada - <a href="#">volver a realizar</a></p>
                              </div>
                          </div>
                          <div style="margin-top:34px;"></div>
                          <div class='panel panel-default pan'>
                              <div class='panel-body'>
                                      <p class='ptit'>Ejercicios de Ecuaciones diferenciales y campos magneticos</p>
                                      <p>Aplicaciones particulares - 10 ejercicios - Dificultad:Mixta</p>
                                      <p><span class="label label-success"><span class='glyphicon glyphicon-ok'></span></span> Realizada - <a href="#">volver a realizar</a></p>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <br>
              <div class="row">
                <center>
                <div style="border-bottom:solid #f2f2f2 2px;margin-left:13px;margin-right:13px;margin-bottom:60px;"><p></strong></p><br></div>
                </center>
              </div>
          </div>
        </div>
      </div>
    </div>

    <script src="http://code.jquery.com/jquery.js"></script>
  <script src="../js/bootstrap.min.js"></script>    
</body>
</html>