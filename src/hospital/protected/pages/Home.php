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

		public function salir($sender, $param) {
			$auth = $this->Application->Modules['auth'];
			$auth->logout();
			$this->Response->Redirect($this->Service->ConstructUrl($auth->LoginPage));
		}

		public function crearUsuario($sender, $param) {
			$users = $this->Application->Modules['users'];
			$usuario = new Usuario();
			$usuario->login = $this->loginNuevoUsuario->Text;
			$usuario->clave = $this->claveNuevoUsuario->Text;
			$users->crearUsuario($usuario);
			$this->cargarListaUsuarios();
		}

		public function onLoad($param) {
			parent::onLoad($param);
			error_log("antes del if");
			if( !$this->IsPostBack ) {
				$this->cargarListaUsuarios();
			}
		}

		private function cargarListaUsuarios() {
			$users = $this->Application->Modules['users'];
			$this->listaUsuarios->DataSource = $users->obtenerUsuarios();
			$this->listaUsuarios->dataBind();
		}
	}
?>
