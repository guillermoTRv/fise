<?php 
	if (isset($_GET['pos'])) {
				$ini=$_GET['pos'];
			}
			else{$ini=1;}
			$limit_end=6;
			$init=($ini-1)*$limit_end;

			if ($tipo_cosulta=="todo") {
				include("../scripts/practicas/consulta_todos.php");
			}
			if ($tipo_cosulta=="condicional") {
				include("../scripts/practicas/consulta_where.php");
			}


			if ($x!=0) {
			echo "<div>";
			echo "<ul style='margin-left:8px;' class='pagination'>";
				
				if (($ini-1)==0) {
					echo"<li><a href='#'>&laquo;</a><li/>";
				}
				else{
					echo "<li><a href='?op=$op&pos=".($ini-1)."'><b>&laquo;</b></a></li>";
				}
				
				for ($k=1; $k<=$total ; $k++) { 
					
					if ($ini==$k) {
						echo"<li><a href='#'><b>".$k."</b></a></li>";
					}
					else{
						echo "<li><a href='?op=$op&pos=$k'>".$k."</a><li>";
					}
				}
				
				if ($ini==$total) {
					echo "<li><a href='#'>&raquo;</a></li>";
				}
				else{
					echo "<li><a href='?op=$op&pos=".($ini+1)."'><b>&raquo;</b></a></li>";
				}


				
				
			echo "</ul>";
			echo "</div>";
			}
			else{
				echo "<br><p class='fen'>Aun no hay listas en esta parte pero muy pronto veras una por aqui </p>";
			}

			
 ?>
