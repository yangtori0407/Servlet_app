<%@page import="com.yang.app.locations.LocationDTO"%>
<%@page import="com.yang.app.locations.LocationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	LocationDTO locationDTO = (LocationDTO)request.getAttribute("dto");
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
	
	<a href="./update.do?location_id=<%= locationDTO.getLocation_id()%>">location 수정</a>
	<a href="./delete.do?location_id=<%= locationDTO.getLocation_id()%>">location 삭제</a>
</body>
</html>