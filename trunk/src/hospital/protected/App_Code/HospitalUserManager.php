<?php
	class HospitalUserManager extends TModule implements IUserManager {
		public function getGuestName() {
			return 'Guest';
		}

		// requerida por IUserManager
		public function getUser($username=null) {
			$user = new TUser($this);
			$user->setIsGuest(true);
			if( $username !== null && $this->existeUsuario($username) ) {
				$user->setIsGuest( false );
				$user->setName( $username );
				$user->setRoles( array('normal') );
			}
			return $user;
		}

		// requerida por IUserManager
		public function validateUser( $username, $password ) {
			$parametros = array('login' => $username, 'password' => $password );
			$sqlmap = $this->Application->Modules['sqlmap']->Client;
			$cuenta = $sqlmap->queryForObject('Autenticacion',$parametros);
			return $cuenta > 0;
		}

		// requerida por IUserManager
		public function getUserFromCookie( $cookie ) {
			// TODO: nada por ahora
			return null;
		}

		// requerida por IUserManager
		public function saveUserToCookie( $cookie ) {
			// TODO: por ahora no se guarda nada
		}

		public function existeUsuario($username) {
			$sqlmap = $this->Application->Modules['sqlmap']->Client;
			return $sqlmap->queryForObject("ContarUsuario", $username) > 0;
		}

		// $usuario es un objeto Usuario
		public function crearUsuario($usuario) {
			$sqlmap = $this->Application->Modules['sqlmap']->Client;
			$sqlmap->insert( "CrearUsuario", $usuario );
		}
 
		public function obtenerUsuarios() {
			$sqlmap = $this->Application->Modules['sqlmap']->Client;
			$resultado = $sqlmap->queryForList("ConsultarUsuarios");
			return $resultado;
		}
	}
?>
