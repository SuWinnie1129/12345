package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Trailer")
public class Trailer extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String jspForwardPage = null;
		String page = request.getParameter("page");
		if("1".equals(page)) {
			System.out.println("hi");
			jspForwardPage = "TrailerPage1.jsp";
		}
		else if("2".equals(page)) {
			jspForwardPage = "TrailerPage2.jsp";
		}
		else if("3".equals(page)) {
			jspForwardPage = "TrailerPage3.jsp";
		}
		else if("4".equals(page)) {
			jspForwardPage = "TrailerPage4.jsp";
		}
		else if("5".equals(page)) {
			jspForwardPage = "TrailerPage5.jsp";
		}
		request.getRequestDispatcher(jspForwardPage).forward(request, response);
	}
  

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
