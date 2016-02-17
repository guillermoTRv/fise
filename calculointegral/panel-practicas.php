<?php 
   #ECHO  $url="http://".$_SERVER["HTTP_HOST"].$_SERVER["REQUEST_URI"];
   #ECHO "<br><a href='$url'>asasasasassasas</a>";
   #ECHO "<BR>".$url=$_SERVER["PHP_SELF"].$_SERVER["REQUEST_URI"];

 ?>
<?php 
    global $metaria; $materia = "Calculo integral"; 
?>
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
          $name_title    = "Calculo integral";
          $color_batalla = "rgba(57, 146, 131, 1)"; 
          $img_mat       = "int";
          include("../scripts/practicas/despachador_principal_listado_practicas.php");
?>
