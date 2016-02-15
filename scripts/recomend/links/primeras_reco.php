<?php 
	if ($materia=="Algebra basica") {
		echo "
                <a style='text-decoration:none' href='$ruta/basica/recobas?rec=$id_r'>
                    <p class='lreco'><span class='glyphicon glyphicon-comment'></span>
                        $texto_r
                    </p>
                </a>
            ";
	}
	if ($materia=="Algebra intermedia") {
		echo "
                <a style='text-decoration:none' href='$ruta/algintermedia/recoalg?rec=$id_r'>
                    <p class='lreco'><span class='glyphicon glyphicon-comment'></span>
                        $texto_r
                    </p>
                </a>
            ";
	}
	if ($materia=="Trigonometria") {
		echo "
                <a style='text-decoration:none' href='$ruta/trigonometria/recotrig?rec=$id_r'>
                    <p class='lreco'><span class='glyphicon glyphicon-comment'></span>
                        $texto_r
                    </p>
                </a>
            ";
	}
	if ($materia=="Geometria analitica") {
		echo "
                <a style='text-decoration:none' href='$ruta/geometrianalitica/recogeo?rec=$id_r'>
                    <p class='lreco'><span class='glyphicon glyphicon-comment'></span>
                        $texto_r
                    </p>
                </a>
            ";
	}
	if ($materia=="Estadistica") {
		echo "
                <a style='text-decoration:none' href='$ruta/estadistica/recoest?rec=$id_r'>
                    <p class='lreco'><span class='glyphicon glyphicon-comment'></span>
                        $texto_r
                    </p>
                </a>
            ";
	}
	if ($materia=="Calculo diferencial") {
		echo "
                <a style='text-decoration:none' href='$ruta/calculodif/recodif?rec=$id_r'>
                    <p class='lreco'><span class='glyphicon glyphicon-comment'></span>
                        $texto_r
                    </p>
                </a>
            ";
	}
	if ($materia=="Calculo integral") {
		echo "
                <a style='text-decoration:none' href='$ruta/calculointegral/recoint?rec=$id_r'>
                    <p class='lreco'><span class='glyphicon glyphicon-comment'></span>
                        $texto_r
                    </p>
                </a>
            ";
	}
        if ($materia=="Calculo avanzado") {
		echo "
                <a style='text-decoration:none' href='$ruta/c-avanzado/recocalculo?rec=$id_r'>
                    <p class='lreco'><span class='glyphicon glyphicon-comment'></span>
                        $texto_r
                    </p>
                </a>
            ";
	}
        if ($materia=="Algebra lineal") {
		echo "
                <a style='text-decoration:none' href='$ruta/lineal/recolineal?rec=$id_r'>
                    <p class='lreco'><span class='glyphicon glyphicon-comment'></span>
                        $texto_r
                    </p>
                </a>
            ";
	}
        if ($materia=="Ecuaciones diferenciales") {
		echo "
                <a style='text-decoration:none' href='$ruta/diferenciales/recodiferenciales?rec=$id_r'>
                    <p class='lreco'><span class='glyphicon glyphicon-comment'></span>
                        $texto_r
                    </p>
                </a>
            ";
	}
 ?>