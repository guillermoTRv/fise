<?php
    include("../ruta.php");
    include("../config.php"); 
    #nsession_start();
    #if ($_SESSION['panal']!='memo') {
    # header('Location:http://fiseaprende.com');
    #}
   
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Administrador</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/cssadmi.css" rel="stylesheet">

        <link href="jumbotron.css" rel="stylesheet">

    <script src="js/ie-emulation-modes-warning.js"></script>
    <script type="text/javascript" src="js/agregarNuevaFila.js"></script>
    <script type="text/javascript" src="js/modificarEstiloInputFile.js"></script>
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="../js/jqueryv.js"></script>
    <style>
      a.{text-decoration:none;}
      a:hover{text-decoration:none;}
    </style>
  </head>

  <body>
    <?php include("/headerad.php"); ?>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a>Hola memo<span class="sr-only">(current)</span></a></li>
            <li><a href="?">Indicadores basicos</a></li>
            <li><a href="?ty=retos">Subir reto</a></li>
            <li><a href="?ty=practicas">Practicas</a></li>
            <li><a href="?ty=discusiones">Discusiones</a></li>
            <li><a href="?ty=scr">Registro suscripciones</a></li>
            
            <br>
            <li role="presentation"><a href="<?php echo $ruta; ?>/ad/cerrar.php">Cerrar sesion</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-md-10  col-md-offset-2 col-sm-offset-3">
          <br>
          <?php 
          error_reporting(E_ALL ^ E_NOTICE);
          $ty      =$_GET['ty'];
          if (empty($ty)      ) {include("ind_basicos/ind_basicos.php");}
          if ($ty=='retos'    ) {include("reto_momento/reto_momento.php");}
          if ($ty=='practicas') {include("practicas/practicas.php");}
          if ($ty=='scr'      ) {include("src/src_principal.php");}
          if ($ty=='discusiones') {include("disc/discusiones.php");}
           ?>
        </div>
      </div>
    </div>
  </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>