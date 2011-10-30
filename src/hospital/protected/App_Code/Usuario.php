<?php
	class Usuario{
		private $id;
		private $login;
		private $clave;

		public function getId(){
			return $this->id;
		}
		
		public function getLogin(){
			return $this->login;
		}

		public function getClave(){
			return $this->clave;
		}
		
		public function setId($id){
			$this->id = $id;
		}

		public function setLogin($login){
			$this->login = $login;
		}
        
		public function setClave($clave){
			$this->clave = $clave;
		}
	}
?>