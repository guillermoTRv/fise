<br>
<?php 
  $modulos_a = array
  (
  array("Integracion basica de funciones algebraicas y trascendetes","",""),
  array("Metodos de integracion por partes","",""),
  array("Metodos de integracion sustitucion trigonometrica","",""),
  array("Metodos de integracion por fracciones parciales","",""),
  array("Metodos de integracion por racionalizacion","",""),
  array("Integracion basica definida y calculo de areas","",""),
  array("Uso diverso de la integracion definida","",""),
  array("Listas combinadas","lista-combinada","")
  );


  foreach ($modulos_a as $modulos_a) {
    include("../vistas_principales/practicas/plantilla_modulo.php");
  }

?>