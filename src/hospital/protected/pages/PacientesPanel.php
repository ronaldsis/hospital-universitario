<?php
class PacientesPanel extends TTemplateControl {
	public function getLoginNuevoUsuario() {
		$this->ensureChildControls();
		return $this->getRegisteredObject('loginNuevoUsuario');
	}
	
	public function getClaveNuevoUsuario() {
		$this->ensureChildControls();
		return $this->getRegisteredObject('claveNuevoUsuario');
	}
	
	public function getListaUsuarios(){
		$this->ensureChildControls();
		return $this->getRegisteredObject('listaUsuarios');
	}
	
	
	public function crearUsuario($sender, $param) {
		if( $this->Page->isValid ) {
			$users = $this->Application->Modules['users'];
			$usuario = new Usuario();
			$usuario->login = $this->getLoginNuevoUsuario()->Text;
			$usuario->clave = $this->getClaveNuevoUsuario()->Text;
			try {
				$users->crearUsuario($usuario);
			}
			catch( TDbException $e ) {
				// TODO: notificar al usuario en la página.
				error_log("Se detectó un problema de concurrencia en la inserción de usuarios.");
			}
		}
		$this->cargarListaUsuarios();
	}


	public function onLoad($param) {
		parent::onLoad($param);
		$this->cargarListaUsuarios();
	}

	private function cargarListaUsuarios() {
		$users = $this->Application->Modules['users'];
		$this->getListaUsuarios()->DataSource = $users->obtenerUsuarios();
		$this->getListaUsuarios()->dataBind();
	}

	public function chequearLogin($sender, $param) {
		$users = $this->Application->Modules['users'];
		if( $users->existeUsuario($this->getLoginNuevoUsuario()->Text) ) {
			$param->IsValid = false;
		}
	}
	
}
?>