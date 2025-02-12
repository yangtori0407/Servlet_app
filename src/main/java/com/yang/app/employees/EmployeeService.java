package com.yang.app.employees;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.yang.app.ActionForward;

public class EmployeeService {
	private EmployeeDAO employeeDAO;
	
	public EmployeeService() {
		employeeDAO = new EmployeeDAO();
	}
	
	public void add(HttpServletRequest request, ActionForward actionForward) throws Exception{
		EmployeeDTO employeeDTO = new EmployeeDTO();
		employeeDTO.setFirst_name(request.getParameter("first_name"));
		employeeDTO.setLast_name(request.getParameter("last_name"));
		employeeDTO.setEmail(request.getParameter("email"));
		employeeDTO.setPhone_number(request.getParameter("phone_number"));
		employeeDTO.setJob_id(request.getParameter("job_id"));
		employeeDTO.setSalary(Double.parseDouble(request.getParameter("salary").trim()));
		employeeDTO.setCommission_pct(Double.parseDouble(request.getParameter("commission_pct").trim()));
		employeeDTO.setManager_id(Long.parseLong(request.getParameter("manager_id").trim()));
		employeeDTO.setDepartment_id(Long.parseLong(request.getParameter("department_id").trim()));
		employeeDTO.setPassword(request.getParameter("password"));
		
		int result = employeeDAO.join(employeeDTO);
		
		///index.do
		
		actionForward.setFlag(false);
		actionForward.setPath("../index.do");
	}
	
	public void login(HttpServletRequest request, ActionForward actionForward) throws Exception{
		EmployeeDTO employeeDTO = new EmployeeDTO();
		employeeDTO.setEmployee_id(Long.parseLong(request.getParameter("employee_id")));
		employeeDTO.setPassword(request.getParameter("password"));
		
		employeeDTO = employeeDAO.login(employeeDTO);
		
		if(employeeDTO != null) {
			///index
			HttpSession session = request.getSession();
			request.getServletContext();
			session.setAttribute("user", employeeDTO);
			actionForward.setFlag(false);
			actionForward.setPath("../index.do");
		} else {
			request.setAttribute("result", "로그인 실패");
			request.setAttribute("path", "./login.do");
			actionForward.setFlag(true);
			actionForward.setPath("/WEB-INF/views/commons/result.jsp");
		}
	}
	
	public void detail(HttpServletRequest request, ActionForward actionForward) throws Exception{
		//session의 value 값은 String! 형변환이 필요하다.
		EmployeeDTO employeeDTO = (EmployeeDTO)request.getSession().getAttribute("user");
		
		EmployeeDTO result = employeeDAO.detail(employeeDTO);
		request.setAttribute("user", result);
	}
	

	
	public void update(HttpServletRequest request, ActionForward actionForward) throws Exception{
		EmployeeDTO session = (EmployeeDTO)request.getSession().getAttribute("user");
		EmployeeDTO employeeDTO = new EmployeeDTO();
		employeeDTO.setEmployee_id(session.getEmployee_id());
		employeeDTO.setFirst_name(request.getParameter("first_name"));
		employeeDTO.setLast_name(request.getParameter("last_name"));
		int result = employeeDAO.update(employeeDTO);
		
		if(result > 0) {
			//세션에서는 전의 정보를 가지고 있기 때문에 업데이트를 해줘야 한다.
			session.setFirst_name(employeeDTO.getFirst_name());
			actionForward.setFlag(true);
			actionForward.setPath("./mypage.do");
		}
	}
}
