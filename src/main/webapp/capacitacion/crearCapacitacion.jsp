<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Asesorias Marines</title>
</head>
<body>
	<header>
			<nav>
				<ul>
					<li><a href="index.jsp">Inicio</a></li>
					<li><a href="contactojsp.jsp">Contacto</a></li>
					<li><a href="./capacitacion/crearCapacitacion.jsp">Crear Capacitación</a></li>
					<li><a href="./capacitacion/listarCapacitacion.jsp">Listar Capacitación</a></li>
					<li><a href="formulario.jsp">Formulario</a></li>
				</ul>
			</nav>
		</header>
		<section>
			<form action="RegistroCliente" method="post">
			<label for="nombreEmpresa">Nombre Empresa:</label>
			<input type="text" name="nombreEmpresa"/><br>
			<label for="giroEmpresa">Giro Empresa:</label><br>
			<input type="text" name="giroEmpresa"/><br>
			<label for="rutEmpresa">Rut Empresa:</label>
			<input type="text" name="rutEmpresa"/><br>
			<label for="telefonoRepresentante">Telefono Representante:</label>
			<input type="text" name="telefonoRepresentante"/><br>
			<label for="direccionEmpresa">Direccion Empresa:</label>
			<input type="text" name="direccionEmpresa"/><br>
			<label for="comunaEmpresa">Comuna Empresa:</label>
			<input type="text" name="comunaEmpresa"/><br>
			<br><br>
			<label for="nombreCapacitcion">Nombre de Capacitacion:</label>
			<input type="text" name="comunaCapacitacion"/><br>			
			
			<input type="submit" value="enviar">
			</form>
		</section>
</body>
</html>