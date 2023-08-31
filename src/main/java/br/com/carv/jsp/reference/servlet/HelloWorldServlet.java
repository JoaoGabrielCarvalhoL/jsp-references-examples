package br.com.carv.jsp.reference.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HelloWorldServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public HelloWorldServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter writer = response.getWriter();
		response.setContentType("text/html");
		writer.println("<html><body>");
		writer.println("<h1>Welcome - Hello World By Servlet</h1");
		writer.println("<hr>");
		writer.println("<p>Occurence At: " + LocalDateTime.now() + "</p>");
		writer.println("<p>User Client: " + request.getHeader("User-Agent") + "</p>");
		writer.println("<p>Remote User: " + request.getRemoteUser() + "</p>");
		writer.println("<p>Internet Protocol: " + request.getRemoteAddr() + "</p>");
		writer.println("<hr>");
		writer.println("</body></html>");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
