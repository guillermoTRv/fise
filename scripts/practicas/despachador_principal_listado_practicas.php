<?php 
    error_reporting(E_ALL ^ E_WARNING ^ E_NOTICE);
    global $op;      $op        = addslashes(htmlspecialchars(strip_tags(trim($_GET['op']))));
    global $mod;      $mod      = addslashes(htmlspecialchars(strip_tags(trim($_GET['mod']))));
    session_start();
    $id_usuario = $_SESSION['id_usuario'];
    include("../ruta.php");
    include("../config.php");
    include("../input_toquen.php");

?>
<!DOCTYPE html>
<html>
<head>
  <title><?php echo $name_title; ?></title>
    <meta name="viewport" content="width=device-width,  initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="shortcut icon" href="../image/icono.jpg">
    <link rel="stylesheet" href="../css/bootstrapset.css">
    <link rel="stylesheet" href="../css/port.css">
    <link rel="stylesheet" href="../js/bootstrap.js">
</head>
<style type="text/css">
  a.ir{text-decoration: none;}
  a.ir:hover{text-decoration:none;}
  a.avn{
    text-decoration: none;
    color: black;
  }
  a.avn:hover{
    text-decoration: none;
    color: black;
  }
</style>
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
    <?php include("../footer_fise.php") ?>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script>
    $(document).ready(function(){
        load(1);
    });
 
    function load(page){
        var parametros = {
            "action":"ajax",
            "page":page,
            "materia":"<?php echo $materia ?>",
            "op":"<?php echo $op; ?>",
            "mod":"<?php echo $mod; ?>",
            "fg":"<?php echo $id_usuario; ?>"
            };
        $.ajax({
            url:'../paginacion_practicas.php',
            data: parametros,
             
            success:function(data){
                $(".outer_div").html(data).fadeIn('slow');
            }
        })
    }
    </script>
</body>
</html>