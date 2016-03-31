<?php 
	function sanitizar($varr){
		$varr = addslashes(htmlspecialchars(strip_tags(trim($varr))));
		return $varr;
	}
?>