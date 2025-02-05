<%@page import="com.yang.app.departments.DepartmentDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.yang.app.departments.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//스크립틀릿
	DepartmentDAO departmentDAO = new DepartmentDAO();
	List<DepartmentDTO> ar = departmentDAO.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		width: 40%;
		margin: 0px auto;
		border: 1px solid red;
		border-collapse: collapse;
	}
	table td, table th{
		border: 1px solid red;
		height: 50px;
	}
</style>
</head>
<body>
	<h1>Department List</h1>
	<table>
		<thead>
			<th>Department Id</th><th>Department Name</th>
		</thead>
		<tbody>
			<% for(int i = 0;i < ar.size();i ++) { %>
			<tr>
				<td>
					<%= ar.get(i).getDepartment_id() %>
				</td>
				<td>
					<a href="./detail.jsp?department_id=<%= ar.get(i).getDepartment_id()%>"><%= ar.get(i).getDepartment_name() %></a>
				</td>
			<tr>	
			<% } %>
		</tbody>
	</table>
	<div>
		<a href="./add.jsp">부서등록</a>
	</div>
</body>
</html>