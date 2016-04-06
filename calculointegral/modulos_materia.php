<br>
<?php 
  $modulos_a = array
  (
  array("Integración básica de funciones algebraicas y trascendentes ","",""),
  array("Uso de métodos de integración por partes ","",""),
  #array("Métodos de integración por sustitución trigonométrica","",""),
  #array("Métodos de integración por fracciones parciales ","",""),
  #array("Métodos de integración por racionalización","",""),
  array("Integración básica definida y calculo de áreas","",""),
  array("Uso diverso de la integración definida","",""),
  array("Listas combinadas","lista-combinada","")
  );


  foreach ($modulos_a as $modulos_a) {
    include("../vistas_principales/practicas/plantilla_modulo.php");
  }

?>