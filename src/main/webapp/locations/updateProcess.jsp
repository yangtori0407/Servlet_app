<%@page import="com.yang.app.locations.LocationDAO"%>
<%@page import="com.yang.app.locations.LocationDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	LocationDTO locationDTO = new LocationDTO();
	String id = request.getParameter("location_id");
	String city = request.getParameter("city");
	String address = request.getParameter("street_address");
	String code = request.getParameter("postal_code");
	String state = request.getParameter("state_province");
	String country = request.getParameter("country_id");
	locationDTO.setLocation_id(id);
	locationDTO.setCity(city);
	locationDTO.setStreet_address(address);
	locationDTO.setPostal_code(code);
	locationDTO.setState_province(state);
	locationDTO.setCountry_id(country);
	
	LocationDAO locationDAO = new LocationDAO();
	int result = locationDAO.update(locationDTO);
	
	String s = "로케이션 수정 실패";
	if(result > 0){
		s = "로케이션 수정 성공";
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3><%= s %></h3>
	<a href="/">Home</a>
	<a href="./list.jsp">로케이션 목록</a>
</body>
</html>
