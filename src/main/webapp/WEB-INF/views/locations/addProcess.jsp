<%@page import="com.yang.app.locations.LocationDTO"%>
<%@page import="com.yang.app.locations.LocationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	LocationDAO locationDAO = new LocationDAO();
	LocationDTO locationDTO = new LocationDTO();
	locationDTO.setCity(request.getParameter("city"));
	locationDTO.setCountry_id(request.getParameter("country_id"));
	locationDTO.setPostal_code(request.getParameter("postal_code"));
	locationDTO.setState_province(request.getParameter("state_province"));
	locationDTO.setStreet_address(request.getParameter("street_address"));
	
	int result = locationDAO.add(locationDTO);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>location 등록 진행 페이지</h1>
	<% if(result > 0) { %>
		<h3>등록 성공!</h3>
	<% } else { %>
		<h3>등록 실패!</h3>
	<% } %>
	<a href="/">Home</a>
	<a href="./list.jsp">Location list</a>
</body>
</html>