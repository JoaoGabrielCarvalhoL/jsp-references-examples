package br.com.carv.jsp.reference.servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;      
    
    public DataServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] names = {"João", "Gabriel", "Carvalho", "Lopes", "Cruz"};
		request.setAttribute("names", names);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
