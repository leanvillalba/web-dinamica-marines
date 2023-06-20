package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class ContactoServlet
 */
@WebServlet("/ContactoServlet")
public class ContactoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactoServlet() {
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
		// TODO Auto-generated method stub
		
		//doGet(request, response);
		String nombre = request.getParameter("nombreContacto");
		String empresa = request.getParameter("nombreEmpresa");
		String mail = request.getParameter("mail");
		String mensaje = request.getParameter("mensaje");
		
		PrintWriter salida;

		String title = "Mensaje de contacto";

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
							salida.println("<section>");
							salida.println("<h3>"+nombre+"</h3>");
							salida.println("<p>"+empresa+"</p>");
							salida.println("<p>"+mail+"</p>");
							salida.println("<p>"+mensaje+"</p>");
							salida.println("</section>");
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
