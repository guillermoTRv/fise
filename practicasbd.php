<?php

require("autoload.php");

$selectData = new select();

$selectData->table("retos_pack");
$selectData->addSelect("*");
$selectData->addCondition("mens_salida='a5'");
$selectData->run();

$resultados = $selectData->getResults();

echo "<br>oye-------------". $resultados['0']['pregunta'];

print_r($resultados);
echo '<p>' . implode('</p><p>', $resultados[0]) . '</p>';

foreach( $resultados as $row){
   echo "<br>".$row['mens_salida']."<br>";
}

echo $selectData->getTotal(); 

echo "<br>".$selectData->getQuery(); 
echo "<br>".$selectData->getError(); 


?>