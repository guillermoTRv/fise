<div class="row">
			<div class="col-md-7">
				<table class="table ">
			    <thead>
			        <tr>   
			          <th>Materia</th>
			          <th>Contenidos</th>
			        </tr>
			    </thead>
			    <tbody>
			    	<?php include("ind_basicos/maters.php"); ?>				        	   	
		        </tbody>
			</table>

			</div>
		</div>
		<?php 
		    error_reporting(E_ALL ^ E_NOTICE);
		    $mat_a=$_GET['mat'];
			if (isset($mat_a)) {
			include("ind_basicos/conteounidades.php");		
			}
		?>