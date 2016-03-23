<br>
<?php 
  $modulos_a = array
  (
  array("Limites","matrices","lineal"),
  array("Derivadas de funciones algebraicas trascendentes","determinantes","lineal"),
  array("Aplicaciones de las derivadas y uso de teoremas", "",""),
  array("Listas combinadas","","")
  );


  foreach ($modulos_a as $modulos_a) {
    include("../vistas_principales/practicas/plantilla_modulo.php");
  }

?>

  