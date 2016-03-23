<br>
<?php 
  $modulos_a = array
  (
  array("Matrices","matrices","lineal"),
  array("Determinantes","determinantes","lineal"),
  array("Espacios vectoriales","espacios-vectoriales","lineal"),
  array("Transformaciones lineales","transformaciones-lineales","lineal"),
  array("Valores y vectores caracteristicos","valores-y-vectores-caracteristicos","lineal"),
  array("Ortogonalidad y producto punto","ortogonalidad-y-producto-punto","lineal"),
  array("Otras unidades","otras-unidades","lineal"),
  array("Listas combinadas","lista-combinada","lineal")

  );


  foreach ($modulos_a as $modulos_a) {
    include("../vistas_principales/practicas/plantilla_modulo.php");
  }

?>
