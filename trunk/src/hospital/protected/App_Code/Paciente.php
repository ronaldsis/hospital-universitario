<?php
	class Paciente{
		public $id;
		public $idPersona;
		public $idHistoriaClinica;
		
		public function getId(){ return $this->id; }
		
		public function getIdPersona(){ return $this->idPersona; }
		
		public function getIdHistoriaClinica(){ return $this->idHistoriaClinica; }
		
		public function setId($id){ $this->id = $id; }
		
		public function setIdPersona($idPersona){ $this->idPersona = $idPersona; }
		
		public function setIdHistoriaClinica($idHistoriaClinica){ $this->idHistoriaClinica = $idHistoriaClinica; }
		
	}
?>