<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/styles.css" />
<title>Contacto</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
	crossorigin="anonymous"></script>
</head>
<body>
	<!-- Header -->
	<header>
		<!-- NavBar Bootstrap 5 Component -->
		<nav class="navbar navbar-expand-lg bg-body-tertiary"
			data-bs-theme="dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="index.jsp">Sistema de Capacitaci�n</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
					aria-controls="navbarNavAltMarkup" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
					<div class="navbar-nav">
						<a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a>
						<a class="nav-link" href="contacto.jsp">Contacto</a> <a
							class="nav-link" href="crearCapacitacion.jsp">Crear
							Capacitaci�n</a> <a class="nav-link" href="listarCapacitacion.jsp">Listar
							Capacitaci�n</a> <a class="nav-link" href="login.jsp">Login</a>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<div class="container">
		<section id="seccion">
			<h1>Formulario de contacto</h1>

			<div class="contact_div">
				<form class="contact_form border" action="" method="POST">
					<label for="nombre">Nombre:</label><br> <input type="text"
						id="nombre" name="nombre" required><br> <label
						for="email">Email:</label><br> <input type="email" id="email"
						name="email" required><br> <label for="mensaje">Mensaje:</label><br>
					<textarea id="mensaje" name="mensaje" rows="5" required></textarea>
					<br> <input type="submit" value="Enviar">
				</form>
			</div>
	</div>
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