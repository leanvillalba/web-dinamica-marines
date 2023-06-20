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
<title>Insert title here</title>
</head>
<body>
	<header>
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
							Capacitación</a> <a class="nav-link" href="listarCapacitacion.jsp">Listar
							Capacitación</a> <a class="nav-link"
							href="listarUsuarios.jsp">Listar Usuarios</a> <a
							class="nav-link active" href="login.jsp">Login</a>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<div class="container">
		<!-- Header -->


		<section class="" id="seccion">
			<!-- Jumbotron -->
			<div class=" container px-4 py-5 px-md-5 text-center text-lg-start"
				style="background-color: hsl(0, 0%, 96%)">

				<div class="row gx-lg-5 align-items-center">
					<div class="col-lg-6 mb-5 mb-lg-0">
						<h1 class="my-5 display-3 fw-bold ls-tight">
							Bienvenidos a <br /> <span class="text-primary">Asesorías
								Marines</span>
						</h1>
						<p style="color: hsl(217, 10%, 50.8%)">Lorem ipsum dolor sit
							amet consectetur adipisicing elit. Eveniet, itaque accusantium
							odio, soluta, corrupti aliquam quibusdam tempora at cupiditate
							quis eum maiores libero veritatis? Dicta facilis sint aliquid
							ipsum atque?</p>
					</div>

					<div class="col-lg-6 mb-5 mb-lg-0">
						<div class="card">
							<div class="card-body py-5 px-md-5">
								<form action="LoginServlet" method="post">


									<!-- Usuario input -->
									<div class="form-outline mb-4">
										<input type="text" id="form3Example3" class="form-control"
											name="usuario" required placeholder="Ingrese Usuario" />
									</div>

									<!-- Password input -->
									<div class="form-outline mb-4">
										<input type="password" id="form3Example4" class="form-control"
											name="pass" required placeholder="Ingrese Contraseña" />
									</div>

									<!-- Submit button -->
									<div>
										<button type="submit" class="btn btn-primary btn-block mb-4">
											Log In</button>
										<a href="createUserForm.jsp" class=""> o Registrarse </a>
									</div>



								</form>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- Jumbotron -->
		</section>
		<!-- Section: Fin Login -->

	</div>
	<!-- Inicio Footer -->
	<footer id="footer">
		<div class="">
			<div class="col text-center">

				<h5>by Marines Espaciales 2023 &copy;</h5>

			</div>
		</div>
	</footer>
</body>
</html>