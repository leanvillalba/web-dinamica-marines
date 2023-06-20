<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="entity.*"%>
<%@page import="java.util.ArrayList" %>
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
<title>Insert title here</title>
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
						Capacitación</a> <a class="nav-link active" href="listarCapacitacion.jsp">Listar
						Capacitación</a> <a class="nav-link" href="login.jsp">Login</a>
				</div>
			</div>
		</div>
	</nav>
	<section id="seccion">

		<table class="table">
			<thead class="table-dark">
				<tr>
					<th>ID Capacitación</th>
					<th>RUT Empresa</th>
					<th>Dia</th>
					<th>Hora</th>
					<th>Lugar</th>
					<th>Duración</th>
					<th>Cantidad de Asistentes</th>
				</tr>
			</thead>
			<tbody>
			<%
			
			ArrayList<Capacitacion> capacitaciones = (ArrayList<Capacitacion>)request.getAttribute("capacitaciones");
			if(capacitaciones != null) {
				
			for(Capacitacion c : capacitaciones){
			%>
				<tr>
					<td><%=c.getIdCapacitacion() %></td>
					<td><%=c.getRutCliente() %></td>
					<td><%=c.getDia() %></td>
					<td><%=c.getHora() %></td>
					<td><%=c.getLugar()%></td>
					<td><%=c.getDuracion()%></td>
					<td><%=c.getCantidadDeAsistentes()%></td>
					
				</tr>
				<%
			}
			}  // Mover la llave-.-
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