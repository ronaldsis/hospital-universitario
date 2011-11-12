<?php
	class Login extends TPage {
		public function entrar($sender, $param) {
			if( $this->Page->IsValid ) {
				$manager = $this->Application->Modules['users'];
				try{
					if( $manager->validateUser( $this->username->Text, $this->password->Text ) ) {
						$user = $manager->getUser( $this->username->Text );

						$auth = $this->Application->Modules['auth'];
						$auth->updateSessionUser($user);
						$this->Application->User = $user;

						$url = $this->Service->constructUrl( $this->Service->DefaultPage );
						$this->Response->redirect( $url );
					} else {
						$this->mensaje->Text = "Nombre de usuario o clave incorrectas";
					}					
				} catch(TDbException $e) {
					$this->mensaje->Text = "Hubo un error durante la autenticación, contacte al administrador";
				}
			}
		}

	}
?>
