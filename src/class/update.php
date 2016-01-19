<?php

/*
	Update class
*/


class update extends general{
	
	private $select;
	private $from; 
	private $where;
	private $end;
	private $set;
	
	function __construct(){
		$this->where = " 1 = 1 ";
		$this->end = "";
	}
	
	private function makeQuery(){
		
		return "UPDATE ".$this->table." SET ".$this->set." WHERE ".$this->where.$this->limit();
		
	}
	
	public function addCondition($condition){
		if(strlen($this->where)) $this->where .= " and ";
		$this->where .= " ".$condition." ";
	}
	public function addSet($key, $value){
		if($this->total){
			$this->set .= ", ";
		}
		if(gettype($value) == "string") $this->set .= $key." = '".$value."'";
		else $this->set .= $key." = ".$value;
		$this->total++;
	}
	
	public function showQuery(){
		return $this->makeQuery();
	}
	
	public function run(){
		return $this->runQuery($this->makeQuery());
	}

	
	
}

?>