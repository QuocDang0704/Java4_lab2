package edu.poly;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HitCounterServlet")
public class HitCounterServlet extends HttpServlet {
	private int count;
	private Path path = Paths.get("E:/ProjectPoly/ky5/java4/WorksFace/lab2/count.txt");
	
	protected void service(HttpServletRequest request, HttpServletResponse response) {
		count++;
		request.setAttribute("count", count);
	}

	@Override
	public void destroy() {
		try {
			Files.write(path, String.valueOf(count).getBytes(), 
					StandardOpenOption.WRITE);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void init() throws ServletException {
		try {
			count = Integer.parseInt(Files.readAllLines(path).get(0));
			System.out.println(count);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
