<fieldset>
	<legend>Nuevo usuario</legend>
	<com:TLabel ForControl="loginNuevoUsuario" Text="Nombre de usuario"/>
	<com:TTextBox ID="loginNuevoUsuario" ValidationGroup="usuario"/>
	<br/>
	<com:TRequiredFieldValidator ControlToValidate="loginNuevoUsuario" ErrorMessage="Por favor digite el nombre de usuario" Display="Dynamic" ValidationGroup="usuario"/>
	<com:TCustomValidator ControlToValidate="loginNuevoUsuario" Display="Dynamic" OnServerValidate="chequearLogin" ErrorMessage="El usuario ya existe." ValidationGroup="usuario"/>
	<br/>
	<com:TLabel ForControl="claveNuevoUsuario" Text="Contraseña"/>
	<com:TTextBox ID="claveNuevoUsuario" TextMode="Password" ValidationGroup="usuario"/>
	<br/>
	<com:TRequiredFieldValidator ControlToValidate="claveNuevoUsuario" ErrorMessage="Por favor digite la contraseña para el nuevo usuario" Display="Dynamic" ValidationGroup="usuario"/>
	<br/>
	<com:TButton Text="Crear usuario" OnClick="crearUsuario" ValidationGroup="usuario"/>
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