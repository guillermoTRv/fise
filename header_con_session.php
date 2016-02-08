<ul class="nav navbar-nav navbar-right">
	<li class="dropdown">
		<a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span>
		<?php 
			echo $_SESSION['name_user'];
		?>&nbsp;&nbsp;
		<span class="caret"></span>
		</a>
		<ul class="dropdown-menu hoverhead">
			<li><a href="<?php echo $ruta ?>/usuario/users?ini=inicio">Panel usuario</a></li>
			<li><a href="<?php echo $ruta ?>/usuario/users?cs=cs&tb=tb">Contenidos Guardados</a></li>
			<li><a href="<?php echo $ruta ?>/usuario/users?pref=pref&tb=tb">Preferencias</a></li>
			<li class="divider"></li>
			<li><a href="<?php echo $ruta ?>/usuario/cerrarfise">Cerrar Sesion</a></li>
		</ul>
	</li>
</ul>