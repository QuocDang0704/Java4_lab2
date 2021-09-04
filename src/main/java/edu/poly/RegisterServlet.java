package edu.poly;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String married = request.getParameter("married");
		String nationality = request.getParameter("nationality");
		String[] favorites = request.getParameterValues("favorites");
		String note = request.getParameter("note");
		
		request.setAttribute("username", username);
		request.setAttribute("password", password);
		request.setAttribute("gender", gender);
		request.setAttribute("married", married);
		request.setAttribute("nationality", nationality);
		StringBuilder sb = new StringBuilder();
		for (String x : favorites) {
			sb.append(x).append(", ");
		}
		request.setAttribute("favorites", sb.toString());
		request.setAttribute("note", note);
		doGet(request, response);
		
		System.out.println("username"+ username);
		System.out.println("password"+ password);
		System.out.println("gender"+ gender);
		System.out.println("married"+ married);
		System.out.println("nationality"+ nationality);
		System.out.println("favorites"+ sb.toString());
		System.out.println("note"+ note);
	}

}
