<fieldset>
	<legend>Nuevo paciente</legend>
	<com:TLabel ForControl="nombre" Text="Nombre"/>
	<com:TTextBox ID="nombre" ValidationGroup="paciente"/>
	<br/>
	<com:TRequiredFieldValidator ControlToValidate="nombre" 
		ErrorMessage="Por favor digite el nombre" Display="Dynamic" ValidationGroup="paciente"/>
	<br/>
	<com:TLabel ForControl="apellido" Text="Apellido"/>
	<com:TTextBox ID="apellido" ValidationGroup="paciente"/>
	<br/>
	<com:TRequiredFieldValidator ControlToValidate="apellido" 
		ErrorMessage="Por favor digite el apellido" Display="Dynamic" ValidationGroup="paciente"/>
	<br/>
	<com:TLabel ForControl="cedula" Text="Cédula"/>
	<com:TTextBox ID="cedula" ValidationGroup="paciente"/>
	<br/>
	<com:TRequiredFieldValidator ControlToValidate="cedula" 
		ErrorMessage="Por favor digite la cédula" Display="Dynamic" ValidationGroup="paciente"/>
	<br/>
	<com:TLabel ForControl="fechaNacimiento" Text="Fecha de nacimiento"/>
	<com:TDatePicker DateFormat="MMMM/dd/yyyy" InputMode="DropDownList" ID="fechaNacimiento" ValidationGroup="paciente"/>
	<br/>
	<com:TRequiredFieldValidator ControlToValidate="fechaNacimiento" 
		ErrorMessage="Por favor digite la fecha de nacimiento" Display="Dynamic" ValidationGroup="paciente"/>
	<br/>
	<com:TLabel ForControl="telefono" Text="Teléfono"/>
	<com:TTextBox ID="telefono" ValidationGroup="paciente"/>
	<br/>
	<br/>
	<com:TLabel ForControl="direccion" Text="Dirección"/>
	<com:TTextBox ID="direccion" ValidationGroup="paciente"/>
	<br/>
	<br/>
	<com:TButton Text="Crear paciente" OnClick="crearPaciente" ValidationGroup="paciente"/>
</fieldset>
<fieldset>
	<legend>Pacientes del sistema</legend>
	<com:TDataGrid ID="listaPacientes" 
		EnableViewState="false"
		CellPadding="2"
		HeaderStyle.BackColor="black"
		HeaderStyle.ForeColor="white"
		ItemStyle.BackColor="#BFCFFF"
		ItemStyle.Font.Italic="false"
		AlternatingItemStyle.BackColor="#E6ECFF"
	/>
</fieldset>
<!-- <fieldset>
	<legend>Nuevo usuario</legend>
	<com:TLabel ForControl="loginNuevoUsuario" Text="Nombre de usuario"/>
	<com:TTextBox ID="loginNuevoUsuario" ValidationGroup="paciente"/>
	<br/>
	<com:TRequiredFieldValidator ControlToValidate="loginNuevoUsuario" ErrorMessage="Por favor digite el nombre de usuario" Display="Dynamic" ValidationGroup="paciente"/>
	<com:TCustomValidator ControlToValidate="loginNuevoUsuario" Display="Dynamic" OnServerValidate="chequearLogin" ErrorMessage="El usuario ya existe." ValidationGroup="paciente"/>
	<br/>
	<com:TLabel ForControl="claveNuevoUsuario" Text="Contraseña"/>
	<com:TTextBox ID="claveNuevoUsuario" TextMode="Password" ValidationGroup="paciente"/>
	<br/>
	<com:TRequiredFieldValidator ControlToValidate="claveNuevoUsuario" ErrorMessage="Por favor digite la contraseña para el nuevo usuario" Display="Dynamic" ValidationGroup="paciente"/>
	<br/>
	<com:TButton Text="Crear usuario" OnClick="crearUsuario" ValidationGroup="paciente"/>
</fieldset>
<fieldset>
	<legend>Usuarios del sistema</legend>
	<com:TDataGrid ID="listaUsuarios" 
		EnableViewState="false"
		CellPadding="2"
		HeaderStyle.BackColor="black"
		HeaderStyle.ForeColor="white"
		ItemStyle.BackColor="#BFCFFF"
		ItemStyle.Font.Italic="false"
		AlternatingItemStyle.BackColor="#E6ECFF"
	/>
</fieldset>
-->
