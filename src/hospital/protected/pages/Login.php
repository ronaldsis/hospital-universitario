<?php
	class Login extends TPage {
		public function entrar($sender, $param) {
			if( $this->Page->IsValid ) {
				$manager = $this->Application->Modules['users'];
				$user = $manager->getUser( $this->username->Text );
				$auth = $this->Application->Modules['auth'];
				$auth->updateSessionUser($user);
				$this->Application->User = $user;

				$url = $this->Service->constructUrl( $this->Service->DefaultPage );
				$this->Response->redirect( $url );
			}
		}

	}
?>
