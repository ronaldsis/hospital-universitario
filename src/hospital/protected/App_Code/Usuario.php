<?php
	class Usuario{
		private $id;
		private $login;
		private $clave;

		public getId(){
			return $this->id;
		}
		
		public getLogin(){
			return $this->login;
		}

		public getClave(){
			return $this->clave;
		}
		
		public setId($id){
			$this->id = $id;
		}

		public setLogin($login){
			$this->login = $login;
		}
        
		public setClave($clave){
			$this->clave = $clave;
		}
	}
?>