<%@page import="com.yang.app.departments.DepartmentDAO"%>
<%@page import="com.yang.app.departments.DepartmentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	DepartmentDTO departmentDTO = (DepartmentDTO)request.getAttribute("dto");
	
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3><%= %></h3>
	<a href="/">Home</a>
	<a href="./list.jsp">부서 리스트</a>
</body>
</html>