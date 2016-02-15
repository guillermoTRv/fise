<div class="container">
		<header>
			<nav class="navbar navbar-default navbar-fixed-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"  data-target="#navbar-1" aria-expanded="false">
        				<span class="sr-only"></span>
        				<span class="icon-bar"></span>
        				<span class="icon-bar"></span>
        				<span class="icon-bar"></span>
      					</button>
						<a style="font-size:1.45em;" href="<?php echo $ruta; ?>" class="unodos navbar-brand">Fise</a>
					</div>
					<div class="collapse navbar-collapse" id="navbar-1">
						<ul class="nav navbar-nav">
							
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" >
									Materias basicas<span class="caret"></span>
								</a>
								<ul class="dropdown-menu hoverhead">
            						<li><a href="<?php echo $ruta ?>/basica/lista-algebrabasica">Algebra basica</a></li>
            						<li><a href="<?php echo $ruta ?>/algintermedia/lista-algintermedia">Algebra intermedia</a></li>
            						<li><a href="<?php echo $ruta ?>/trigonometria/lista-trigonometria">Trigonometria</a></li>
            						<li><a href="<?php echo $ruta ?>/geometrianalitica/lista-geometria">Geometria</a></li>
            						<li><a href="<?php echo $ruta ?>/estadistica/lista-estadistica">Estadistica</a></li>
            						<li><a href="<?php echo $ruta ?>/calculodif/lista-diferencial">Calculo Diferencial</a></li>
            						<li><a href="<?php echo $ruta ?>/calculointegral/lista-integral">Calculo Integral</a></li>
            					</ul>
							</li>
						</ul>
						<ul class="nav navbar-nav">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" >
									Materias avanzadas<span class="caret"></span>
								</a>
								<ul class="dropdown-menu hoverhead">
									<li><a href="<?php echo $ruta ?>/c-avanzado/lista-calculo">Calculo Avanzado</a></li>
                                    <li><a href="<?php echo $ruta ?>/lineal/lista-algebralineal">Algebra lineal</a></li>
                                    <li><a href="<?php echo $ruta ?>/diferenciales/lista-diferenciales">Ecuaciones Diferenciales</a></li>
								</ul>
							</li>
						</ul>
						<ul class="nav navbar-nav">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" >
									Sesiones de practica<span class="caret"></span>
								</a>
								<ul class="dropdown-menu hoverhead">
									<li><a href="<?php echo $ruta.'/calculodif/panel-practicas';?>">Calculo Diferencial</a></li>
            						<li><a href="<?php echo $ruta.'/calculointegral/panel-practicas';?>">Calculo Integral</a></li>
									<li><a href="<?php echo $ruta.'/c-avanzado/panel-practicas' ?>">Calculo Avanzado</a></li>
                                    <li><a href="<?php echo $ruta.'/lineal/panel-practicas' ?>">Algebra lineal</a></li>
                                    <li><a href="<?php echo $ruta.'/diferenciales/panel-practicas' ?>">Ecuaciones Diferenciales</a></li>
								</ul>
							</li>
						</ul>
						<ul class="nav navbar-nav">
							<li><a href="#">Mapa del sitio</a></li>
						</ul>

						<?php 
						    session_start();
				            if (!isset($_SESSION['usuario'])) {
					                include("header_sin_session.php");
					        }
					        else{ 
					                include("header_con_session.php");
					        }
						?>

					</div>

				</div>

			</nav>
			<?php 
				if (!isset($_SESSION['usuario'])) {
					include("formulario_login.php"); 
				}
				else{      }
			?>
	    </header>
	   
</div>	