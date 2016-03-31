<?php 
	include("../../config.php");
	include("../../sanitizar.php");
	include("../../input_toquen.php");
	$id_lista           = sanitizar($_POST['comenzar']);
	$ejercicio_quedado  = sanitizar($_POST['ejercicio']);
	$correctos          = sanitizar($_POST['correcto']);

	$puntuaje = $correctos;
	
	$id_ejercicio_b   = "SELECT id_ejerc FROM ejercicios WHERE id_lprc = '$id_lista' order by id_ejerc asc";
	$id_ejercicio_e   = $conexion->query($id_ejercicio_b);
	$id_ejercicio_a   = $id_ejercicio_e->fetch_array();

	$id_ejercicio_c       = $id_ejercicio_a['id_ejerc'];
	$id_ejerc             = $id_ejercicio_c + $ejercicio_quedado - 1;

	$id_ejercicio_poner_b = "SELECT lugar,pregunta,clasf,type,mens_err,mens_acert,nivel,puntuaje FROM ejercicios WHERE id_ejerc = '$id_ejerc'";
	$id_ejercicio_poner_e = $conexion->query($id_ejercicio_poner_b);
	$id_ejercicio_poner_a = $id_ejercicio_poner_e->fetch_array();

	$lugar			=  $id_ejercicio_poner_a[0];
	$pregunta		=  $id_ejercicio_poner_a[1];
	$clasf			=  $id_ejercicio_poner_a[2];
	$type			=  $id_ejercicio_poner_a[3];
	$mens_err		=  $id_ejercicio_poner_a[4];
	$mens_acert     =  $id_ejercicio_poner_a[5];
	$nivel			=  $id_ejercicio_poner_a[6];

	if ($type=='te') {
		$tipo_b = "SELECT placeh,rang_one,rang_two FROM ejercicios WHERE  id_ejerc = '$id_ejerc'";
		$tipo_e = $conexion->query($tipo_b);
		$tipo_a = $tipo_e->fetch_array();
		global $placeh;    $placeh   = $tipo_a[0];
		global $rang_one;  $rang_one = $tipo_a[1];
		global $rang_two;  $rang_two = $tipo_a[2];
	}
	if ($type=='op' ) 
	{
		$tipo_b = "SELECT true_op FROM ejercicios WHERE  id_ejerc = '$id_ejerc'";
		$tipo_e = $conexion->query($tipo_b);
		$tipo_a = $tipo_e->fetch_array();
		global $true_op;  $true_op   = $tipo_a[0]; 
	}

	$tr_imagen_b = "SELECT * FROM img_ejerc WHERE id_ejerc='$id_ejerc'";
	$tr_imagen_e = $conexion->query($tr_imagen_b);
	$tr_imagen_a = $tr_imagen_e->fetch_array();

	$name_img = $tr_imagen_a[2];
	
	#-------------------------------------------------------------------------------------------------------

	#-------------------------------------------------------------------------------------------------------

	$num_ejerc_b = "SELECT id_ejerc FROM ejercicios WHERE id_lprc = '$id_lista'";
	$num_ejerc_e = $conexion->query($num_ejerc_b);
	$num_ejerc_n = mysqli_num_rows($num_ejerc_e);

	$errores = $ejercicio_quedado - $correctos - 1;


	$resta_uno       = $id_ejerc-$id_ejercicio_c;
    $conteo         = ($resta_uno/$num_ejerc_n)*100;
    $barra          = "
    				<div class='row'>
    <br>
    <div class='col-md-10 col-md-offset-1'>
      <div style='backgroud-color:red;' class='progress'>
        <div id='barra_ejerc'>
          <div  class='progress-bar' role='progressbar' aria-valuenow='60' aria-valuemin='0' aria-valuemax='100' style='width: $conteo%;'>
                      $conteo
                  </div>         
        </div>
      </div>
      <br>
    </div>
</div>

    			"; 
         $linea = '<div class="row"><center>
        	<div style="border-bottom:solid #f2f2f2 2px;margin-left:13px;margin-right:13px;margin-bottom:20px;"><p></strong></p><br></div>
      	  </center></div>';        


	if ($type=='te') {
      	include("ejercicio_te.php");
      	echo $linea;
      	echo $barra;	
      	
    }
    if ($type=='op') {
      	include("ejercicio_op.php");
    	echo $linea;
    	echo $barra;

    }


?>


  
 