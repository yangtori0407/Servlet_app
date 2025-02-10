package com.yang.app.departments;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import com.yang.app.ActionForward;

public class DepartmentService {
	private DepartmentDAO departmentDAO;
	
	public DepartmentService() {
		departmentDAO = new DepartmentDAO();
	}
	
	public ActionForward getList(HttpServletRequest request, ActionForward actionForward) throws Exception{
		List<DepartmentDTO> ar = departmentDAO.getList();
		request.setAttribute("list", ar);
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/views/departments/list.jsp");
		
		return actionForward;
	}
	public ActionForward getDetail(HttpServletRequest request, ActionForward actionForward) throws Exception{
		String id = request.getParameter("department_id");
		DepartmentDTO departmentDTO = new DepartmentDTO();
		departmentDTO.setDepartment_id(Long.parseLong(id));
		departmentDTO = departmentDAO.getDetail(departmentDTO);
		request.setAttribute("dto", departmentDTO);
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/views/departments/detail.jsp");
		
		return actionForward;
	}
}
