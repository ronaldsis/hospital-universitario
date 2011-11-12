<?php
class PacientesPanel extends TTemplateControl {
	public function getNombre() {
		$this->ensureChildControls();
		return $this->getRegisteredObject('nombre');
	}
	
	public function getApellido() {
		$this->ensureChildControls();
		return $this->getRegisteredObject('apellido');
	}
	
	public function getCedula() {
		$this->ensureChildControls();
		return $this->getRegisteredObject('cedula');
	}
	
	public function getFechaNacimiento() {
		$this->ensureChildControls();
		return $this->getRegisteredObject('fechaNacimiento');
	}
	
	public function getTelefono() {
		$this->ensureChildControls();
		return $this->getRegisteredObject('telefono');
	}
	
	public function getDireccion() {
		$this->ensureChildControls();
		return $this->getRegisteredObject('direccion');
	}
	
	public function getListaPacientes(){
		$this->ensureChildControls();
		return $this->getRegisteredObject('listaPacientes');
	}
	
	
	public function crearPaciente($sender, $param) {
		if( $this->Page->isValid ) {
			$pacientes = $this->Application->Modules['pacientes'];
			
			$persona = new Persona();
			$persona->nombre = $this->getNombre()->Text;
			$persona->apellido= $this->getApellido()->Text;
			$persona->cedula= $this->getCedula()->Text;
			$persona->fechaNacimiento= $this->getFechaNacimiento()->Date;
			$persona->telefono= $this->getTelefono()->Text;
			$persona->direccion= $this->getDireccion()->Text;
			try {
				$pacientes->crearPaciente($persona);
			}
			catch( TDbException $e ) {
				// TODO: notificar al usuario en la página.
				error_log("Se detectó un problema de concurrencia en la inserción de pacientes.");
			}
		}
		$this->cargarListaPacientes();
	}


	public function onLoad($param) {
		parent::onLoad($param);
		$this->cargarListaPacientes();
	}

	private function cargarListaPacientes() {
		$pacientes = $this->Application->Modules['pacientes'];
		$this->getListaPacientes()->DataSource = $pacientes->obtenerPacientes();
		$this->getListaPacientes()->dataBind();
	}

	public function chequearCedula($sender, $param) {
		$pacientes = $this->Application->Modules['pacientes'];
		if( $pacientes->existePaciente($this->getCedula()->Text) ) {
			$param->IsValid = false;
		}
	}
	
}
?>