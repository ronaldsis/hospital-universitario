<?php
	class HospitalUserManager extends TModule implements IUserManager {
		public function getGuestName() {
			return 'Guest';
		}

		public function getUser($username=null) {
			$user = new TUser($this);
			$user->setIsGuest(true);
			if( $username !== null && $this->usernameExists($username) ) {
				$user->setIsGuest( false );
				$user->setName( $username );
				$user->setRoles( array('normal') );
			}
			return $user;
		}

		public function validateUser( $username, $password ) {
			// FIXME
			return $this->usernameExists($username);
		}

		public function getUserFromCookie( $cookie ) {
			// TODO: nada por ahora
			return null;
		}

		public function saveUserToCookie( $cookie ) {
			// TODO: por ahora no se guarda nada
		}

		public function usernameExists($username) {
			// FIXME
			return true;
		}
	}
?>
