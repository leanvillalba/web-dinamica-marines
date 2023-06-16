<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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

<title>Asesorias Marines</title>
</head>
<body>
	<!-- Header -->
	<header>
		<!-- NavBar Bootstrap 5 Component -->
		<nav class="navbar navbar-expand-lg bg-body-tertiary"
			data-bs-theme="dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Sistema de Capacitaci�n</a>
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
							class="nav-link" href="capacitacion/crearCapacitacion.jsp">Crear
							Capacitaci�n</a> <a class="nav-link" href="capacitacion/listarCapacitacion.jsp"">Listar
							Capacitaci�n</a> <a class="nav-link" href="formulario.jsp"">Formulario</a>
						<a class="nav-link" href="login.jsp"">Login</a>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<!-- Fin Header -->
	<!-- Container principal -->
	<div class="container">

		<!-- Seccion Principal -->
		<section id="seccion">
			<div class="row">
				<div class="col">
					<div class="login neon">
						<h2>LogIn Usuario</h2>
						<form action="" method="">
							<label for="nombre">Nombre:</label> <br> <input type="text"
								name="nombre"> <br> <label for="password">Contrase�a:</label>
							<br> <input type="text" name="password"> <br> <button type="button" class="btn btn-primary mt-1">Entrar!</button>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- Inicio Footer -->
	<footer id="footer">
		<div class="row">
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