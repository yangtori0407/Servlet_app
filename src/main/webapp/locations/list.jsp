<%@page import="com.yang.app.locations.LocationDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.yang.app.locations.LocationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	LocationDAO locationDAO = new LocationDAO();
	List<LocationDTO> ar = locationDAO.getList();
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		width: 30%;
		margin: 0 auto;
		border: 1px solid black;
		border-collapse: collapse;
	}
	table tr, table td{
		border: 1px solid black;
		height: 30px;
		text-align: center;
	}
</style>
</head>
<body>
	<h1>Location List</h1>
	<table>
		<thead>
			<th>Location Id</th><th>City</th>
		</thead>
		<tbody>
			<% for(LocationDTO dto : ar) { %>
				<tr>
					<td><%= dto.getLocation_id() %> </td>
					<td><a href="./detail.jsp?location_id=<%= dto.getLocation_id() %>"><%= dto.getCity()%></a></td>
				</tr>
			<% } %>
		</tbody>
	</table>
	<div>
		<a href="./add.jsp">로케이션 등록</a>
	</div>
</body>
</html>