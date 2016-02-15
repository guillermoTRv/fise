<?php 
    error_reporting(E_ALL ^ E_WARNING);
    global $prc;      $prc      = addslashes(htmlspecialchars(strip_tags(trim($_GET['prc']))));
    require("../ruta.php");
    include("../config.php");
    $name_b = "SELECT * FROM practicas_url WHERE name_limpio='$prc'";
    $name_e = $conexion->query($name_b);
    $name_a = $name_e->fetch_array();
    $name_n = $name_a[1];

    if ($name_n=='') {
        header("Location: $ruta/");
    }

    $id_lista_b = "SELECT * FROM l_prc WHERE name_lprc = '$name_n'";
    $id_lista_e =  $conexion->query($id_lista_b);
    $id_lista_a =  $id_lista_e->fetch_array();
      
      $id_lista   = $id_lista_a['id_lprc'];
      $nivel      = $id_lista_a['nivel'];
      $num_ejerc  = $id_lista_a['num_ejerc'];
?>