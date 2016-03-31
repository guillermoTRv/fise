<?php 
    error_reporting(E_ALL ^ E_WARNING);
    include("ruta.php");
    include("config.php");
 ?>


<!DOCTYPE html>
<html>
<head>
  <title>Matematicas y más</title>
  <meta name="viewport" content="width=device-width,  initial-scale=1.0">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <link rel="stylesheet" href="css/bootstrapset.css">
  <link rel="stylesheet" href="css/inx.css">
  <link rel="shortcut icon" href="image/icono.jpg">
  <link rel="stylesheet" href="js/bootstrap.js">
  <link href="css/carousel.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Raleway:300' rel='stylesheet' type='text/css'>  <script src="http://code.jquery.com/jquery.js"></script>
  <style>
      .img-circle-adv {
          border-radius: 25px;
          border:solid 2px #5a5a5a;
          line-height: 1.42857143;
          padding: 4px;
      }
      .gjh{
        margin-left:-50px;
      }
      .bonito{font-family: 'Raleway', sans-serif; font-size: 1.5em;color:black;}
      .bon{font-family: 'Raleway'}
  </style>
</head>
<body>
  <?php include("header.php") ?>

  <div class="momet">
    <div class="contmomet">
      <h1 class="aches" ALIGN=center>Explora, practica, comparte y aprende</h1>
      <p class='textmomet'>Se parte de un gran espacio para el estudio de las matematicas y </p>
      <p class='textmomet'>Consulta en nuestros repositorios contenidos como videos, apuntes, diapositivas, fomrularios y mas, distribuidos en 10 materia <br></p>
      <p class='textmomet'>Practica ejercicios teoricos y de aplicacion para materias como calculo o algebra <br></p>
      <p class='textmomet'>Se parte de nuestras discusiones semanales que tenemos para hablar de diferentes temas matermaticos <br></p>

    </div>
  </div>

    <div class="container marketing">
      <br>
        <?php include("vistas_principales/inx/retos.php"); ?>
      
        <div class="gjh">
        <h2 style="font-size:2.5em;text-align:center;"><?php $jk='Catalogo de materias de Matematicas basicas'; echo utf8_encode($jk); ?></h2>
        <br>
        <br>
      </div>
        <?php include('vistas_principales/inx/listado.php') ?>
      <br>
      <hr>
      <br>
      <br>
      <center><div><h2 style='font-size:2.5em;'>Matemáticas avanzadas</h2></div></center>
      <br>
      <br>
      <div class="row">
        <div class="col-lg-4">
          <img class="img-circle-adv" src="image/cmv.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Calculo avanzado</h2>
          <p><a class="btn btn-default" href="http://fiseaprende.com/c-avanzado/lista-calculo" role="button">Ver indice &raquo;</a></p>
        </div>
        <div class="col-lg-4">
          <img class="img-circle-adv" src="image/lineal.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Algebra lineal</h2>          
          <p><a class="btn btn-default" href="http://www.fiseaprende.com/lineal/lista-algebralineal" role="button">Ver indice &raquo;</a></p>
        </div>
        <div class="col-lg-4">
          <img class="img-circle-adv" src="image/ecudif.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Ecuaciones diferenciales</h2>          
          <p><a class="btn btn-success" href='http://fiseaprende.com/diferenciales/lista-diferenciales' role="button">Ver indice &raquo;</a></p>
        </div> 
      </div>
      <br>     <br>
      
      <br>
      
      <hr class="featurette-divider">
      <div class="row">
        <div class="col-md-7 col-md-push-5">
          <h2>Algo que ayudara mucho a mejorar la comunidad<span class="text-muted"> tomale foto a un apunte</span></h2>
          <p class="bonito">Un lema en fise es compartir y aprender, una dinamica que queremos tener aqui es que si tienes un ejercicio resuelto, diagrama, mapa conceptual, texto, etc, en tu cuaderno le tomes una foto y la subas, sera tu buena obra del dia compartir un poco de conocimiento, de seguro a alguien le servira mucho y te lo agradecera, ademas muy pronto podras obtener un beneficio economico por ello</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block img-thumbnail" src="image/library-488691_1280.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">
      
      <div class="row">
        <div class="col-md-7">
          <h2>Nuestro objetivo - Ser una grandiosa biblioteca digital  </h2>
          <p class='bonito'>Queremos contribuir a organizar de una mejor manera la informacion sobre matematicas y ciencias que hay en el internet, de tal que forma que el acceso a esta sea de una forma mas comoda, amena y confiable</p> 
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block img-thumbnail" src="image/student-732012_1280.jpg" alt="Generic placeholder image">
        </div>
      </div>
      
      <hr class="featurette-divider">
      
      <div class="row">
        <div class="col-md-7 col-md-push-5">
          <h2>Aqui entraras un increible espacio para poner en practica tus conocimientos</h2>
          <p class="bonito">Unete, somos un sitio en donde se recomiendan y se comparten contenidos tales como ejercicios resueltos, de practica, videos, apuntes de cuadernos, aplicaciones digitales, textos en linea, formularios, presentaciones y sitios web relacionados con las matematicas y las ciencias, poseemos un sistema de organizacion de la informacion que te permitira encontrar algun material mas sencillamente ademas de que los contenidos son calificados por la comunidad para que tu puedas decidir en cual confiar mas a la hora de estudiar, accede y encuentra mas de 671 temas organizados en 9 materias</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block img-thumbnail" src="image/mathematics-101264_1280.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->
      <?php include('footer_fise.php'); ?>
    </div><!-- /.container -->
 <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://code.jquery.com/jquery.js"></script>-->
  <script src="js/jqueryv.js"></script>
  <script src="js/bootstrap.min.js"></script>
</body>
</html>                 