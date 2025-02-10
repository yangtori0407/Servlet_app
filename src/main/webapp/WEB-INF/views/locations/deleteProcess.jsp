<%@page import="com.yang.app.locations.LocationDAO"%>
<%@page import="com.yang.app.locations.LocationDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	LocationDTO locationDTO = new LocationDTO();
	String id = request.getParameter("location_id");
	locationDTO.setLocation_id(Long.parseLong(id));
	LocationDAO locationDAO = new LocationDAO();
	int result = locationDAO.delete(locationDTO);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(result > 0) {%>
		<h3>로케이션 삭제 성공</h3>
	<% } else { %>
		<h3>로케이션 삭제 실패</h3>
	<% } %>
	<a href="/">Home</a>
	<a href="./list.jsp">로케이션 목록</a>
</body>
</html>