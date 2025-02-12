package com.yang.app.employees;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yang.app.ActionForward;

/**
 * Servlet implementation class EmployeeController
 */
@WebServlet("/EmployeeController")
public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private EmployeeService employeeService;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeController() {
        super();
        // TODO Auto-generated constructor stub
        employeeService = new EmployeeService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		uri = uri.substring(uri.lastIndexOf("/") + 1);
		ActionForward actionForward = new ActionForward();
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/views/errors/notFound.jsp");
		System.out.println(uri);
		
		try {
			if(uri.equals("join.do")) {
				String method = request.getMethod();
				if(method.toUpperCase().equals("POST")) {
					employeeService.add(request, actionForward);
					
				} else {
					actionForward.setFlag(true);
					actionForward.setPath("/WEB-INF/views/employees/join.jsp");
					System.out.println("join-do try-catch");
				}
			} else if(uri.equals("login.do")){
				String method = request.getMethod();
				
				//쿠기 꺼내기
				Cookie[] cookies = request.getCookies();
				for(Cookie cookie : cookies) {
					System.out.println(cookie.getName());
					System.out.println(cookie.getValue());
				}
				
				if(method.toUpperCase().equals("POST")) {
					employeeService.login(request, actionForward);
				} else {
					actionForward.setFlag(true);
					actionForward.setPath("/WEB-INF/views/employees/login.jsp");
				}
			} else if(uri.equals("logout.do")) {
				HttpSession session = request.getSession();
//				//1)
//				session.setAttribute("user", null);
//				//2) 속성값 자체를 없애버림
//				session.removeAttribute("user");
				session.invalidate(); //즉시 세션의 만료 시간을 없애버림
				actionForward.setFlag(false);
				actionForward.setPath("../index.do");
			} else if(uri.equals("mypage.do")) {
				employeeService.detail(request, actionForward);
				
				actionForward.setFlag(true);
				actionForward.setPath("/WEB-INF/views/employees/mypage.jsp");
			} else if(uri.equals("update.do")) {
				String method = request.getMethod();
				if(method.toUpperCase().equals("POST")) {
					employeeService.update(request, actionForward);
				} else {
					employeeService.detail(request, actionForward);
					actionForward.setFlag(true);
					actionForward.setPath("/WEB-INF/views/employees/update.jsp");
				}
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		if(actionForward.isFlag()) {
			RequestDispatcher view = request.getRequestDispatcher(actionForward.getPath());
			view.forward(request, response);
		} else {
			//redirect
			response.sendRedirect(actionForward.getPath());
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
