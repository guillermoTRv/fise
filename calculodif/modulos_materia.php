<br>
<?php 
  $modulos_a = array
  (
  array("Limites","",""),
  array("Derivadas de funciones algebraicas y trascendentes","","lineal"),
  array("Aplicaciones de las derivadas y teoremas importantes", "",""),
  array("Listas combinadas","","")
  );


  foreach ($modulos_a as $modulos_a) {
    include("../vistas_principales/practicas/plantilla_modulo.php");
  }

?>

  