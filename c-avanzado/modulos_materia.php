<br>
<?php 
  $modulos_a = array
  (
  array("Derivadas parciales","matrices",""),
  array("Integrales multiples basico","",""),
  array("Calculo vectorial y teoremas importantes","",""),
  array("Listas convinadas","","")
  );


  foreach ($modulos_a as $modulos_a) {
    include("../vistas_principales/practicas/plantilla_modulo.php");
  }

?>

  