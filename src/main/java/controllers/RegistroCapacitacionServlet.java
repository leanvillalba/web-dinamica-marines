package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.io.PrintWriter;
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
		int cantidadAsistentes = Integer.parseInt(request.getParameter("cantidadAsistentes"));

		Capacitacion capacitacion = new Capacitacion();
		capacitacion.setIdCapacitacion(id);
		capacitacion.setDia(dia);
		capacitacion.setHora(hora);
		capacitacion.setLugar(lugar);
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
							salida.println("<section>" + capacitacion.toString()+ "  </section>");
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
	}

}
