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



/**
 * Servlet implementation class LoginServlet
 */

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String USUARIO = "usuario";
	private final String PASSWORD = "pass";
	
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String requestUsuario = "";
		String requestPassword = "";
		
		PrintWriter out = response.getWriter();
		
		requestUsuario = request.getParameter("usuario");
		requestPassword = request.getParameter("pass");
		
		if (!USUARIO.contentEquals(requestUsuario) || !PASSWORD.contentEquals(requestPassword)) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Usuario o Password incorrecto):");
			out.println("location=login.jsp");
			out.println("</script>");
			
		} else {
			// Creamos la sesión si el usuario existe
			HttpSession sesionUsuario = request.getSession(true);
			sesionUsuario.setAttribute("Nombre", requestUsuario);
			RequestDispatcher rd = request.getRequestDispatcher("pruebaLogin.jsp");
			rd.forward(request, response);
		}
		
		
		
		
		
	}
	
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}


}
