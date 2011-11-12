<?php
	class Persona{
		public $id;
		public $cedula;
		public $nombre;
		public $apellido;
		public $fechaNacimiento;
		public $telefono;
		public $direccion;
		
		public function getId(){ return $this->id; }
		
		public function getCedula(){ return $this->cedula; }
		
		public function getNombre(){ return $this->nombre; }
		
		public function getApellido(){ return $this->apellido; }
		
		public function getFechaNacimiento(){ return $this->fechaNacimiento; }
		
		public function getTelefono(){ return $this->telefono; }
		
		public function getDireccion(){ return $this->direccion; }
		
		public function setId($id){ $this->id = $id; }
		
		public function setCedula($cedula){ $this->cedula = $cedula; }
		
		public function setNombre($nombre){ $this->nombre = $nombre; }
		
		public function setApellido($apellido){ $this->apellido = $apellido; }
		
		public function setFechaNacimiento($fechaNacimiento){ $this->fechaNacimiento = $fechaNacimiento; }
		
		public function setTelefono($telefono){ $this->telefono = $telefono; }
		
		public function setDireccion($direccion){ $this->direccion = $direccion; }
		
	}
?>