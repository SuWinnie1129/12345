package controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import model.AccountCheck;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		AccountCheck check = new AccountCheck();

		HashMap<String, User> hashMap;
		if (getServletContext().getAttribute("hashMap") == null) {
			hashMap = new HashMap<String, User>();
			getServletContext().setAttribute("hashMap", hashMap);
		} else {
			hashMap = (HashMap) getServletContext().getAttribute("hashMap");
		}

		String jspForwardPage = null;
		String page = request.getParameter("submit");

		if ("登入".equals(page)) {
			String accountName = request.getParameter("accountName");
			String password = request.getParameter("password");
			System.out.println("accountName Login=" + accountName + "\n");
			if (accountName == "" || password == "") {
				request.setAttribute("error", "1");
				jspForwardPage = "LoginPage.jsp";
			} else if (check.AccountNameCheck(accountName, hashMap) == false) {
				request.setAttribute("error", "2");
				jspForwardPage = "LoginPage.jsp";
			} else if (check.PasswdCheck(accountName, password, hashMap) == false) {
				request.setAttribute("error", "3");
				jspForwardPage = "LoginPage.jsp";
			} else {
				Cookie cookie = new Cookie("accountName", accountName);
				response.addCookie(cookie);
				request.setAttribute("userInfo", hashMap.get(accountName));
				jspForwardPage = "LoginPage2.jsp";
			}
		} else {
			jspForwardPage = "LoginPage.jsp";
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
