<?php
	class PacientesManager extends TModule {

		public function existePaciente($cedula) {
			$sqlmap = $this->Application->Modules['sqlmap']->Client;
			return $sqlmap->queryForObject("ContarPaciente", $cedula) > 0;
		}

		// $persona es un objeto Persona
		public function crearPaciente($persona) {
			$sqlmap = $this->Application->Modules['sqlmap']->Client;
			$sqlmap->insert( "CrearPersona", $persona );
			$idPersona=$persona->id;
			$paciente=new Paciente();
			$paciente->idPersona=$idPersona;
			$sqlmap->insert( "CrearPaciente", $paciente);
		}
 
		public function obtenerPacientes() {
			$sqlmap = $this->Application->Modules['sqlmap']->Client;
			$resultado = $sqlmap->queryForList("ConsultarPacientes");
			return $resultado;
		}
	}
?>
