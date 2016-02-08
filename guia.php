<?php 
    error_reporting(E_ALL ^ E_NOTICE);
    global $prc;      $prc      = addslashes(htmlspecialchars(strip_tags(trim($_GET['prc']))));
    global $metaria; $materia = "Calculo diferencial"; 
    require("../ruta.php");
    include("../config.php");
    $name_b = "SELECT name_lprc,name_limpio FROM practicas_url WHERE name_limpio='$prc'";
    $name_e = $conexion->query($name_b);
    $name_a = $name_e->fetch_array();
    $name_n = $name_a[0];

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
    <script type="text/javascript" src="../js/agregarNuevaFila.js"></script>
    <script type="text/javascript" src="../js/modificarEstiloInputFile.js"></script>
    <link rel="stylesheet" href="../js/bootstrap.js">
    <script src="http://code.jquery.com/jquery.js"></script>
    <style type="text/css">
        .bn{
          color:#575757;
        }
    </style>
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
                                  <img class="img-circle hidden-xs" src="../image/int.jpg" alt="Generic placeholder image" width="70" height="70" style="margin-left:15px;">
                                </div>
                                <div class="media-body">
                                  <h3>Lista de ejercicios - <?php echo $name_n; ?></h3>
                                </div>
                            </div>
                      </div>
                  </div>
                  
                  <div class="panel-heading">
                    <span class='amounint'><strong>Tipo de lista: </strong></span> Ejercicios de practica especifica
                  </div>
                  <div id="sector_cambio">
  <!--..............................................................................................................................-->                      
                      <div class="panel-body fk">
                          <div class='row'>

                            <br>
                              <div id="el_ejercicio">
                                  <div class="col-md-5 col-md-offset-1">
                                    <img class="img-thumbnail img-responsive" src='../image/cv.jpg'  alt="Ecuacion exponencial">
                                  </div>

                                  <div class='col-md-4'>
                                    <form id="form_seccion" method='POST'>
                                      <legend>Ejercicio a desarrollar</legend>
                                      <div class="form-group">
                                        <label for="exampleInputEmail1">¿Cual es el valor de x?</label>
                                        <input type="text" name='rt' class="form-control" placeholder="solo numeros">
                                      </div>
                                      
                                      <button type="button" value="enviar" id="btn-enviar" class="btn btn-success btn-sm">Comprobar respuesta</button>
                                      <small id="m_s"></small>
                                    </form>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <br>
                      <br>
                      <div class="row">
                          <center>
                            <div style="border-bottom:solid #f2f2f2 2px;margin-left:13px;margin-right:13px;margin-bottom:20px;"><p></strong></p><br></div>
                          </center>
                      </div>
                      <div class="row">
                            <br>
                            <div class="col-md-10 col-md-offset-1">
                                <div style="backgroud-color:red;" class="progress">
                                    <div id="barra_ejerc">
                                      <div  class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
                                        Estas a punto de terminar
                                      </div>
                                    </div>
                                </div>
                                <br>
                            </div>
                      </div>
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



<!--<div class="radio">
                        <label>
                          <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                          No se puede
                        </label>hhhh
                      </div>
                      <div class="radio">
                        <label>
                          <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                          El resultado es una constante
                        </label>
                      </div>
                      <div class="radio">
                        <label>
                          <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                          El resultado es una variable
                        </label>
                      </div>-->