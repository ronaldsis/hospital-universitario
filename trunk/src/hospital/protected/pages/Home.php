<?php
	Prado::using('System.Web.UI.ActiveControls.*');

	class Home extends TPage {
		public function clickCambiar($sender, $param) {
			if( $this->Page->isValid ) {
				sleep(5);
				// $sender es el componente boton
				$rate = floatval($this->cambioMoneda->Text);
				$valorACambiar = floatval($this->cantidadACambiar->Text);
				$this->total->Text = $rate * $valorACambiar;
			}
		}
	}
?>
