<div class="col-md-8 col-md-offset-4">
<form id="ya" method="post" enctype="multipart/form-data"> 
	<div class="form-group">
			
		<label>Selecciona el inciso correcto</label>
		<select class="form-control" name='inc_correct'>
		<option>--</option>
		<?php
			include("../../../../config.php"); 
			$id_ejerc=$_POST['idman'];
			$buscar_in="SELECT * FROM opcion WHERE id_ejerc='$id_ejerc'";
			$e_buscar_in  = $conexion->query($buscar_in);
			while ($array=mysqli_fetch_array($e_buscar_in)) {
				$inciso = $array[1];
				$texto  = $array[3];
				echo "<option value='$inciso'>$inciso - $texto</option>";
			}
			echo "<input type='hidden' value='$id_ejerc' name='la_id'>"

		?>

		</select>
	</div>
	<div class="form-group">
		<button type='button' id='btn_ya' value='enviar' class='btn btn-success btn-sm'>Este es el inciso correcto</button>
	</div>
	<br><br>
</form>
</div>