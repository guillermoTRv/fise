<!DOCTYPE html>
<?php 
	echo $mon = $_GET['mon'];
?>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <title>Paginación con PHP, Mysql, jQuery, Ajax y Bootstrap </title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
  </head>
  <body>
    <div class="container-fluid">
	  <div class="row">
		<div class="col-xs-12">
		<h3> Listado de Países </h3>
		<div id="loader" class="text-center"> <img src="loader.gif"></div>
		<a href="?h=s">jhgfjhg</a>
		<?php  
			$m=$_GET['h'];
			if ($m=='s') {
				echo "sory";
			}
			else{
				echo '<div class="outer_div"></div>';
			}
		?>
		<!-- Datos ajax Final -->
		</div>
	  </div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
 		
  </body>
</html>
	<script>
	$(document).ready(function(){
		load(1);
	});
 
	function load(page){
		var parametros = {"action":"ajax","page":page,"materia":"<?php echo $mon; ?>","unidad":"dospuntocero"};
		$("#loader").fadeIn('slow');
		$.ajax({
			url:'http://localhost/cambio/paginacion/paises_ajax.php',
			data: parametros,
			 
			success:function(data){
				$(".outer_div").html(data).fadeIn('slow');
				$("#loader").html("");
			}
		})
	}
	</script>