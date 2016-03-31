<?php   
    error_reporting(E_ALL ^ E_WARNING);
    session_start();
    echo  $id_usuario = $_SESSION['id_usuario'];
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

             $estado_us_b = "SELECT estado,ejercicio,correctos FROM usuarios_practicas WHERE id_practica = '$id_lista' and id_usuario='$id_usuario'";
             $estado_us_e = $conexion->query($estado_us_b);
             $estado_us_a = $estado_us_e->fetch_array();
             $estado_us_n = mysqli_num_rows($estado_us_e);

             
             
?>