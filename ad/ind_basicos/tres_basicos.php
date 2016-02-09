<?php 
		$uno="SELECT COUNT(*) FROM usuariosfise";
		$euno=$conexion->query($uno);
		$x=$euno->fetch_array();
		$user=$x[0];

		$dos="SELECT COUNT(*) FROM ficha_contenido_materia";
		$edos=$conexion->query($dos);
		$xf=$edos->fetch_array();
		$fichas=$xf[0];
	        
	        $tres="SELECT COUNT(*) FROM recomendaciones_mat";
		$etres=$conexion->query($tres);
		$xg=$etres->fetch_array();
		$reco=$xg[0];
	 ?>
		<div class="row"> 
			<div class="col-md-7">
				<table class="table ">
			    <thead>
			        <tr>   
			          <th>Indicador</th>
			          <th>Número</th>
			        </tr>
			    </thead>
			    <tbody>
			    	<tr>
			          <td>Número de usuarios registrados</td>
			          <td><?php echo $user ?></td>
			        </tr>

			        <tr>
			          <td>Número de contenidos registrados</td>
			          <td><?php echo $fichas ?></td>
			        </tr>

		                <tr>
			          <td><a href="?reco=true">Recomendaciones pedidas</a></td>
			          <td><?php echo $reco ?></td>
			        </tr>
			   	</tbody>
			</table>
			</div>
		</div>
		<?php 
		    error_reporting(E_ALL ^ E_NOTICE);
		    $reco=$_GET['reco'];
			if (isset($reco)) {
				include("ind_basicos/recomendaciones_numeros.php");
			}
		 ?>