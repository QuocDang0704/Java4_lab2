package edu.poly;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet({"/TamGiacServlet", "/chuvi", "/dientich"})
public class TamGiacServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/TamGiac.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
//		RequestDispatcher rd = request.getRequestDispatcher("/views/TamGiac.jsp");
		
		float a = Float.parseFloat(request.getParameter("a"));
		float b = Float.parseFloat(request.getParameter("b"));
		float c = Float.parseFloat(request.getParameter("c"));
		
		if ( (a + b >c) && ( c + b > a) && ( a + c >b )) {
			if (uri.contains("chuvi")) {
				float cv = tinhChuVi(a, b, c);
				request.setAttribute("message", "Chu Vi cua tam giac la: "+ cv);
			}else {
				float dt = tinhDienTich(a, b, c);
				request.setAttribute("message", "Dien Tich của tam giac la: "+ dt);
			}
		}else {
			request.setAttribute("message", "3 canh kh phai la canh cua tam giac");
		}
//		rd.forward(request, response);
		doGet(request, response);
	}

	private float tinhDienTich(float a, float b, float c) {
		float p = (a + b + c)/2;
		float dt = (float) Math.sqrt(p * (p-a) * (p-b) * (p-c));
		return dt;
	}

	private float tinhChuVi(float a, float b, float c) {
		return a + b + c;
	}

}
