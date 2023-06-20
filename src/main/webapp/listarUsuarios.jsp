<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="entity.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UFT-8">
<link rel="stylesheet" href="css/styles.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
	crossorigin="anonymous"></script>
<title>Lista de Usuarios</title>
</head>
<body>
	<!-- Header -->
	<!-- NavBar Bootstrap 5 Component -->
	<nav class="navbar navbar-expand-lg bg-body-tertiary"
		data-bs-theme="dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp">Sistema de Capacitación</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-link" aria-current="page" href="index.jsp">Inicio</a>
					<a class="nav-link" href="contacto.jsp">Contacto</a> <a
						class="nav-link" href="crearCapacitacion.jsp">Crear
						Capacitación</a> <a class="nav-link "
						href="listarCapacitacion.jsp">Listar Capacitación</a> <a
						class="nav-link active" href="listarUsuarios.jsp">Listar
						Usuarios</a> <a class="nav-link" href="login.jsp">Login</a>
				</div>
			</div>
		</div>
	</nav>
	<section id="seccion">

		<table class="table">
			<thead class="table-dark">
				<tr>
					<th>Nombre</th>
					<th>Apellido 1</th>
					<th>Apellido 2</th>
					<th>Fecha de Nacimiento</th>
					<th>RUN</th>
				</tr>
			</thead>
			<tbody>
				<%
				ArrayList<Usuario> usuarios = (ArrayList<Usuario>) request.getAttribute("usuarios");
				if (usuarios != null) {

					for (Usuario c : usuarios) {
				%>
				<tr>
					<td><%=c.getNombre()%></td>
					<td><%=c.getApellido1()%></td>
					<td><%=c.getApellido2()%></td>
					<td><%=c.getFechaDeNacimiento()%></td>
					<td><%=c.getRun()%></td>
				</tr>
				<%
				}
				} // Mover la llave-.-
				%>


			</tbody>
		</table>
	</section>
	<!-- Inicio Footer -->
	<footer id="footer">
		<div class="">
			<div class="col text-center">

				<h5>by Marines Espaciales 2023 &copy;</h5>

			</div>
		</div>
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>