package controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AccountCheck;
import model.User;

@WebServlet("/AddNewUser")
public class AddNewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		AccountCheck check = new AccountCheck();

		HashMap<String, User> hashMap;
		if (getServletContext().getAttribute("hashMap") == null) {
			hashMap = new HashMap<String, User>();
			getServletContext().setAttribute("hashMap", hashMap);
		} else {
			hashMap = (HashMap) getServletContext().getAttribute("hashMap");
		}

		String jspForwardPage = null;
		String page = request.getParameter("page");
		if ("下一頁".equals(page)) {
			// 判斷有無空值
			if (request.getParameter("name") == "" || request.getParameter("phone") == ""
					|| request.getParameter("birthyear") == "    " || request.getParameter("birthmonth") == "    "
					|| request.getParameter("birthday") == "    ") {
				request.setAttribute("error", 1);
				jspForwardPage = "AddPage1.jsp";
			} else {
				session.setAttribute("name", request.getParameter("name"));
				session.setAttribute("phone", request.getParameter("phone"));
				session.setAttribute("birthyear", request.getParameter("birthyear"));
				session.setAttribute("birthmonth", request.getParameter("birthmonth"));
				session.setAttribute("birthday", request.getParameter("birthday"));
				jspForwardPage = "AddPage2.jsp";
			}

		} else if ("完成".equals(page)) {
			if (request.getParameter("accountName") == null || request.getParameter("password") == null) {
				request.setAttribute("error", "1");
				jspForwardPage = "AddPage2.jsp";
			} else if (check.AccountNameCheck(request.getParameter("accountName"), hashMap) == true) {
				request.setAttribute("error", "2");
				jspForwardPage = "AddPage2.jsp";
			} else {
				User userInfo = new User();
				userInfo = check.addNewUser((String) session.getAttribute("name"),
						(String) session.getAttribute("phone"), (String) session.getAttribute("birthyear"),
						(String) session.getAttribute("birthmonth"), (String) session.getAttribute("birthday"),
						request.getParameter("accountName"), request.getParameter("password"), hashMap);
				request.setAttribute("userInfo", userInfo);
				request.setAttribute("birthyear", session.getAttribute("birthyear"));
				request.setAttribute("birthmonth", session.getAttribute("birthmonth"));
				request.setAttribute("birthday", session.getAttribute("birthday"));
				jspForwardPage = "UserInfoPage.jsp";
			}

		} else {
			jspForwardPage = "AddPage1.jsp";
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
