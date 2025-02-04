package com.yang.app.tests.departments;

import java.util.List;

import com.yang.app.departments.DepartmentDAO;
import com.yang.app.departments.DepartmentDTO;

public class DepartmentDAOTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DepartmentDAO dao = new DepartmentDAO();
		try {
			List<DepartmentDTO> dtos = dao.getList();
			System.out.println(dtos.size());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
