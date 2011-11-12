<?php
	Prado::using('System.Web.UI.ActiveControls.*');

	include_once('UsuariosPanel.php');
	include_once('PacientesPanel.php');

	class Home extends TPage {
		public function clickCambiar($sender, $param) {
			if( $this->Page->isValid ) {
				//sleep(5);
				// $sender es el componente boton
				$rate = floatval($this->cambioMoneda->Text);
				$valorACambiar = floatval($this->cantidadACambiar->Text);
				$this->total->Text = $rate * $valorACambiar;
			}
		}

		public function salir($sender, $param) {
			$auth = $this->Application->Modules['auth'];
			$auth->logout();
			$this->Response->Redirect($this->Service->ConstructUrl($auth->LoginPage));
		}

	}
?>
