package controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AccountCheck;
import model.TicketCheck;
import model.TicketRecord;
import model.User;

@WebServlet("/BuyTicket")
public class BuyTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		TicketCheck check = new TicketCheck();
		TicketRecord record = new TicketRecord();
		AccountCheck accountCheck = new AccountCheck();
		
		HashMap<String, User> hashMap;
		if (getServletContext().getAttribute("hashMap") == null) {
			hashMap = new HashMap<String, User>();
			getServletContext().setAttribute("hashMap", hashMap);
		} else {
			hashMap = (HashMap) getServletContext().getAttribute("hashMap");
		}
		
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				String accountName = cookie.getValue();
				//利用AccountCheck去清除亂碼值
				if(accountCheck.AccountNameCheck(accountName, hashMap) == false) {
					accountName = null;
					continue;
				}

				HashMap<String, TicketRecord> map;
				if (getServletContext().getAttribute("map") == null) {
					map = new HashMap<String, TicketRecord>();
					getServletContext().setAttribute("map", map);
				} else {
					map = (HashMap) getServletContext().getAttribute("map");
				}

				String jspForwardPage = null;
				String page = request.getParameter("page");

				if ("提交".equals(page)) {
					if (request.getParameter("drama") == null) {
						request.setAttribute("error", "1");
						jspForwardPage = "BuyTicketPage.jsp";
					} else {
						// drama:表劇集&場次
						session.setAttribute("drama", request.getParameter("drama"));
						request.setAttribute("drama", session.getAttribute("drama"));
						jspForwardPage = "BuyTicketPage2.jsp";
					}

				} else if ("完成".equals(page)) {
					if (check.AmountCheck(Integer.parseInt(request.getParameter("adultAmount")),
							Integer.parseInt(request.getParameter("studentAmount")),
							Integer.parseInt(request.getParameter("elderAmount"))) == false) {
						request.setAttribute("drama", session.getAttribute("drama"));
						request.setAttribute("error", "1");
						jspForwardPage = "BuyTicketPage2.jsp";
					} 
					else if (request.getParameter("payment")==null) {
						request.setAttribute("error", "2");
						jspForwardPage = "BuyTicketPage2.jsp";
					}
					
					else {
						int sum = check.SumCount(Integer.parseInt(request.getParameter("adultAmount")),
								Integer.parseInt(request.getParameter("studentAmount")),
								Integer.parseInt(request.getParameter("elderAmount")));
						record = check.AddNewRecord(accountName, (String) session.getAttribute("drama"),
								request.getParameter("adultAmount"),
								request.getParameter("studentAmount"),
								request.getParameter("elderAmount"), sum, request.getParameter("payment"), map);
						request.setAttribute("record", record);
						jspForwardPage = "TicketInfoPage.jsp";
					}
					
				} 
				else if("1".equals(page)) {
					System.out.println("account=="+accountName+"\n");
					request.setAttribute("TicketInfo", map.get(accountName));
					jspForwardPage = "TicketInfoSearch.jsp";
				}
				else {
					jspForwardPage = "BuyTicketPage.jsp";
				}
				request.getRequestDispatcher(jspForwardPage).forward(request, response);

			}
		}
		
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
