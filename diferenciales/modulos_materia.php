<br>
<?php 
  $modulos_a = array
  (
  array("Introducción a las EDO","",""),
  array("Ecuaciones diferenciales de primer orden","",""),
  array("Ecuaciones diferenciales de orden superior","",""),
  array("Series, laplace y ecuaciones diferenciales","",""),
  array("Sistemas de EDO y Metodos Númericos","",""),
  array("Introducción EDP","",""),
  array("Listas combinadas","","")
  );


  foreach ($modulos_a as $modulos_a) {
    include("../vistas_principales/practicas/plantilla_modulo.php");
  }

?>

  