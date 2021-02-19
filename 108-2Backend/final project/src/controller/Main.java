package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String jspForwardPage = null;
		String page = request.getParameter("page");
		if ("0".equals(page) || page == null) {
			jspForwardPage = "MainPage.jsp";
			
		} 
		else if ("1".equals(page)) {
			jspForwardPage = "PlayListPage.jsp";
			
		} 
		else if ("2".equals(page)) {

			jspForwardPage = "TimeInfoPage.jsp";
		} 
		
		request.getRequestDispatcher(jspForwardPage).forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

}
