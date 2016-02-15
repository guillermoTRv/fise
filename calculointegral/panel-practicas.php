<?php 
   #ECHO  $url="http://".$_SERVER["HTTP_HOST"].$_SERVER["REQUEST_URI"];
   #ECHO "<br><a href='$url'>asasasasassasas</a>";
   #ECHO "<BR>".$url=$_SERVER["PHP_SELF"].$_SERVER["REQUEST_URI"];

 ?>
<?php 
    error_reporting(E_ALL ^ E_WARNING ^ E_NOTICE);
    global $op;      $op      = addslashes(htmlspecialchars(strip_tags(trim($_GET['op']))));
    global $metaria; $materia = "Calculo integral"; 
    include("../ruta.php");
    include("../config.php");
    include("../input_toquen.php");

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
        .n{border-radius: }

        a.fenmat:hover,
        a.fenmat:focus {
          color: white;
          text-decoration: none;
          background-color:rgba(57, 146, 131, 1);
        }
    </style>
    <?php 
          $color_batalla = "rgba(57, 146, 131, 1)"; 
          $img_mat       = "int";
    ?>
</head>

<body>
  <?php 
        include("../header.php");
    ?>
    <div class="container-fluid">
      <div class="row">
        <?php 
          require("../vistas_principales/practicas/barra_izquierda.php"); 
        ?>
        <div class="col-md-9 columrigth">
          <div class="panel panel-default">
              <?php  
                require("../scripts/practicas/controlador_vistacentral.php");
              ?>
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