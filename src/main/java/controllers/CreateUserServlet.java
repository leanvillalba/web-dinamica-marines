package controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import entity.Usuario;
/**
 * Servlet implementation class CrearUserServlet
 */
public class CreateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	    RequestDispatcher dispatcher = request.getRequestDispatcher("createUserForm.jsp");
	    dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    String nombre = request.getParameter("nombre");
	    String apellido1 = request.getParameter("apellido1");
	    String apellido2 = request.getParameter("apellido2");
	    String fechaDeNacimiento= request.getParameter("fechaNacimiento");
	    Integer run = Integer.parseInt(request.getParameter("run"));
	    Usuario usuario = new Usuario(nombre, apellido1, apellido2, fechaDeNacimiento, run);
		doGet(request, response);
	}

}
