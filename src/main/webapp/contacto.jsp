<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contacto</title>
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
</head>
<body>
		<header>
			<!-- NavBar Bootstrap 5 Component -->
			<nav class="navbar navbar-expand-lg bg-body-tertiary"
				data-bs-theme="dark">
				<div class="container-fluid">
					<a class="navbar-brand" href="#">Sistema de Capacitación</a>
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
								Capacitación</a> <a class="nav-link" href="listarCapacitacion.jsp"">Listar
								Capacitación</a> <a class="nav-link" href="formulario.jsp"">Formulario</a>
							<a class="nav-link" href="login.jsp"">Login</a>
						</div>
					</div>
				</div>
			</nav>
		</header>
	  <h1>Formulario de contacto</h1>

  <form action="procesar_formulario.php" method="POST">
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre" required><br>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required><br>

    <label for="mensaje">Mensaje:</label><br>
    <textarea id="mensaje" name="mensaje" rows="5" required></textarea><br>

    <input type="submit" value="Enviar">
  </form>
  
</body>
</html>