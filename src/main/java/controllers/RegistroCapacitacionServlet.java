package controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;

import entity.Capacitacion;

/**
 * Servlet implementation class RegistroCapacitacionServlet
 */
@WebServlet("/RegistroCapacitacionServlet")
public class RegistroCapacitacionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistroCapacitacionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("idCapacitacion"));
		String rut = request.getParameter("rutEmpresa");
		String dia = request.getParameter("diaCapacitacion");
		String hora = request.getParameter("horaCapacitacion");
		String lugar = request.getParameter("lugarCapacitacion");
		int duracion = Integer.parseInt(request.getParameter("duracion"));
		int cantidadAsistentes = Integer.parseInt(request.getParameter("cantidadAsistentes"));

		
		// ********************** Probando Listar Capacitación ***************************
		// Redirige a la página. Falta editar listarCapacitaciones.jsp para mostrar la lista
		
		Capacitacion capacitacion2 = new Capacitacion(id, rut, dia, hora, lugar, duracion, cantidadAsistentes);
		
		// Creamos ArrayList para Mostrar Lista de Capacitaciones
		ArrayList<Capacitacion> listaCapacitacion = new ArrayList<Capacitacion>();
		listaCapacitacion.add(capacitacion2);
		
		// Se lo pasamos como atributo
		request.setAttribute("capacitaciones", listaCapacitacion);
		
		// Envío de la lista -- NO funciona -.-----
		getServletContext().getRequestDispatcher("/listarCapacitacion.jsp").forward(request,response);
		
		//Probando con sesiones
		/*
		HttpSession sesionUsuarioCliente = request.getSession(true);
		sesionUsuarioCliente.setAttribute("capacitaciones", listaCapacitacion);
		RequestDispatcher rd = request.getRequestDispatcher("listarCapacitacion.jsp");
		rd.forward(request, response);
		*/
		// *********************************************************************************
		
		/*	
		Capacitacion capacitacion = new Capacitacion();
		capacitacion.setIdCapacitacion(id);
		capacitacion.setDia(dia);
		capacitacion.setRutCliente(rut);
		capacitacion.setHora(hora);
		capacitacion.setLugar(lugar);
		capacitacion.setDuracion(duracion);
		capacitacion.setCantidadDeAsistentes(cantidadAsistentes);
		
		PrintWriter salida;

		String title = "Capacitacion";

				try {
					response.setContentType("text/html");
					salida= response.getWriter();
					salida.println("<HTML>");
						salida.println("<HEAD>");
							salida.println("<title>"+title+"</title>");
						salida.println("</HEAD>");
						salida.println("<body>");
							salida.println("<header>");
								salida.println("<h1>"+title+"</h1>");

							salida.println("</header>");
							salida.println("<section>" + capacitacion2.toString()+ "  </section>");
							salida.println("<footer>");
							salida.println(" by Marines");
							salida.println("</footer>");
						salida.println("</body");
					salida.println("</html>");
					salida.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
				doGet(request, response);
		 */
	}

}
