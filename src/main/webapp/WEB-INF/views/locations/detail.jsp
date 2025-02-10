<%@page import="com.yang.app.locations.LocationDTO"%>
<%@page import="com.yang.app.locations.LocationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	LocationDTO locationDTO = new LocationDTO();
	String location_id = request.getParameter("location_id");
	locationDTO.setLocation_id(Long.parseLong(location_id));
	LocationDAO locationDAO = new LocationDAO();
	locationDTO = locationDAO.getDetail(locationDTO);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Location Detail Page</h3>
	<h3><%= locationDTO.getLocation_id() %></h3>
	<h3><%= locationDTO.getCountry_id()%></h3>
	<h3><%= locationDTO.getPostal_code()%></h3>
	<h3><%= locationDTO.getState_province()%></h3>
	<h3><%= locationDTO.getStreet_address()%></h3>
	
	<a href="./update.jsp?location_id=<%= locationDTO.getLocation_id()%>">location 수정</a>
	<a href="./deleteProcess.jsp?location_id=<%= locationDTO.getLocation_id()%>">location 삭제</a>
</body>
</html>