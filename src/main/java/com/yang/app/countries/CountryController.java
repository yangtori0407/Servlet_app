package com.yang.app.countries;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yang.app.ActionForward;

/**
 * Servlet implementation class CountryController
 */
@WebServlet("/CountryController")
public class CountryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CountryService countryService;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CountryController() {
        super();
        // TODO Auto-generated constructor stub
        countryService = new CountryService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String uri = request.getMethod();
			uri = uri.substring(uri.lastIndexOf("/") + 1);
			ActionForward actionForward = new ActionForward();
			if(uri.equals("list.do")) {
				countryService.getList(request, actionForward);
			}
			
		}catch(Exception e) {
			
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
