<?php 
	$bcomentarios="SELECT id_fichamat,id_comentmat,id_user,texto_coment,link,fecha_registro_comentmat FROM comentarios_mat WHERE id_fichamat='$cont' ORDER BY id_comentmat desc";
	$ecomentarios=$conexion->query($bcomentarios);
	while ($vcomentarios=mysqli_fetch_array($ecomentarios)) {
		$fichacha =   $vcomentarios['id_comentmat'];
		$coment   =   $vcomentarios['texto_coment'];
		$link     =   $vcomentarios['link'];
		$id_user  =   $vcomentarios['id_user'];
		$fecha_c  =   $vcomentarios['fecha_registro_comentmat'];
		$fecha    = substr($fecha_c, 0, 10);
        $buser    =  "SELECT id_user,name_user FROM usuariosfise WHERE id_user='$id_user'";
		$euser    =   $conexion->query($buser);
		$x        =   $euser->fetch_array();
		$nombre   =   $x[1];
	

	echo"
		<div class='row coment'>
            <div class='media'>
                <div class='media-left'>
                    <img class='imgcoment' src='http://mertasan.com/upload/resimler/020ce1ab3b.jpg' alt='Generic placeholder image' width='70px' height='70px' >
                </div>
                <div class='media-body'>
                    <p class='pcoment'>$coment</p>";
                        if ($link!='') {
                        	echo "<a class='etiqa' href=$link>$link</a><br>";
                        }
                        
                        echo "<span><strong>&nbsp;$nombre &nbsp; $fecha &nbsp;</strong></span>
                </div>
            </div>
        </div>";

        /*error_reporting(E_ALL ^ E_NOTICE);
        session_start();
                
            if (!isset($_SESSION['usuario'])) {
                include("modalcomentsin.php");
            }
            else{ 
                include("modalcoment.php");
            }
        
            
        }*/
    }

 ?>
